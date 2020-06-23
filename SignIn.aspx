<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="SuggestIndia.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
	<link rel="stylesheet" href="css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin: 70px 800px 0px 800px; border-radius:100px; background-color: #146EB4; text-align: center;  color:wheat; height:600px; padding:10px 40px; width:400px;">
			<img src="images/avatar-01.png" alt="AVATAR" style="height:100px; width:100px;"/><br /><br />
			<span style="font-size:30px;">Sign In here</span><br /><br /><br />
			<asp:TextBox ID="TextBox1" runat="server" placeholder="  UserName" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px;"></asp:TextBox><br /><br />
			<asp:TextBox ID="TextBox2" runat="server" TextMode="  Password" placeholder="  Password"  style=" padding-left:10px; height: 40px; border-radius: 40px; width: 300px;"></asp:TextBox><br /><br />
			<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="height: 40px; padding-left:10px; border-radius: 40px; width: 250px; color:white; background: #222"/><br /><br />
			<asp:Button ID="Button2" runat="server" Text="Home" OnClick="Button2_Click" style="height: 40px; padding-left:10px; border-radius: 40px; width: 250px;"/><br /><br />
			<a href="#" style="color:bisque;">Forgot Username / Password ?</a><br />
			<a href="SignUp.aspx" style="color:bisque;">Create new account</a>
		</div>
    </form>
</body>
</html>
