<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="bookworker.aspx.cs" Inherits="bookworker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 327px;
        background-color: #FFFFFF;
    }
        .auto-style4 {
        width: 327px;
        background-color: #FEFFFF;
    }
        .auto-style8 {
            width: 327px;
            height: 26px;
        background-color: #FEFFFF;
    }
        .auto-style13 {
            height: 43px;
        }
        .auto-style14 {
        background-color: #FFFFFF;
    }
    .auto-style15 {
        height: 23px;
        background-color: #FFFFFF;
    }
    .auto-style16 {
        height: 26px;
        background-color: #FFFFFF;
    }
        .auto-style17 {
        height: 30px;
        width: 327px;
        background-color: #FEFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="4" style="text-align: center" class="auto-style13">
                <h1 style="height: 36px; margin-bottom: 4px; background-color: #FFFFFF">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Book Worker"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" Text="Booking id"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Customer id"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label19" runat="server" Text="Phone no"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" Text="Work category"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ForeColor="Red">Pls select category</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" Width="336px" Visible="False">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Phone Number" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label16" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="Charge" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label9" runat="server" Text="Available From" Visible="False"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label11" runat="server" Text="To" Visible="False"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book" Visible="False" Width="92px" style="text-align: center" />
                &nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" ForeColor="#00CC00" Visible="False"></asp:Label>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

