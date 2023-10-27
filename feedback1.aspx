<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customerhomepage.master" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="feedback1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Feedback"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="Label2" runat="server" Text="Feedback Id"></asp:Label>
                            </td>
        <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="Label4" runat="server" Text="Customer Id"></asp:Label>
                            </td>
        <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="Label6" runat="server" Text="Provider Id"></asp:Label>
                            </td>
        <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Pls select id" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="Label8" runat="server" Text="Provider Name"></asp:Label>
                            </td>
        <td>
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="Label7" runat="server" Text="Feedback"></asp:Label>
                            </td>
        <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="142px" TextMode="MultiLine" Width="299px"></asp:TextBox>
                            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pls enter a feedback" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Submit Now" Width="165px" />
                            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                                <asp:Label ID="Label10" runat="server" ForeColor="#66FF33"></asp:Label>
                            </td>
    </tr>
</table>
</asp:Content>

