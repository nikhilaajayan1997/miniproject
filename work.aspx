<%@ Page Title="" Language="C#" MasterPageFile="~/provider/providerhomepage.master" AutoEventWireup="true" CodeFile="work.aspx.cs" Inherits="work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style7 {
            width: 128px;
        }
        .auto-style8 {
            height: 26px;
            width: 128px;
        }
        .auto-style9 {
            height: 56px;
        }
        .auto-style10 {
            width: 128px;
            height: 56px;
        }
        .auto-style16 {
            width: 178px;
        }
        .auto-style17 {
            height: 26px;
            width: 178px;
        }
        .auto-style18 {
            width: 178px;
            height: 56px;
        }
        .auto-style19 {
            height: 34px;
        }
        .auto-style20 {
            height: 34px;
            width: 128px;
        }
        .auto-style21 {
            height: 34px;
            width: 178px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 128px;
            height: 23px;
        }
        .auto-style25 {
            width: 178px;
            height: 23px;
        }
        .auto-style28 {
            width: 123px;
        }
        .auto-style29 {
            height: 34px;
            width: 123px;
        }
        .auto-style30 {
            width: 123px;
            height: 23px;
        }
        .auto-style31 {
            height: 26px;
            width: 123px;
        }
        .auto-style32 {
            width: 123px;
            height: 56px;
        }
        .auto-style37 {
        }
        .auto-style38 {
            height: 34px;
            width: 146px;
        }
        .auto-style39 {
            width: 146px;
            height: 23px;
        }
        .auto-style40 {
            height: 26px;
            width: 146px;
        }
        .auto-style41 {
            width: 146px;
            height: 56px;
        }
        .auto-style42 {
            width: 188px;
        }
        .auto-style43 {
            width: 188px;
            height: 23px;
        }
        .auto-style44 {
            height: 26px;
            width: 188px;
        }
        .auto-style45 {
            width: 188px;
            height: 56px;
        }
        .auto-style46 {
            height: 30px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style48 {
            width: 146px;
            height: 40px;
        }
        .auto-style49 {
            width: 128px;
            height: 40px;
        }
        .auto-style50 {
            width: 178px;
            height: 40px;
        }
        .auto-style51 {
            width: 123px;
            height: 40px;
        }
        .auto-style52 {
            width: 188px;
            height: 40px;
        }
        .auto-style53 {
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style46" colspan="7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="WORK PROFILE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Edit Fee</asp:LinkButton>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style42" rowspan="3">
                <h3 style="height: 19px">
                    &nbsp;</h3>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Edit Availability</asp:LinkButton>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Text="Work id"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label17" runat="server" Text="Workid" Visible="False"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style48"></td>
            <td class="auto-style49">
                <asp:Label ID="Label9" runat="server" Text="Provider id"></asp:Label>
            </td>
            <td class="auto-style50">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td class="auto-style51">
                <asp:Label ID="Label13" runat="server" Text="Available From" Visible="False"></asp:Label>
            </td>
            <td class="auto-style51">
                <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="35px"></asp:TextBox>
                <asp:DropDownList ID="DropDownList5" runat="server" Visible="False" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:Label ID="Label14" runat="server" Text="Available To" Visible="False"></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="36px"></asp:TextBox>
                <asp:DropDownList ID="DropDownList6" runat="server" Visible="False" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style43">
                &nbsp;</td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Work category"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="99px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="Label18" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Visible="False" Width="119px" />
            </td>
            <td class="auto-style42">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" Text="Availability From"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" Width="93px"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style31">
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style44">
            </td>
            <td class="auto-style3">
            </td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label8" runat="server" Text="Available To"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox3" runat="server" Width="90px"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style42">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
            <td class="auto-style8">
                <asp:Label ID="Label12" runat="server" Text="Remuneration"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server" Width="169px" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:Label ID="Label15" runat="server" Text="Remuneration" Visible="False"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style44">
                &nbsp;</td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" Width="100px" />
            </td>
            <td class="auto-style42">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41"></td>
            <td class="auto-style10"></td>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="103px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style32">
                &nbsp;</td>
            <td class="auto-style32">
                <asp:Label ID="Label16" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
            <td class="auto-style45">
                &nbsp;</td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label11" runat="server" ForeColor="#00CC00" Visible="False"></asp:Label>
                <asp:Label ID="Label19" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37" colspan="7">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

