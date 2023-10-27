<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="ViewOrderDetails.aspx.cs" Inherits="ViewOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 11px;
            text-align: center;
        }
        .auto-style5 {
            height: 11px;
            width: 270px;
        background-color: #FFFFFF;
    }
        .auto-style6 {
        height: 11px;
        text-align: center;
        background-color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="View Order Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="166px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="173px" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" style="margin-left: 2px" Visible="False" Width="561px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="bookingid" HeaderText="Booking Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providername" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="workcategory" HeaderText="Work Category"></asp:BoundColumn>
                        <asp:BoundColumn DataField="charge" HeaderText="Charge"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Cancel Order" Text="Cancel "></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 4px" Visible="False" Width="567px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="buyproductid" HeaderText="Order Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="productid" HeaderText="Product Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="productselected" HeaderText="Product"></asp:BoundColumn>
                        <asp:BoundColumn DataField="selectcategory" HeaderText="Category"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Provider Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 5px" Width="570px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="buyusedproductid" HeaderText="Order Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="selectedproduct" HeaderText="Product"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid4_SelectedIndexChanged" style="margin-left: 5px" Width="571px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="foodbookid" HeaderText="Order Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="fooditem" HeaderText="Food Item"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Provider Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                e</td>
        </tr>
        </table>
</asp:Content>

