<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="SuggestIndia.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
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
        </nav>
    
        <div style="color:azure; text-align:center; padding-left:700px; width :100%; height:900px; padding-top:200px;">      
            <table style="background-color:#4040a1; padding:100px; border-radius:100px">
                <tr>
                    <td>Profile<br />
                        <img src="images/user.png" width="200px" height="200px"/>
                    </td>
                </tr>
                <tr>
                    <td><asp:DataList ID="DataList1" runat="server" DataKeyField="uni_Number" style="width:100%; text-align:center;" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="newTable">
                        <tr>
                            <td>Unique ID</td>
                            <td><asp:Label ID="uni_NumberLabel" runat="server" Text='<%# Eval("uni_Number") %>' /></td>
                        </tr>
                        <tr>
                            <td>UserName</td>
                            <td><asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' /></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>  <asp:Label ID="uNameLabel" runat="server" Text='<%# Eval("uName") %>' /></td>
                        </tr>
                        <tr>
                            <td>E- Mail</td>
                            <td><asp:Label ID="uMailLabel" runat="server" Text='<%# Eval("uMail") %>' /></td>
                        </tr>
                        <tr>
                            <td>PassWord</td>
                            <td><asp:Label ID="upassWordLabel" runat="server" Text='<%# Eval("upassWord") %>' /></td>
                        </tr>
                        <tr>
                            <td>Date Of Birth</td>
                            <td><asp:Label ID="ageDateLabel" runat="server" Text='<%# Eval("ageDate") %>' /></td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td><asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td>
                        </tr>
                        <tr>
                            <td>Contact</td>
                            <td><asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' /></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SuggestIndiaConnectionString %>" SelectCommand="SELECT * FROM [Details] WHERE ([userName] = @userName)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Details] WHERE [uni_Number] = @original_uni_Number AND [userName] = @original_userName AND [uName] = @original_uName AND [uMail] = @original_uMail AND (([upassWord] = @original_upassWord) OR ([upassWord] IS NULL AND @original_upassWord IS NULL)) AND (([ageDate] = @original_ageDate) OR ([ageDate] IS NULL AND @original_ageDate IS NULL)) AND [city] = @original_city AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL))" InsertCommand="INSERT INTO [Details] ([userName], [uName], [uMail], [upassWord], [ageDate], [city], [Contact]) VALUES (@userName, @uName, @uMail, @upassWord, @ageDate, @city, @Contact)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Details] SET [userName] = @userName, [uName] = @uName, [uMail] = @uMail, [upassWord] = @upassWord, [ageDate] = @ageDate, [city] = @city, [Contact] = @Contact WHERE [uni_Number] = @original_uni_Number AND [userName] = @original_userName AND [uName] = @original_uName AND [uMail] = @original_uMail AND (([upassWord] = @original_upassWord) OR ([upassWord] IS NULL AND @original_upassWord IS NULL)) AND (([ageDate] = @original_ageDate) OR ([ageDate] IS NULL AND @original_ageDate IS NULL)) AND [city] = @original_city AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_uni_Number" Type="Int32" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_uName" Type="String" />
                    <asp:Parameter Name="original_uMail" Type="String" />
                    <asp:Parameter Name="original_upassWord" Type="String" />
                    <asp:Parameter Name="original_ageDate" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_Contact" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="userName" Type="String" />
                    <asp:Parameter Name="uName" Type="String" />
                    <asp:Parameter Name="uMail" Type="String" />
                    <asp:Parameter Name="upassWord" Type="String" />
                    <asp:Parameter Name="ageDate" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="userName" SessionField="name" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userName" Type="String" />
                    <asp:Parameter Name="uName" Type="String" />
                    <asp:Parameter Name="uMail" Type="String" />
                    <asp:Parameter Name="upassWord" Type="String" />
                    <asp:Parameter Name="ageDate" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="original_uni_Number" Type="Int32" />
                    <asp:Parameter Name="original_userName" Type="String" />
                    <asp:Parameter Name="original_uName" Type="String" />
                    <asp:Parameter Name="original_uMail" Type="String" />
                    <asp:Parameter Name="original_upassWord" Type="String" />
                    <asp:Parameter Name="original_ageDate" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_Contact" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
</td>
                </tr>
            </table>
            
        </div>


            <div >
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
       
            </div>
    </form>
</body>
</html>
