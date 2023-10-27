<%@ Page Title="" Language="C#" MasterPageFile="~/provider/providerhomepage.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style47 {
        }
        .auto-style7 {
            width: 128px;
        }
        .auto-style20 {
            height: 34px;
            width: 128px;
        }
        .auto-style21 {
            height: 34px;
            width: 282px;
        }
        .auto-style24 {
            width: 128px;
            height: 23px;
        }
        .auto-style25 {
            width: 282px;
            height: 23px;
        }
        .auto-style8 {
            height: 26px;
            width: 128px;
        }
        .auto-style17 {
            height: 26px;
            width: 282px;
        }
        .auto-style10 {
            width: 128px;
            height: 56px;
        }
        .auto-style18 {
            width: 282px;
            height: 56px;
        }
        .auto-style48 {
            width: 188px;
        }
        .auto-style49 {
            width: 179px;
            height: 233px;
        }
        .auto-style50 {
            width: 185px;
            height: 231px;
            margin-top: 1px;
        }
        .auto-style51 {
            width: 186px;
            height: 235px;
            margin-left: 0px;
        }
        .auto-style52 {
            width: 181px;
            height: 235px;
        }
        .auto-style53 {
            width: 282px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style48" rowspan="7">
                <img class="auto-style49" src="uploaded_file/images%20(1).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
            <td colspan="2" style="text-align: center" class="auto-style47">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="FOOD Details"></asp:Label>
            </td>
            <td class="auto-style47" rowspan="7">
                <img class="auto-style51" src="uploaded_file/images%20(3).jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/EditFood.aspx">Edit</asp:HyperLink>
            </td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Text="Food id"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label9" runat="server" Text="Provider id"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Food category"></asp:Label>
            </td>
            <td class="auto-style53">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="99px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="Label18" runat="server" ForeColor="Red"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Pls select food item" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style48" rowspan="6">
                <img class="auto-style50" src="uploaded_file/images%20(2).jpg" /></td>
            <td class="auto-style8">Qty</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" Width="93px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="pls enter numeric quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style47" rowspan="6">
                <img class="auto-style52" src="uploaded_file/Screenshot_2019-10-04-23-15-00-1.png" /></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style53">
                <asp:TextBox ID="TextBox3" runat="server" Width="90px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="pls enter value" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label12" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server" Width="169px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Pls enter description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="103px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style53">
                <asp:Label ID="Label19" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

