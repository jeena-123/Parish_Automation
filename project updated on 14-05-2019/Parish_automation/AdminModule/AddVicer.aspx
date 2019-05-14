<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="AddVicer.aspx.cs" Inherits="Parish_automation.AdminModule.AddVicer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 632px;
        }
        .auto-style10 {
            width: 211px;
        }
        .auto-style11 {
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style12 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11">ADD VICER</span></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" Text="Mobno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Year From"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="yearfrom" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Text="Year To"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="yearto" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
