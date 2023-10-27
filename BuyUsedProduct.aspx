<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="BuyUsedProduct.aspx.cs" Inherits="BuyUsedProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 102%;
        }
        .auto-style2 {
            width: 87px;
        }
        .auto-style4 {
            width: 334px;
            height: 23px;
        }
        .auto-style5 {
            width: 388px;
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
        }
        .auto-style7 {
            width: 334px;
            height: 260px;
        }
        .auto-style8 {
            width: 388px;
            height: 260px;
            text-align: right;
        }
        .auto-style9 {
            height: 260px;
        }
        .auto-style10 {
            width: 378px;
            height: 138px;
            text-align: left;
        }
        .auto-style11 {
            height: 138px;
            width: 318px;
            text-align: left;
        }
        .auto-style12 {
            width: 388px;
            text-align: left;
        }
        .auto-style13 {
            width: 334px;
            height: 56px;
        }
        .auto-style14 {
            width: 388px;
            text-align: center;
            height: 56px;
        }
        .auto-style15 {
            height: 56px;
        }
        .auto-style16 {
            width: 103%;
        }
        .auto-style21 {
            width: 95%;
            height: 100px;
        }
        .auto-style22 {
            height: 132px;
            text-align: left;
        }
        .auto-style23 {
            width: 146px;
        }
        .auto-style24 {
            height: 260px;
            width: 146px;
        }
        .auto-style25 {
            height: 23px;
            width: 146px;
        }
        .auto-style26 {
            height: 56px;
            width: 146px;
        }
        .auto-style29 {
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style31 {
            text-align: left;
            width: 334px;
            background-color: #FFFFFF;
        }
        .auto-style32 {
            text-align: left;
        }
        .auto-style33 {
            width: 318px;
            text-align: left;
        }
        .auto-style34 {
            width: 378px;
            text-align: left;
            height: 23px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="4" style="text-align: center">
                <h2 style="background-color: #FFFFFF">
                <asp:Label ID="Label1" runat="server" Text="Buy Used Product"></asp:Label>
                </h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="Buy used product id"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Customer Id"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label33" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label6" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="124px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ForeColor="Red">pls select category</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Product"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="122px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ForeColor="Red">Pls select product</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="256px" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" Visible="False" Width="601px" style="margin-left: 126px">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="usedproductid" HeaderText="Product Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="providerid" HeaderText="Provider Id"></asp:BoundColumn>
                        <asp:BoundColumn DataField="price" HeaderText="Product Price"></asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select" HeaderText="select" Text="Select"></asp:ButtonColumn>
                        <asp:TemplateColumn HeaderText="photo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="109px" Width="272px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"photo") %>' />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style25"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Panel ID="Panel1" runat="server" Height="289px" Visible="False" Width="751px">
                    <table class="auto-style1" style="height: 300px; width: 101%;" align="center">
                        <tr>
                            <td class="auto-style34">
                                <asp:Label ID="Label14" runat="server" Text="Name of book"></asp:Label>
                            </td>
                            <td class="auto-style33">
                                <asp:TextBox ID="TextBox4" runat="server" Width="227px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                <asp:Label ID="Label15" runat="server" Text="Author"></asp:Label>
                            </td>
                            <td class="auto-style33">
                                <asp:TextBox ID="TextBox5" runat="server" Width="226px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label16" runat="server" Text="Description" style="text-align: left"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox6" runat="server" Height="83px" Width="219px" style="margin-left: 4px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                &nbsp;</td>
                            <td class="auto-style33">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Submit" Width="224px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                &nbsp;</td>
                            <td rowspan="2" class="auto-style33">
                                <asp:Label ID="Label28" runat="server" ForeColor="Lime" style="text-align: center"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34"></td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                &nbsp;</td>
                            <td class="auto-style33">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style25"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Panel ID="Panel3" runat="server" Height="318px" Width="743px" Visible="False">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="Label29" runat="server" Text="Company"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox13" runat="server" Height="24px" Width="256px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="Label30" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox14" runat="server" Height="22px" Width="257px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="Label17" runat="server" Text="Date Of Purchase" style="text-align: left"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox15" runat="server" Height="23px" Width="257px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <asp:Label ID="Label18" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox16" runat="server" Height="122px" style="margin-left: 4px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                            </td>
                            <td class="auto-style22"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: left">
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Submit" Visible="False" Width="223px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label31" runat="server" ForeColor="#00CC00"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style12">
                <asp:Panel ID="Panel4" runat="server" Height="193px" Width="731px" Visible="False">
                    <table class="auto-style21">
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="Material"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox17" runat="server" Height="22px" Width="256px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox10" runat="server" Height="40px" TextMode="MultiLine" Width="263px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style6"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style6">
                                <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Submit" Width="247px" />
                            </td>
                            <td class="auto-style6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style6">
                                <asp:Label ID="Label32" runat="server" ForeColor="Lime"></asp:Label>
                            </td>
                            <td class="auto-style6">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

