<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menuLogin.ascx.cs" Inherits="WebApplication1.menuLogin" %>

<link href="css/css_userControlLogin.css" rel="stylesheet" />

<div class="card me-5">
    <div class="navi d-flex flex-column align=items-center">
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnNaviLogin" OnClick="Button_User">
            <i class="fa-solid fa-user"></i>
        </asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btnNaviLogin" OnClick="Button_Business">
            <i class="fa-solid fa-briefcase"></i>
        </asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btnNaviLogin" OnClick="Button_Admin">
            <i class="fa-solid fa-user-gear"></i>
        </asp:LinkButton>
    </div>
</div>
