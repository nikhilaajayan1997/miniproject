<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Login</title>
<link href="Style.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" rel="stylesheet" />
<style>
@import url('https://fonts.googleapis.com/css?family=Leckerli+One|Oleo+Script+Swash+Caps');
</style>



    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 350px;
        }
        .auto-style2 {
            width: 47px;
            height: 348px;
        }
        .auto-style3 {
            height: 348px;
        }
    </style>
</head>
<body style="width: 978px">
    <form id="form1" runat="server">
        <section class="cover">
    <div>
        <asp:Image ID="Image1" ImageUrl="~/Stock/Tulips.jpg" runat="server" Height="652px" Width="917px" />
     <div class="elements">
                    <div class="intro">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Panel ID="Panel1" runat="server" Height="221px" style="text-align: center; margin-left: 63px" Width="816px">
                        <asp:Label ID="Label1" runat="server" Text="LogIn" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1" CssClass="txt1 txtstyle" placeholder="username" runat="server" Height="21px" Width="348px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password" runat="server" Height="21px" Width="348px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" CssClass="btn1 btnstyle" runat="server" OnClick="Button1_Click" Text="SignIn" Width="160px" />
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    
    </div>
         </div>
        </div>
            </section>
    </form>
</body>
</html>
