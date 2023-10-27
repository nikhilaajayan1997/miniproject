<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="BuyProduct.aspx.cs" Inherits="BuyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 304px;
            text-align: center;
        }
        .auto-style5 {
            width: 485px;
        }
        .auto-style7 {
            width: 269px;
        }
        .auto-style8 {
            width: 199px;
        }
        .auto-style9 {
            width: 6px;
        }
        .auto-style10 {
        width: 304px;
        text-align: center;
        height: 30px;
        background-color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="5" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Buy Product"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label2" runat="server" Text="Buy Product Id"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label3" runat="server" Text="Customer Id"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label4" runat="server" Text="Select Category"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ForeColor="Red">Pls select category</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label5" runat="server" Text="Product"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ForeColor="Red">pls select value</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" Visible="False" Width="389px" style="margin-left: 134px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="productid" HeaderText="Product Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providername" HeaderText="Provider Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="availability" HeaderText="Availability"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label8" runat="server" Text="Quantity Needed" Visible="False"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pls enter value" ForeColor="#FF3300">pls select value</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label9" runat="server" Text="Price" Visible="False"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Buy Now" Visible="False" Width="212px" />
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Label ID="Label11" runat="server" ForeColor="#66FF33"></asp:Label>
                </td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

