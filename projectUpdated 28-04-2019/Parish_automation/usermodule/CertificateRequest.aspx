﻿<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="CertificateRequest.aspx.cs" Inherits="Parish_automation.usermodule.CertificateRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 241px;
        }
        .auto-style12 {
            width: 241px;
            text-align: center;
        }
        .auto-style13 {
            width: 264px;
        }
        .auto-style14 {
            width: 192px;
        }
        .auto-style15 {
            text-align: center;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style15" colspan="2">Certificate&nbsp; Request</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="Family Id"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddlfamilyid" runat="server" DataValueField="family_id" DataTextField="family_id" AutoPostBack="true" OnSelectedIndexChanged="ddlfamilyid_SelectedIndexChanged">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlname" runat="server" DataValueField="member_id" DataTextField="name" AutoPostBack="true" OnSelectedIndexChanged="ddlname_SelectedIndexChanged">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="address" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label8" runat="server" Text="Mob No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="mob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="date" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label5" runat="server" Text="Certificate Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcertificate" runat="server">
                    <asp:ListItem>....Select......</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Baptisam</asp:ListItem>
                    <asp:ListItem>Death</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Purpose"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtpurpose" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" Text="Certificate Request" OnClick="Button1_Click" />
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
