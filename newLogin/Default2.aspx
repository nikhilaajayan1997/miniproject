<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
<link href="style1.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="cover">
    <div>
       <asp:Image ID="Image1" ImageUrl="~/Stock/Tulips.jpg" runat="server" Height="652px" Width="914px" />
    <div class="element">
         
        <div class="intro">
        <asp:TextBox ID="TextBox1" CssClass="txt1 txtstyle" placeholder="username" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </div>
    </div>
    </div>
            </section>
    </form>
</body>
</html>
