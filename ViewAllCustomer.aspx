<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminhomepage.master" AutoEventWireup="true" CodeFile="ViewAllCustomer.aspx.cs" Inherits="ViewAllCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1370px;
            height: 115px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="View Customers"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="576px" style="margin-left: 0px; margin-right: 0px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="customerid" HeaderText="Customer Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="emailid" HeaderText="Email Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="dateofreg" HeaderText="Date of Registration"></asp:BoundColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

