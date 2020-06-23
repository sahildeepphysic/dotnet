<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Problem.aspx.cs" Inherits="SuggestIndia.Problem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Problems</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/stylesheet.css"/>
    <script src="js/colcade.js"></script>
</head>
<body>
     <form runat="server">
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
                <li><a href="SignIn.aspx"style="font-size:20px;">SignIn/SignUp</a></li>
			</ul>
        </nav>
        <br />
         <div class="colllor" style="padding-left:210px; padding-top:10px;">
    <div class="imagecontainer">
        <h1>Recent Problems</h1>

        <div class="grid">
            <div class="grid-col grid-col--1"></div>
            <div class="grid-col grid-col--2"></div>
            <div class="grid-col grid-col--3"></div>
            <div class="grid-col grid-col--4"></div>
            <div class="grid-item">
                <div class="img_content"></div>
                
             <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1"  CssClass="auto-style10" Font-Size="24pt" ForeColor="Wheat" Width="100%">
                 <ItemTemplate>
                    <table class="auto-style4">
                         <tr><td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="Problems"></asp:Label></td></tr>
                         <tr>
                             <td class="auto-style5" >
                                 <asp:Image ID="Image1" style="width:300px; height:250px;" runat="server"
                                     ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("para") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7">
                                 <asp:Button ID="Button1" OnClientClick="javascript:return alert('Thanks for your concern sir.');" runat="server" style="width:300px; height:100px; border-radius: 20px; font-size:30px; color:wheat; background:black;" Text="Click to resolve." />
                                
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
            </div>

            <div class="grid-item">
                <div class="img_content">
                     
                </div>
                
             <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2"  CssClass="auto-style10" Font-Size="24pt" ForeColor="Wheat" Width="100%">
                 <ItemTemplate>


                     <table class="auto-style4">
                         <tr>
                             <td class="auto-style3">
                                 <asp:Label ID="Label2" runat="server" Text="Problems"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" >
                                 <asp:Image ID="Image1" style="width:300px; height:250px;" runat="server"
                                     ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("para") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7">
                                 <asp:Button ID="Button1" OnClientClick="javascript:return alert('Thanks for your concern sir.');" runat="server" style="width:300px; height:100px; border-radius: 20px; font-size:30px; color:wheat; background:black;" Text="Click to resolve." />
                                
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
            </div>


            <div class="grid-item">
                <div class="img_content">
                     
                </div>
                
             <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource3"  CssClass="auto-style10" Font-Size="24pt" ForeColor="Wheat" Width="100%">
                 <ItemTemplate>


                     <table class="auto-style4">
                         <tr>
                             <td class="auto-style3">
                                 <asp:Label ID="Label2" runat="server" Text="Problems"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" >
                                 <asp:Image ID="Image1" style="width:300px; height:250px;" runat="server"
                                     ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("para") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7">
                                 <asp:Button ID="Button1" OnClientClick="javascript:return alert('Thanks for your concern sir.');" runat="server" style="width:300px; height:100px; border-radius: 20px; font-size:30px; color:wheat; background:black;" Text="Click to resolve." />
                                
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
            </div>

            <div class="grid-item">
                <div class="img_content">
                     
                </div>
                
             <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource2"  CssClass="auto-style10" Font-Size="24pt" ForeColor="Wheat" Width="100%">
                 <ItemTemplate>


                     <table class="auto-style4">
                         <tr>
                             <td class="auto-style3">
                                 <asp:Label ID="Label2" runat="server" Text="Problems"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" >
                                 <asp:Image ID="Image1" style="width:300px; height:250px;" runat="server"
                                     ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("para") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7">
                                 <asp:Button ID="Button1" OnClientClick="javascript:return alert('Thanks for your concern sir.');" runat="server" style="width:300px; height:100px; border-radius: 20px; font-size:30px; color:wheat; background:black;" Text="Click to resolve." />
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
            </div>
        </div>
    </div>
             </div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SuggestIndiaConnectionString %>" SelectCommand="
SELECT [SuggestIndia].[dbo].[ProblemData].[Name]
      ,[SuggestIndia].[dbo].[ProblemData].[ImageData]
      ,[SuggestIndia].[dbo].[ProblemData].[para]
  FROM [SuggestIndia].[dbo].[ProblemData]
  INNER JOIN [SuggestIndia].[dbo].[areaLikeCounter]
  ON [SuggestIndia].[dbo].[ProblemData].[ID]=[SuggestIndia].[dbo].[areaLikeCounter].[ID]
  ORDER BY [likeCounter] DESC"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SuggestIndiaConnectionString %>" SelectCommand="
SELECT [SuggestIndia].[dbo].[ProblemData].[Name]
      ,[SuggestIndia].[dbo].[ProblemData].[ImageData]
      ,[SuggestIndia].[dbo].[ProblemData].[para]
  FROM [SuggestIndia].[dbo].[ProblemData]
  INNER JOIN [SuggestIndia].[dbo].[areaLikeCounter]
  ON [SuggestIndia].[dbo].[ProblemData].[ID]=[SuggestIndia].[dbo].[areaLikeCounter].[ID]
  ORDER BY [Name] DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SuggestIndiaConnectionString %>" SelectCommand="
SELECT [SuggestIndia].[dbo].[ProblemData].[Name]
      ,[SuggestIndia].[dbo].[ProblemData].[ImageData]
      ,[SuggestIndia].[dbo].[ProblemData].[para]
  FROM [SuggestIndia].[dbo].[ProblemData]
  INNER JOIN [SuggestIndia].[dbo].[areaLikeCounter]
  ON [SuggestIndia].[dbo].[ProblemData].[ID]=[SuggestIndia].[dbo].[areaLikeCounter].[ID]
  ORDER BY [Name] ASC"></asp:SqlDataSource>
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
         <script>
             var colc = new Colcade('.grid', {
                 columns: '.grid-col',
                 items: '.grid-item'
             });
         </script>
    
    </form>
</body>
</html>
