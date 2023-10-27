<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
        height: 23px;
        width: 571px;
    }
        .auto-style10 {
        width: 571px;
        height: 62px;
    }
    .auto-style12 {        text-align: left;
    }
    .auto-style13 {
        height: 31px;
        width: 376px;
            text-align: center;
        }
        .auto-style18 {
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style29 {
        height: 31px;
        width: 571px;
    }
    .auto-style30 {
        width: 376px;
        text-align: center;
        height: 62px;
    }
    .auto-style32 {
        height: 56px;
        width: 376px;
        background-color: #FFFFFF;
    }
        .auto-style23 {
            width: 219px;
            height: 138px;
        }
        .auto-style33 {
            height: 13px;
            width: 376px;
            background-color: #FFFFFF;
        }
        .auto-style34 {
            width: 571px;
            height: 13px;
        }
        .auto-style35 {
            height: 17px;
            width: 376px;
            text-align: center;
        }
        .auto-style36 {
            height: 17px;
            width: 571px;
        }
        .auto-style37 {
            width: 376px;
            text-align: center;
            height: 42px;
        }
        .auto-style38 {
            width: 571px;
            height: 42px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" style="text-align: center" Text="Login"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="152px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pls enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox2" runat="server" Height="21px" TextMode="Password" Width="155px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pls enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Height="27px" Text="Log in" Width="175px" OnClick="Button1_Click" Font-Bold="True" style="margin-left: 3px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style38">
                <img class="auto-style23" src="uploaded_file/lock.gif" /></td>
        </tr>
        <tr>
            <td class="auto-style18" colspan="2">
                <asp:Label ID="Label5" runat="server" ForeColor="#33CC33"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        </table>
</asp:Content>

