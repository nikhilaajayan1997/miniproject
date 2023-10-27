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
</head>
<body>
    <form id="form1" runat="server">
        <section class="cover">
            <div>
                <asp:Image ID="Image1" ImageUrl="~/Stock/tulips.jpg" runat="server" Width="941px" />
                <div class="elements">
                    <div class="intro">
                        <asp:Label ID="Label1" runat="server" Text="login"></asp:Label>
 
                        <asp:TextBox ID="TextBox1" CssClass="txt1 txtstyle" placeholder="username" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
 
                        <asp:Button ID="Button1" CssClass="btn1 btnstyle" runat="server" Text="Sign Up" />
                        <asp:Button ID="Button2" CssClass="btn2 btnstyle" runat="server" Text="Registration" />
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
