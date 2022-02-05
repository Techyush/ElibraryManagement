using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class adminmembermanagement : System.Web.UI.Page
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
        // Go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }
        // Active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Active");
        }
        // pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
        }
        // deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Deactivated");
        }
        // delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }





        // user defined function

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox1.Text.Trim() + "';", con);
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

        void deleteMemberByID()
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

                    SqlCommand cmd = new SqlCommand("DELETE from member_master_table WHERE member_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Member Deleted Successfully!";
                    clearForm();
                    GridView1.DataBind();

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
                Label1.Text = "Invalid Member ID";
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
                SqlCommand cmd = new SqlCommand("select * from member_master_table where member_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox10.Text = dr.GetValue(5).ToString();
                        TextBox11.Text = dr.GetValue(6).ToString();
                        TextBox6.Text = dr.GetValue(7).ToString();

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
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='" + status + "' WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            clearForm();
            Label1.Visible = false;
        }
    }
}