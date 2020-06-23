<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="SuggestIndia.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/stylesheet.css" />
</head>
<body>
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
        <div style="width:100%; height:900px;  text-align:center;">
        <div style="margin:0px 100px; height:900px; padding:100px;">
        <span style="font-size:60px; color:wheat;">Post .For change</span>
        <div class="middleArea">
            <br />
            <br />
        <div style="text-align:center;">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="150px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            <br />
            <br />
            <span style="font-size:40px; color:wheat;">Speak about your problem.</span>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="200px" Width="800px" style="font-size:20px; border-radius:100px;"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Area" Font-Names="arial" Font-Size="25px" ForeColor="Wheat"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="282px"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
            </div>
            </div>
            </div>
         <div >
             </div>
            </div>
			<div class="footer1"style="color:aliceblue; text-align:center;">
				Suggest India website Suggest@india.com / R 2023 Patreon. Proudly created by <a href="#">SAHILDEEP SHARMA</a>
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
