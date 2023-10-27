<%@ Page Title="" Language="C#" MasterPageFile="~/provider/providerhomepage.master" AutoEventWireup="true" CodeFile="sellUSEDproduct.aspx.cs" Inherits="admin_sellUSEDproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            width: 220px;
        }
        .auto-style4 {
            width: 270px;
            height: 369px;
        }
        .auto-style5 {
            height: 369px;
        }
        .auto-style7 {
            width: 457px;
        }
        .auto-style8 {
            width: 5px;
        }
        .auto-style9 {
            width: 270px;
            height: 515px;
        }
        .auto-style10 {
            height: 515px;
        }
        .auto-style11 {
            width: 220px;
            height: 45px;
        }
        .auto-style12 {
            height: 45px;
        }
        .auto-style13 {
            width: 147px;
            height: 501px;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            height: 501px;
        }
        .auto-style15 {
            width: 220px;
            height: 91px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Sell UsedProducts"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label29" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="133px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Used Product Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Provider Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Provider Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Panel ID="Panel1" runat="server" Height="512px" Visible="False" Width="589px">
                    <table class="auto-style1" style="height: 417px">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label9" runat="server" Text="Book category"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="164px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Pls select book category" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label10" runat="server" Text="Name of book"></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox1" runat="server" Width="277px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter book name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label11" runat="server" Text="Author"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="276px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label12" runat="server" Text="Upload Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="145px" />
                                <asp:Image ID="Image1" runat="server" Height="156px" Width="185px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="pls upload image" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="Label13" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td rowspan="2">
                                <asp:TextBox ID="TextBox3" runat="server" Height="148px" Width="315px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="pls enter description" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label21" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Height="16px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="pls enter price" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="224px" OnClick="Button1_Click" Visible="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label28" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Panel ID="Panel2" runat="server" Height="472px" Visible="False" Width="585px">
                    <table class="auto-style1" style="height: 497px; width: 102%">
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Type/Category"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="125px" style="margin-left: 0px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Pls select type" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Company"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox13" runat="server" Width="254px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox13" ErrorMessage="Pls enter company" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox4" runat="server" Width="258px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="Pls select model" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Date Of Purchase"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Width="257px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="pls enter date of puechase" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox6" runat="server" Height="122px" TextMode="MultiLine" Width="383px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox6" ErrorMessage="Pls enter description" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="Photo"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:Image ID="Image2" runat="server" Height="137px" Width="208px" />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Pls upload photo" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label20" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox7" ErrorMessage="Pls enter price" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Submit" Visible="False" Width="223px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label30" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Panel ID="Panel3" runat="server" Height="490px" Wrap="False" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text="Category"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Pls select category" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="Material"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList6" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList6" ErrorMessage="Pls select material" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label24" runat="server" Text="Date of Purchase"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox9" ErrorMessage="Pls enter date of purchase" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" Height="96px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox10" ErrorMessage="Pls enter description" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="148px" Width="169px" />
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="FileUpload3" ErrorMessage="Pls upload photo" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox12" ErrorMessage="Pls enter price" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: center">
                                <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Submit" Width="247px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: center">
                                <asp:Label ID="Label31" runat="server" ForeColor="Lime"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

