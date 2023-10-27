<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            background-color: #FFFFFF;
    }
        .auto-style15 {
        }
        .auto-style17 {
            width: 420px;
        }
        .auto-style19 {
    }
        .auto-style24 {
            width: 503px;
        }
        .auto-style26 {
            text-align: left;
        }
        .auto-style27 {
            text-align: left;
            width: 81px;
        }
        .auto-style28 {
            width: 81px;
        }
        .auto-style30 {
        height: 53px;
        width: 503px;
    }
    .auto-style31 {
        height: 53px;
        width: 81px;
    }
    .auto-style32 {
        height: 53px;
        width: 316px;
    }
    .auto-style33 {
        height: 53px;
        width: 420px;
    }
    .auto-style34 {
        width: 1502px;
        height: 53px;
        background-color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="text-align: center; background-color: #FFFFFF;" class="auto-style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td colspan="4" style="background-color: #FFFFFF;" class="auto-style19">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" style="text-align: left" Text="REGISTRATION"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" Text="Usertype" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="175px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Pls select usertype" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label3" runat="server" Text="Id" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:Label ID="id" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label4" runat="server" Text="Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="name" runat="server" Height="16px" Width="175px"></asp:TextBox>
            </td>
            <td>&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="pls enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
            &nbsp;
            </td>
            <td class="auto-style26">
                <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="address" runat="server" Height="80px" TextMode="MultiLine" Width="181px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="Pls enter address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label6" runat="server" Text="Phno" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="phone" runat="server" Height="16px" Width="175px" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phone" ErrorMessage="pls enter phone number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Date of Birth"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="dob" runat="server" Width="174px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dob" ErrorMessage="Pls enter date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label7" runat="server" Text="Email id" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="email" runat="server" Height="18px" Width="173px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Pls enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label8" runat="server" Text="Date of Registration" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="registr" runat="server" Height="16px" Width="174px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="registr" ErrorMessage="Pls enter date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style31"></td>
            <td class="auto-style32"></td>
            <td class="auto-style33">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="182px" OnClick="Button1_Click"/>
                <asp:Label ID="Label11" runat="server" ForeColor="#00CC00" Visible="False"></asp:Label>
            </td>
            <td class="auto-style34"></td>
        </tr>
        </table>
</asp:Content>

