<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="AssociationMemberRegister.aspx.cs" Inherits="Parish_automation.AdminModule.AssociationMemberRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 94px;
        }
        .auto-style10 {
            width: 100%;
            height: 398px;
        }
        .auto-style11 {
            width: 167px;
        }
        .auto-style12 {
            width: 181px;
        }
        .auto-style13 {
            width: 167px;
            height: 37px;
        }
        .auto-style14 {
            width: 181px;
            height: 37px;
        }
        .auto-style15 {
            height: 37px;
        }
        .auto-style16 {
            width: 167px;
            height: 40px;
        }
        .auto-style17 {
            width: 181px;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style19 {
            width: 167px;
            height: 43px;
        }
        .auto-style20 {
            width: 181px;
            height: 43px;
        }
        .auto-style21 {
            height: 43px;
        }
        .auto-style22 {
            width: 167px;
            height: 42px;
        }
        .auto-style23 {
            width: 181px;
            height: 42px;
        }
        .auto-style24 {
            height: 42px;
        }
        .auto-style25 {
            width: 167px;
            height: 36px;
        }
        .auto-style26 {
            width: 181px;
            height: 36px;
        }
        .auto-style27 {
            height: 36px;
        }
        .auto-style28 {
            width: 167px;
            height: 39px;
        }
        .auto-style29 {
            width: 181px;
            height: 39px;
        }
        .auto-style30 {
            height: 39px;
        }
        .auto-style31 {
            width: 167px;
            height: 31px;
        }
        .auto-style32 {
            width: 181px;
            height: 31px;
        }
        .auto-style33 {
            height: 31px;
        }
        .auto-style34 {
            width: 181px;
            text-align: right;
        }
        .auto-style35 {
            text-align: center;
            height: 42px;
        }
        .auto-style36 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>
                <div class="auto-style35">
                    <span class="auto-style36">Association Member Registration</span><br />
                    <br />
                <br />
                </div>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" Text="Family Id"></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:DropDownList ID="ddlfamilyid" runat="server" DataValueField="family_id" DataTextField="family_id" AutoPostBack="true" OnSelectedIndexChanged="ddlfamilyid_SelectedIndexChanged">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="ddlfamilyembername" runat="server" DataValueField="member_id" DataTextField="name" AutoPostBack="true"  OnSelectedIndexChanged="ddlfamilyembername_SelectedIndexChanged">
                                <asp:ListItem>.......Select.......</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style17">
                            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style20">
                            <asp:Label ID="Label4" runat="server" Text="Mob No"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style23">
                            <asp:Label ID="Label5" runat="server" Text="Association Name"></asp:Label>
                        </td>
                        <td class="auto-style24">
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
                        <td class="auto-style26">
                            <asp:Label ID="Label6" runat="server" Text="Position"></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <asp:DropDownList ID="ddlposition" runat="server">
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
                        <td class="auto-style29">
                            <asp:Label ID="Label7" runat="server" Text="Year From"></asp:Label>
                        </td>
                        <td class="auto-style30">
                            <asp:TextBox ID="txtyearfrom" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31"></td>
                        <td class="auto-style32">
                            <asp:Label ID="Label8" runat="server" Text="Year To"></asp:Label>
                        </td>
                        <td class="auto-style33">
                            <asp:TextBox ID="txtyearto" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style34">
                            <asp:Button ID="save" runat="server" Text="Save" Width="99px" OnClick="save_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
