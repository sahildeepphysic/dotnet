<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SuggestIndia.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="Style.css"/>
    <style type="text/css">
        .preNav {
            height:500px;
        }

    </style>
    <meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
		 <div style="margin: 70px 800px 0px 800px; border-radius:100px; background-color: #146EB4; text-align: center;  color:wheat; height:800px; padding:10px 40px; width:400px;">
			 <img src="images/avatar-01.png" alt="AVATAR" style="height:100px; width:100px;"/><br /><br />
			 <span style="font-size:30px;">Sign Up here</span><br /><br /><br />
             <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:TextBox ID="TextBox6" runat="server" placeholder="UserName" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:TextBox ID="TextBox7" runat="server" placeholder="E-mail" TextMode="Email" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:TextBox ID="TextBox4" runat="server" placeholder="City" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
             <asp:TextBox ID="TextBox5" runat="server" placeholder="Contact" TextMode="Phone" style="height: 40px; padding-left:10px; border-radius: 40px; width: 300px; margin-bottom:15px;"></asp:TextBox>
			 <asp:Button ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" style="height: 40px; padding-left: 10px; border-radius: 40px; width: 250px; color: white; background: #222; margin-bottom:15px;" />
			 <asp:Button ID="Button2" runat="server" Text="Home" OnClick="Button2_Click"  style="height: 40px; padding-left: 10px; border-radius: 40px; width: 250px; color: white; background: #222"/><br />
			 <a class="txt1" href="SignIn.aspx"  style="color: bisque;">Login</a>
		</div>
    </form>
	</body>
</html>
