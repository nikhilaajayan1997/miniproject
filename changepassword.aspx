<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 233px;
        }
        .auto-style7 {
            width: 1346px;
            height: 160px;
        }
        .auto-style8 {
            width: 1345px;
            height: 191px;
            margin-top: 104px;
        }
        .auto-style9 {
            width: 233px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 162px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="4" style="text-align: center; background-color: #FFFFFF">
                    <img class="auto-style7" src="uploaded_file/tmg1.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4" style="text-align: center">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Change Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblcpwd" runat="server" Text="Current Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rv1" runat="server" ControlToValidate="txtcpwd" ErrorMessage="pls enter pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblnpwd" runat="server" Text="New Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rv2" runat="server" ControlToValidate="txtnpwd" ErrorMessage="pls enter new pwd" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style9">
                </td>
                <td class="auto-style10">
                    <asp:Label ID="lblcmpwd" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="tctcmpwd" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="cv3" runat="server" ControlToCompare="txtnpwd" ControlToValidate="tctcmpwd" ErrorMessage="pls re enter pwd" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tctcmpwd" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Pls enter confirm password</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="212px" Font-Bold="True" />
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3"></td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" ForeColor="#00CC00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="4">
                    <img class="auto-style8" src="uploaded_file/img1.jpg" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
