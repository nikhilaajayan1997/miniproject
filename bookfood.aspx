<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="bookfood.aspx.cs" Inherits="bookfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            height: 23px;
            width: 327px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
        width: 327px;
        background-color: #FFFFFF;
    }
        .auto-style8 {
            width: 327px;
            height: 26px;
        background-color: #FFFFFF;
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
        width: 327px;
        height: 29px;
        background-color: #FFFFFF;
    }
        .auto-style13 {
        background-color: #FFFFFF;
    }
    .auto-style14 {
        height: 23px;
        background-color: #FFFFFF;
    }
    .auto-style15 {
        height: 29px;
        background-color: #FFFFFF;
    }
    .auto-style16 {
        height: 26px;
        background-color: #FFFFFF;
    }
        .auto-style17 {
        height: 30px;
        width: 327px;
        background-color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <h1>
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Book Food"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" Text="Food Book id"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Customer id"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label19" runat="server" Text="Phone no"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[0-9]{10}">Invalid phone no</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="pls enter phone no" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" Text="Food category"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">pls select item</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" Width="635px" Visible="False">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="foodid" HeaderText="food id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="providerid"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="fooditem" HeaderText="fooditem"></asp:BoundColumn>
                        <asp:BoundColumn DataField="qty" HeaderText="qty"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="price"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label21" runat="server" Text="Description" Visible="False"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">enter description</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label7" runat="server" Text="qty:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Visible="False" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">enter quantity</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label20" runat="server" Text="Total Price" Visible="False"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label9" runat="server" Text="Delivery time:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book" Visible="False" Width="92px" />
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label18" runat="server" ForeColor="#00CC00" Visible="False"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

