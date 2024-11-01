<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h2>Sign Up</h2>
      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
      <div>
          <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
          <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
      </div>
      <div>
          <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
      </div>
      <div>
          <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
          <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
      </div>
      <div>
          <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
      </div>
        </div>
    </form>
</body>
</html>
