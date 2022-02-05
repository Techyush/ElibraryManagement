<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication3.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="imgs/adminuser.png"/>
                                    </center>
                                </div>
                        </div>

                        <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
                                    </center>
                                </div>
                        </div>

                        <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                        </div>


                        <div class="row">
                                <div class="col">
                                    <label>Admin ID</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="Static" Font-Bold="true" ForeColor="Red" ValidationGroup="Admin">*</asp:RequiredFieldValidator>
                                    &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                                    </div>

                                    <label>Password</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Static" ErrorMessage="RequiredFieldValidator" Font-Bold="true" ForeColor="Red" ValidationGroup="Admin">*</asp:RequiredFieldValidator>&nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
                                    </div><br>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ValidationGroup="Admin"/>
                                    </div>

                                    

                                </div>
                        </div>


                    </div>
                </div>
                <br>
                <asp:Button ID="Button2" class="btn btn-light" runat="server" Text="Home" OnClick="Button2_Click" autopostback="false"/>
                <asp:Button ID="Button3" class="btn btn-light" runat="server" Text="Clear" OnClick="Button3_Click" autopostback="false"/>
                <br><br><br><br><br><br><br><br><br><br>
            </div>
            
        </div>
    </div>
</asp:Content>
