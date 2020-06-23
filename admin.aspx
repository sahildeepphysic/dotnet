<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SuggestIndia.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <link  rel="stylesheet" type="text/css"  href="css/admin.css"/>
</head>
<body>
    
    <form id="form1" runat="server">
        <span>ADMIN PANEL</span>
        <div class="main">
            
        <asp:HiddenField ID="hfContactID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Size"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Size" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="ImageData"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Image ID="ImageData" Height="200px" Width="200px" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Problem"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Problem" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="false" AllowCustomPaging="True" AllowPaging="True" Height="50px">
            <RowStyle BorderStyle="None" BorderWidth="10px" Height="50px" HorizontalAlign="center" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Size" HeaderText="Size" />
                <asp:BoundField DataField="ImageData" HeaderText="ImageData" />
                <asp:BoundField DataField="para" HeaderText="Problem" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="lnk_OnClick">More Info</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out"/>
    </div>
    </form>
</body>
</html>
