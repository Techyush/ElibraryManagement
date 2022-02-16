<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication3.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .wavy {
            position: relative;
            -webkit-box-reflect: below -50px linear-gradient(transparent, rgba(0, 0, 0, 0.2));
        }

            .wavy span {
                position: relative;
                display: inline-block;
                color: #fff;
                font-size: 5em;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                text-transform: uppercase;
                text-shadow: 2px 2px 5px #4969e1;
            }
    </style>

    <section>

        <div class="row">
            <center>
                <div class="col-md-3">
                    <asp:Image ID="Image1" runat="server" src="imgs/books in the library.png" Width="200px" />
                </div>

                <div class="col-md-9">
                    <div class="wavy">
                        <span style="--i: 1;">E-LIBRARY MANAGEMENT</span>
                    </div>
                </div>
            </center>
        </div>
        <br>
        <br />


        <center>
            <hr style="height: 2px; width: 1000px; border-width: 1px; color: aliceblue;">
        </center>

        <%--<img src="imgs/home-bg.png" class="img-fluid" />--%>
    </section>


    <section>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h1 style="font-size: 50px; color: #FFFFFF; font-weight: bold; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">FEATURES</h1>
                        <center>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="card-deck">

                    <div class="col-md-4">

                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/books-bookshelves-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Digital Inventory</h5>
                                <p class="card-text">Check which books are available in library.</p>
                            </div>
                            <center><a href="#demo" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo" class="collapse">
                                <br>
                                We provide Digital Inventory feature.
                                    <br>
                                So that It become easy for you to see all the books available in Library.
                                    <br>
                                Using this feature, it becomes easy to choose your desired book.
                            </div>
                        </div>

                    </div>
                    <div class="col-md-4">
                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/search-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Search Books</h5>
                                <p class="card-text">Search your favorite books.</p>
                            </div>
                            <center><a href="#demo1" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo1" class="collapse">
                                <br />
                                Search Books feature provides readers to search their favourite book.
                                    <br>
                                Readers can search books by Name, Author, Publisher, Genre, Language etc.
                                    <br>
                                So, It's becomes easy for readers to find books.<br>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/warning-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Defaulter's List</h5>
                                <p class="card-text">Check who haven't returned books yet.</p>
                            </div>
                            <center><a href="#demo2" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo2" class="collapse">
                                <br>
                                Defaulters are those who haven't returned the book intime.
                                <br>
                                This management system provides this facility to check that list.
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <br>
        <br>
    </section>

    <section>
        <center>
            <hr style="height: 2px; width: 1000px; border-width: 1px; color: aliceblue;">
        </center>
    </section>
    <br>
    <section>

        <div class="container">


            <div class="row">

                <div class="col-12">
                    <center>
                        <h1 style="font-size: 50px; color: #FFFFFF; font-weight: bold; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">PROCESS</h1>
                        <center>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="card-deck">

                    <div class="col-md-4">

                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/sign-up-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Sign Up</h5>
                                <p class="card-text">Complete the sign up process.</p>
                            </div>
                            <center><a href="#demo3" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo3" class="collapse">
                                <br>
                                Readers must sign up in order to get books.
                                <br>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up Now!</asp:LinkButton>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-4">
                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/search-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Search Books</h5>
                                <p class="card-text">Search your favorite books.</p>
                            </div>
                            <center><a href="#demo4" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo4" class="collapse">
                                <br>
                                Readers can search their favorite books by Book Name, Author & Publisher etc.
                                <br>
                                <asp:LinkButton ID="LinkButton2"  runat="server" OnClick="LinkButton2_Click">Search Book</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card text-center" style="width: 25rem;">
                            <center>
                                <img class="card-img-top" src="icons/location-gr.png" alt="Card image cap"></center>
                            <center>
                                <hr style="height: 3px; width: 300px; color: midnightblue;">
                            </center>
                            <div class="card-body">
                                <h5 class="card-title">Visit Us</h5>
                                <p class="card-text">Visit us and collect your book.</p>
                            </div>
                            <center><a href="#demo5" class="btn btn-cool-blues" data-toggle="collapse" style="width: fit-content;">Know more</a></center>
                            <div id="demo5" class="collapse">
                                <br>
                                - Address -
                                <br>
                                <b>Vivekananda Book World</b>
                                <br>
                                Shri Ramkrishna Ashram, Dr. Yagnik Road,
                                <br>
                                Jagnath Plot, Rajkot - 360001
                                <br>
                                <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="https://goo.gl/maps/k4DC6t2dbTBxKWJ9A">Visit Us</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </section>
    <br>
    <br>
</asp:Content>
