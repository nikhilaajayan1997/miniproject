<%@ Page Title="" Language="C#" MasterPageFile="~/provider/providerhomepage.master" AutoEventWireup="true" CodeFile="ViewCustomerDetails.aspx.cs" Inherits="ViewCustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 105px;
        }
        .auto-style6 {
            width: 460px;
            text-align: center;
        }
        .auto-style7 {
            height: 1px;
        }
        .auto-style8 {
            height: 1px;
            width: 105px;
        }
        .auto-style9 {
            height: 1px;
            width: 460px;
        }
        .auto-style10 {
            height: 8px;
        }
        .auto-style11 {
            height: 8px;
            width: 105px;
        }
        .auto-style12 {
            height: 8px;
            width: 460px;
            text-align: center;
        }
        .auto-style13 {
            height: 8px;
            width: 20px;
        }
        .auto-style14 {
            height: 1px;
            width: 20px;
        }
        .auto-style15 {
            width: 20px;
        }
        .auto-style16 {
            width: 441px;
        }
        .auto-style18 {
            height: 8px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="10" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="View Customer"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12" colspan="6">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label10" runat="server" Text="Select Category"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">
                &nbsp;</td>
            <td class="auto-style18" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="16px" Width="177px" style="margin-left: 0px">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9" colspan="6">
                &nbsp;&nbsp;
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center; margin-left: 297px" Width="254px" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" Visible="False">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="bookingid" HeaderText="Booking Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="customerid" HeaderText="Customer Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="date_of_booking" HeaderText="Date Of Booking"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select customer" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" colspan="6">
                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid2_SelectedIndexChanged1" Visible="False" style="margin-left: 171px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="buyproductid" HeaderText="Buy Product Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="customerid" HeaderText="Customer Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="selectcategory" HeaderText="Category"></asp:BoundColumn>
                        <asp:BoundColumn DataField="productselected" HeaderText="Name/Type"></asp:BoundColumn>
                        <asp:BoundColumn DataField="quantityneeded" HeaderText="Quantity Needed"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                        <asp:BoundColumn DataField="date_of_buy" HeaderText="Booking date"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" colspan="6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" colspan="6">
                <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid3_SelectedIndexChanged" Visible="False" Width="809px" style="margin-left: 181px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="buyusedproductid" HeaderText="Buy Usedproduct Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="customerid" HeaderText="Customerid"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                        <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td style="text-align: left" class="auto-style6" colspan="6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td style="text-align: left" class="auto-style6" colspan="6">
                <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid4_SelectedIndexChanged" Width="808px" style="margin-left: 190px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="foodbookid" HeaderText="Book Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="customerid" HeaderText="Customer Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="fooditem" HeaderText="Food Item"></asp:BoundColumn>
                        <asp:BoundColumn DataField="qty" HeaderText="Quantity"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Price"></asp:BoundColumn>
                        <asp:BoundColumn DataField="time" HeaderText="Delivery Time"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Text="Notification" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6" colspan="4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Visible="False" Height="59px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pls enter message" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" colspan="6">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Notify" Width="164px" OnClick="Button1_Click" Visible="False" style="margin-left: 617px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style6" colspan="2">
                <asp:Label ID="Label8" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
            <td class="auto-style6" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

