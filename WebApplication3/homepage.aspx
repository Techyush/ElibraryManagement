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

        .flip-card {
            background-color: transparent;
            width: 100%;
            height: 100%;
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        .flip-card-front, .flip-card-back {
            position: fixed;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
        }

        .flip-card-front {
        }

        .flip-card-back {
            transform: rotateY(180deg);
            width: 100%;
            height: 100%;
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
                        <div class="flip-card">
                            <div class="flip-card-inner">
                                <div class="flip-card-front">
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

                                    </div>
                                </div>
                                <div class="flip-card-back">
                                    <div class="card text-center" style="width: 25rem;">
                                        <center>
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <br>
                                                    <br>
                                                    Digital Inventory</h5>
                                                <center>
                                                    <hr style="height: 3px; width: 300px; color: midnightblue;">
                                                </center>
                                                <p class="card-text">
                                                    We provide Digital Inventory feature.
                                                    <br>
                                                    So that It become easy for you to see all the books available in Library.
                                                    <br>
                                                    Using this feature, it becomes easy to choose your desired book.
                                                    <br>
                                                    <br>
                                                    <br>
                                                </p>
                                            </div>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                                <div class="flip-card-front">
                                    <div class="card text-center" style="width: 25rem;">
                                        <center>
                                            <img class="card-img-top" src="icons/search-gr.png" alt="Card image cap"></center>
                                        <center>
                                            <hr style="height: 3px; width: 300px; color: midnightblue;">
                                        </center>
                                        <div class="card-body">
                                            <h5 class="card-title">Search Books</h5>
                                            <p class="card-text">Search your favourite book and check availabilty.</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="flip-card-back">
                                    <div class="card text-center" style="width: 25rem;">
                                        <center>
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <br>
                                                    <br>
                                                    Search Books</h5>
                                                <center>
                                                    <hr style="height: 3px; width: 300px; color: midnightblue;">
                                                </center>
                                                <p class="card-text">
                                                    Search Books feature provides readers to search their favourite book.
                                                    <br>
                                                    Readers can search books by Name, Author, Publisher, Genre, Language etc.
                                                    <br>
                                                    So, It's becomes easy for readers to find books.<br>
                                                    <br>
                                                    <br>
                                                </p>
                                            </div>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                                <div class="flip-card-front">
                                    <div class="card text-center" style="width: 25rem;">
                                        <center>
                                            <img class="card-img-top" src="icons/search-gr.png" alt="Card image cap"></center>
                                        <center>
                                            <hr style="height: 3px; width: 300px; color: midnightblue;">
                                        </center>
                                        <div class="card-body">
                                            <h5 class="card-title">Search Books</h5>
                                            <p class="card-text">Search your favourite book and check availabilty.</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="flip-card-back">
                                    <div class="card text-center" style="width: 25rem;">
                                        <center>
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <br>
                                                    <br>
                                                    Search Books</h5>
                                                <center>
                                                    <hr style="height: 3px; width: 300px; color: midnightblue;">
                                                </center>
                                                <p class="card-text">
                                                    Search Books feature provides readers to search their favourite book.
                                                    <br>
                                                    Readers can search books by Name, Author, Publisher, Genre, Language etc.
                                                    <br>
                                                    So, It's becomes easy for readers to find books.<br>
                                                    <br>
                                                    <br>
                                                </p>
                                            </div>
                                        </center>
                                    </div>
                                </div>
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
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </section>
    <br>
    <br>
</asp:Content>
