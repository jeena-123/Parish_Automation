<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="DeathRegistration.aspx.cs" Inherits="Parish_automation.AdminModule.DeathRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 33px;
        }
        .auto-style12 {
            width: 117px;
        }
        .auto-style13 {
            height: 233px;
        }
        .auto-style16 {
            height: 53px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style17 {
            width: 251px;
        }
        .auto-style18 {
            width: 117px;
            height: 38px;
        }
        .auto-style19 {
            width: 251px;
            height: 38px;
        }
        .auto-style20 {
            width: 33px;
            height: 38px;
        }
        .auto-style21 {
            width: 117px;
            height: 36px;
        }
        .auto-style22 {
            width: 251px;
            height: 36px;
        }
        .auto-style23 {
            width: 33px;
            height: 36px;
        }
        .auto-style24 {
            width: 117px;
            height: 39px;
        }
        .auto-style25 {
            width: 251px;
            height: 39px;
        }
        .auto-style26 {
            width: 33px;
            height: 39px;
        }
        .auto-style27 {
            width: 117px;
            height: 37px;
        }
        .auto-style28 {
            width: 251px;
            height: 37px;
        }
        .auto-style29 {
            width: 33px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style16" colspan="4">Death Registration</td>
            <td rowspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                    <asp:Label ID="Label9" runat="server" Text="Family Id"></asp:Label>
                </td>
            <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataValueField="familyid" DataTextField="familyid" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>......select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="auto-style20">
                    <asp:DropDownList ID="ddlnamedeath" runat="server" DataValueField="member_id" DataTextField="name" AutoPostBack="true" OnSelectedIndexChanged="ddlnamedeath_SelectedIndexChanged">
                         <asp:ListItem>......select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
            <td class="auto-style20">
                    <asp:TextBox ID="txtmembaddress" runat="server" ></asp:TextBox>
                </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
            <td class="auto-style23">
                    <asp:TextBox ID="txtmembage" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Date Of Death"></asp:Label>
                </td>
            <td class="auto-style20">
                    <asp:TextBox ID="txtdod" runat="server"  TextMode="Date"></asp:TextBox>
                </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style25">
                    <asp:Label ID="Label6" runat="server" Text="Date Of Funeral"></asp:Label>
                </td>
            <td class="auto-style26">
                    <asp:TextBox ID="txtdof" runat="server"  TextMode="Date"></asp:TextBox>
                </td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28">
                    <asp:Label ID="Label7" runat="server" Text="Priest"></asp:Label>
                </td>
            <td class="auto-style29">
                    <asp:TextBox ID="txtpriest" runat="server" ></asp:TextBox>
                </td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">
                    <asp:Label ID="Label8" runat="server" Text="Death Reason"></asp:Label>
                </td>
            <td class="auto-style11">
                    <asp:TextBox ID="txtdeathreason" runat="server"  TextMode="MultiLine"></asp:TextBox>
                </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="117px" />
                </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4"></td>
        </tr>
    </table>
</asp:Content>
