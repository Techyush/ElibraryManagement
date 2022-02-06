using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("adminlogin.aspx");
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("adminlogin.aspx");
            }
            GridView1.DataBind();
        }

        // issue book
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {

                if (checkIfIssueEntryExist())
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "This member already has this book!";
                }
                else
                {
                    issueBook();
                }

            }
            else
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Wrong Book ID or Member ID!";
            }
        }
        // return book
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {

                if (checkIfIssueEntryExist())
                {
                    returnBook();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "This entry does not exist!";
                }

            }
            else
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Wrong Book ID or Member ID!";
            }
        }

        // go button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
            getMemberByID();
        }




        // user defined function

        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from book_issue_table WHERE book_id='" + TextBox1.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {

                    cmd = new SqlCommand("update book_master_tbl set current_stock = current_stock+1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Book Returned Successfully!";
                    GridView1.DataBind();

                    con.Close();

                }
                else
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Invalid details!";
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_table(member_id,member_name,book_id,book_name,issue_date,due_date) values(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("update  book_master_tbl set current_stock = current_stock-1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Book Issued Successfully!";

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND current_stock >0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from member_master_table WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_issue_table WHERE member_id='" + TextBox2.Text.Trim() + "' AND book_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }



        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select book_name from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Wrong Book ID!";
                }

                cmd = new SqlCommand("select full_name from member_master_table WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                    TextBox7.Text = dt.Rows[10]["account_status"].ToString();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Wrong User ID!";
                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        void updateMemberStatusByID(string status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='" + status + "' WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Member Status Updated!";


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid Member ID!";
            }

        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from member_master_table where member_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr.GetValue(10).ToString();
                    }

                }
                else
                {
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Invalid Member ID!";
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Active");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Deactivated");
        }
    }
}