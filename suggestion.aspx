<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suggestion.aspx.cs" Inherits="SuggestIndia.suggestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/stylesheet.css" />
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <nav>
            <div class="hamburger">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <ul>
				<li>
                    <div class="logo">
					    <a href="Main.aspx"><img src="images/logo.jpg"/>&nbsp;&nbsp;&nbsp; <span>Suggest </span><span>India</span></a>
                    </div>
				</li>  
                <li><a href="Main.aspx">Home</a></li>
                <li><a href="profile.aspx">Profile</a></li>
                <li><a href="Problem.aspx">Problems</a></li>
                <li><a href="Report.aspx">Report</a></li>
                <li><a href="suggestion.aspx">Suggestion</a></li>
                <li><a href="about.aspx">About us</a></li>
                <li><a href="SignIn.aspx"style="font-size:22px;">SignIn/SignUp</a></li>
			</ul>
        </nav><br />
        <div class="colllor">
        <div style="margin-top:150px; height:740px;">
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Mail" Font-Names="arial" Font-Size="40px" ForeColor="Wheat"></asp:Label>
            &nbsp;&nbsp;
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" style="height:50px; width:600px; padding-left:20px; border-radius:50px;"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Subject" Font-Names="arial" Font-Size="24pt" ForeColor="Wheat"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" style="height:50px; width:600px; padding-left:20px; border-radius:50px;" Width="564px"></asp:TextBox>
            <br />
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Suggestion" Font-Names="arial" Font-Size="24pt" ForeColor="Wheat"></asp:Label>
            <br />
            <br />
            <textarea id="TextArea1" style="height:200px; width:800px; border-radius:50px; padding:50px; font-size:20px;" ></textarea><br />
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" style="height:50px; color:antiquewhite; background-color:#222; font-size:20px; width:400px; padding-left:20px; border-radius:50px;" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
            </div>
            <div class="footer1"style="color:aliceblue; padding-top:20px; text-align:center;">
				Suggest India website Suggest@india.com / R 2023 Patreon. Proudly created by <a href="#">SAHIL</a>
				<div >
                    
					<a href="https://www.fb.com"><img  src="img/facebook.svg"/></a>
					<a href="https://www.instagram.com"><img    src="img/instagram.svg"/></a>
					<a href="https://www.blogger.com"><img    src="img/blogger.svg"/></a>
					<a href="https://mail.google.com"><img    src="img/gmail.svg"/></a>
					<a href="https://www.github.com"><img    src="img/github.svg"/></a>
					<a href="https://www.twitter.com"><img    src="img/twitter.svg"/></a>
					<a href="https://www.youtube.com"><img    src="img/youtube.svg"/></a>
				</div>
			</div>
    </form>
</body>
</html>
