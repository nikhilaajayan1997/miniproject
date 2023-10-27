<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminhomepage.master" AutoEventWireup="true" CodeFile="DeleteProvider.aspx.cs" Inherits="DeleteProvider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        height: 723px;
    }
        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style6 {
            width: 362px;
            height: 24px;
            text-align: center;
        }
        .auto-style7 {
            width: 100px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 255px;
            text-align: center;
        }
        .auto-style12 {
            width: 155px;
        }
        .auto-style13 {
        width: 313px;
        height: 24px;
    }
    .auto-style14 {
        height: 24px;
        width: 141px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="6" style="text-align: center; background-color: #FFFFFF;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Remove Provider" style="text-align: left"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" rowspan="5">
                &nbsp;</td>
            <td class="auto-style4" colspan="3">
                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DataGrid2_SelectedIndexChanged" Width="349px" style="margin-left: 98px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" style="margin-left: 16px" Width="588px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="address" HeaderText="Address"></asp:BoundColumn>
                        <asp:BoundColumn DataField="phone" HeaderText="Phone No"></asp:BoundColumn>
                        <asp:BoundColumn DataField="dateofreg" HeaderText="Registration Date"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="Select" Text="Select"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="End Date" Visible="False"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Visible="False" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pls enter end date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Remove" Visible="False" Width="123px" OnClick="Button1_Click" />
                <asp:Label ID="Label4" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">&nbsp;</td>
        </tr>
        </table>
    <a href="DeleteProvider.aspx">DeleteProvider.aspx</a>
</asp:Content>

