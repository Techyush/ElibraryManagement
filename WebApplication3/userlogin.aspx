<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication3.userlogin" %>
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
                                        <img width="150" src="imgs/Login.png"/>
                                    </center>
                                </div>
                        </div>

                        <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Member Login</h3>
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
                                    <label>Member ID</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="Static" Font-Bold="true" ForeColor="Red" ValidationGroup="User">*</asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>

                                    <label>Password</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Static" ErrorMessage="RequiredFieldValidator" Font-Bold="true" ForeColor="Red" ValidationGroup="User">*</asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="true"></asp:Label>
                                    </div><br>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ValidationGroup="User" />
                                    </div>

                                    <div class="form-group">
                                         <a href="usersignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                                    </div>
                                    <div class="row">
                                    <div class="col-md-12">

                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="btn-group btn-block">
                                                    <asp:Button ID="Button3" class="btn btn-info-blue mr-1" runat="server" Text="Home" autopostback="false" OnClick="Button3_Click"/>
                                                    <asp:Button ID="Button4" class="btn btn-info-blue" runat="server" Text="Clear" autopostback="false" OnClick="Button4_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                        </div>
                        

                    </div>
                </div>
                
            </div>
            
        </div>
    </div>


</asp:Content>
