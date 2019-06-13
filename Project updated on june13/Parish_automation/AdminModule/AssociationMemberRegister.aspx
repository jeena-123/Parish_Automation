<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="AssociationMemberRegister.aspx.cs" Inherits="Parish_automation.AdminModule.AssociationMemberRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 88%;
            height: 591px;
        }
        .auto-style10 {
            width: 100%;
            height: 398px;
        }
        .auto-style11 {
            width: 166px;
        }
        .auto-style13 {
            width: 166px;
            height: 37px;
        }
        .auto-style16 {
            width: 166px;
            height: 40px;
        }
        .auto-style19 {
            width: 166px;
            height: 43px;
        }
        .auto-style22 {
            width: 166px;
            height: 42px;
        }
        .auto-style25 {
            width: 166px;
            height: 36px;
        }
        .auto-style28 {
            width: 166px;
            height: 39px;
        }
        .auto-style31 {
            width: 166px;
            height: 31px;
        }
        .auto-style35 {
            text-align: justify;
            height: 42px;
        }
        .auto-style36 {
            font-size: x-large;
            font-family: Algerian;
            font-weight: bold;
            color: #808080;
        }
        .auto-style37 {
            width: 232px;
        }
        .auto-style38 {
            height: 37px;
            text-align: justify;
        }
        .auto-style40 {
            height: 43px;
        }
        .auto-style41 {
            height: 42px;
        }
        .auto-style42 {
            height: 36px;
        }
        .auto-style43 {
            height: 39px;
        }
        .auto-style44 {
            height: 31px;
        }
        .auto-style45 {
            width: 114px;
        }
        .auto-style46 {
            height: 40px;
        }
        .auto-style47 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>
                <div class="auto-style35">
                    <span class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Association Member Registration</span><br />
                    <br />
                <br />
                </div>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style38" colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="Family Id"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlfamilyid" runat="server" DataValueField="family_id" DataTextField="family_id" AutoPostBack="true" OnSelectedIndexChanged="ddlfamilyid_SelectedIndexChanged" Height="19px" Width="162px">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style46" colspan="2">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlfamilyembername" runat="server" DataValueField="member_id" DataTextField="name" AutoPostBack="true"  OnSelectedIndexChanged="ddlfamilyembername_SelectedIndexChanged" Height="18px" Width="162px">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style46" colspan="2">
                            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style40" colspan="2">
                            <asp:Label ID="Label4" runat="server" Text="Mob No"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style41" colspan="2">
                            <asp:Label ID="Label5" runat="server" Text="Association Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlassociation" runat="server" Height="16px" Width="163px">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                                <asp:ListItem>Church Committiee</asp:ListItem>
                                <asp:ListItem>Youth League</asp:ListItem>
                                <asp:ListItem>Prarthana Yogam</asp:ListItem>
                                <asp:ListItem>Sunday School</asp:ListItem>
                                <asp:ListItem>MarthaMariyam Vanitha Samagam</asp:ListItem>
                                <asp:ListItem>DivyaBhodhanam</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25"></td>
                        <td class="auto-style42" colspan="2">
                            <asp:Label ID="Label6" runat="server" Text="Position"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlposition" runat="server" Height="24px" Width="162px">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                                <asp:ListItem>Trustiee</asp:ListItem>
                                <asp:ListItem>Secretary</asp:ListItem>
                                <asp:ListItem>Committiee Members</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28"></td>
                        <td class="auto-style43" colspan="2">
                            <asp:Label ID="Label7" runat="server" Text="Year From"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtyearfrom" runat="server" TextMode="Date" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31"></td>
                        <td class="auto-style44" colspan="2">
                            <asp:Label ID="Label8" runat="server" Text="Year To"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtyearto" runat="server" TextMode="Date" Width="157px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="save" runat="server" Text="Save" Width="99px" OnClick="save_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style37">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
