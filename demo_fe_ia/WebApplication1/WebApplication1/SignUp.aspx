<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

    <%@ Register Src="~/menuLogin.ascx" TagPrefix="uc1" TagName="menuLogin" %>


        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">

        <head runat="server">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>IA - Sign Up</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
                integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />

            <link href="css/css_login.css" rel="stylesheet" />
        </head>

        <body>
            <form id="form1" runat="server">
                <div id="container"></div>
                <div class="d-flex">
                    <uc1:menuLogin runat="server" ID="menuLogin" />
                    <div class="wrapper d-flex align-items-center">
                        <!-- <img src="images/lg_IA.jpg" /> -->
                        <h1>Inspired Art</h1>
                        <h2>Sign Up</h2>



                        <!-- UserName -->
                        <div class="input-box">
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            <label>Username</label>
                            <i class="fa-solid fa-user"></i>
                        </div>

                        <!-- Password -->
                        <div class="input-box">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <label>Password</label>
                            <i class="fa-solid fa-lock"></i>
                        </div>

                        <!-- Email -->
                        <div class="input-box">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <label>Email</label>
                            <i class="fa-solid fa-envelope"></i>
                        </div>

                        <!-- label thông báo -->
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="thongBao"></asp:Label>

                        <!-- button sign up -->
                        <asp:Button ID="btnSignUp" runat="server" Text="Create an account" OnClick="btnSignUp_Click" />
                    </div>
                </div>

            </form>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>

            <script src="js/js_login.js"></script>
        </body>

        </html>