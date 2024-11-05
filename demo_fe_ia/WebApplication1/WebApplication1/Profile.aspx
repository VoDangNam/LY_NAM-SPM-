﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs"
    Inherits="WebApplication1.Profile" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_profile.css" rel="stylesheet" />

        <div class="container">
            <div class="ava_header row mb-5">
                <div class="col-sm-12">
                    <div class="ava card">
                        <div class="avatar d-flex flex-column">
                            <%--ảnh bìa đổ dữ liệu--%>
                                <asp:Image ID="Image2" runat="server" ImageUrl="images/img-home/1.jpg"
                                    CssClass="coverPhoto" />

                                <div class="row mb-3">
                                    <div class="col-lg-6 p-0 mt-3">
                                        <div class="user d-flex">
                                            <div class="profile-img">
                                                <%--avatar đổ dữ liệu--%>
                                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.jpg"
                                                        AlternateText="Avatar Image" />
                                            </div>
                                            <div class="profile-detail mt-3 d-flex flex-column justify-content-center">
                                                <h3 class="text-nowrap">Ly Ly</h3>
                                                <p class="mt-1">follow</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-6 p-0 mt-3 d-flex align-items-center ">
                                        <div class="upload d-flex justify-content-center text-center w-100">
                                            <%--button upload--%>
                                                <asp:Button ID="Button1" runat="server" Text="Upload"
                                                    CssClass="btn_upload" />
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="submenu row">
                <div class="col-lg-12">
                    <div class="card p-2">
                        <ul class="nav nav-pills nav-fill text-nowrap">
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content1', this)">Post</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content2', this)">Following</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content3', this)">Follower</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content4', this)">Edit Profile</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Nội dung của từng menu phụ -->
            <div id="content1" class="menu-content" style="display:block;">
                <div class="row d-flex justify-content-between">
                    <!-- introduce -->
                    <div class="intro col-lg-3">
                        <div class="card">
                            <div class="card-header d-flex justify-content-center p-3">
                                <h5 class="m-0">Introduce</h5>
                            </div>
                            <div class="card-body">
                                <!-- label giới thiệu -->
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="card-footer d-flex justify-content-center">
                                <!-- button chỉnh sửa phần giới thiệu -->
                                <asp:Button ID="Button2" runat="server" Text="Edit introduction" CssClass="btn_intro" />
                            </div>
                        </div>
                    </div>

                    <!-- post -->
                    <div class="post col-lg-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- datalist -->

                                <asp:DataList ID="DSBAIDANG" runat="server">
                                    <ItemTemplate>
                                        <!-- row tổng -->
                                        <div class="row mb-5">
                                            <div class="col-lg-12">
                                                <div class="cardTong card">
                                                    <div class="card-body">
                                                        <!-- row của card trong -->
                                                        <div class="row m-0">
                                                            <div class="col-lg-12">
                                                                <div class="subCard card">
                                                                    <!-- row của nội dung card trong -->
                                                                    <div class="row m-0">
                                                                        <div class="colImgPost col-lg-5">
                                                                            <asp:ImageButton ID="ImageButton2"
                                                                                runat="server"
                                                                                CommandArgument='<%# Eval("IDBAIDANG") %>'
                                                                                ImageUrl='<%# "images/post_image/"+Eval("ANHBAIDANG") %>'
                                                                                CssClass="anhBaiDang" />
                                                                            <!-- width="400px" Height="300px" -->
                                                                        </div>
                                                                        <div class="col-lg-7">
                                                                            <div class="contentCard card p-2">
                                                                                <div
                                                                                    class="card-header d-flex align-items-center">
                                                                                    <asp:Label ID="Label3"
                                                                                        runat="server"
                                                                                        Text='<%# Eval("TIEUDE") %>'
                                                                                        CssClass="tieuDe">
                                                                                    </asp:Label>
                                                                                </div>
                                                                                <div class="card-body">
                                                                                    <div class="row mb-3">
                                                                                        <div class="col-lg-12">
                                                                                            <asp:Label ID="Label2"
                                                                                                runat="server"
                                                                                                Text='<%# Eval("THOIGIAN") %>'>
                                                                                            </asp:Label>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12">
                                                                                            <asp:Label ID="Label4"
                                                                                                runat="server"
                                                                                                Text='<%# Eval("MOTA") %>'>
                                                                                            </asp:Label>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="row m-0">
                                                                                        <div
                                                                                            class="col-lg-12 d-flex align-items-center justify-content-between">
                                                                                            <div
                                                                                                class="d-flex align-items-center">
                                                                                                <div class="avaBorder">
                                                                                                    <asp:ImageButton
                                                                                                        ID="ImageButton1"
                                                                                                        runat="server"
                                                                                                        CommandArgument='<%# Eval("IDBAIDANG") %>'
                                                                                                        ImageUrl='<%# "images/post_image/"+Eval("AVATARTACGIA") %>'
                                                                                                        CssClass="ava" />
                                                                                                </div>
                                                                                                <div class="ps-3">
                                                                                                    <asp:Label
                                                                                                        ID="Label1"
                                                                                                        runat="server"
                                                                                                        Text='<%# Eval("TENTACGIA") %>'
                                                                                                        CssClass="tenTacGia">
                                                                                                    </asp:Label>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="">
                                                                                                <asp:Button ID="Button5"
                                                                                                    runat="server"
                                                                                                    Text="Button"
                                                                                                    CssClass="followButton" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="card-footer d-flex justify-content-between">
                                                                                    <!-- button heart -->
                                                                                    <button id="likeButton"
                                                                                        type="button"
                                                                                        onclick="toggleColor()">
                                                                                        <i
                                                                                            class="fa-solid fa-heart"></i>
                                                                                    </button>
                                                                                    <!-- button comment -->
                                                                                    <button type="button">
                                                                                        <i
                                                                                            class="fa-regular fa-comment"></i>

                                                                                    </button>
                                                                                    <!-- button dropdown -->
                                                                                    <button class="drop" type="button"
                                                                                        data-bs-toggle="dropdown"
                                                                                        aria-expanded="false">
                                                                                        <i
                                                                                            class="fa-solid fa-ellipsis"></i>
                                                                                    </button>
                                                                                    <ul class="dropdown-menu p-0">
                                                                                        <li>
                                                                                            <asp:Button ID="Button3"
                                                                                                runat="server"
                                                                                                Text="Delete post"
                                                                                                CssClass="dropButton" />
                                                                                        </li>
                                                                                        <li>
                                                                                            <asp:Button ID="Button4"
                                                                                                runat="server"
                                                                                                Text="Save to collection"
                                                                                                CssClass="dropButton" />
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="row mt-2 mb-2">
                                                            <div
                                                                class="col-lg-12 d-flex align-items-center justify-content-between">
                                                                <div class="me-2">
                                                                    <div class="avaBorder">
                                                                        <asp:ImageButton ID="ImageButton3"
                                                                            runat="server" ImageUrl="images/avatar.jpg"
                                                                            CssClass="ava" />
                                                                    </div>
                                                                </div>

                                                                <div class="boxComment input-group">
                                                                    <asp:TextBox ID="TextBox1" runat="server"
                                                                        CssClass="form-control"
                                                                        placeholder="Write a comment">
                                                                    </asp:TextBox>

                                                                    <asp:Button ID="Button6" runat="server"
                                                                        Text="Button" CssClass="hi" />

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                            </div>
                            <!-- đổ thêm avata của người dùng(acc đa đăng nhập) -->
                            </ItemTemplate>
                            </asp:DataList>


                        </div>

                    </div>

                </div>
            </div>

        </div>





        <div id="content2" class="menu-content" style="display:none;">


            <div id="content3" class="menu-content" style="display:none;">
                <%--datalist--%>
            </div>
            <div id="content4" class="menu-content" style="display:none;">
                <h3>Nội dung Submenu 4</h3>
                <p>Đây là nội dung cho Submenu 4.</p>
            </div>

        </div>
        </div>








        <script src="js/js_profile.js"></script>



    </asp:Content>