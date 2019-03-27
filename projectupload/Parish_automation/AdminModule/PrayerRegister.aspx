<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="PrayerRegister.aspx.cs" Inherits="Parish_automation.AdminModule.PrayerRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 100%;
            height: 544px;
        }
        .auto-style11 {
            width: 59px;
        }
        .auto-style13 {
            width: 59px;
            height: 35px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            height: 35px;
            text-align: left;
        }
        .auto-style19 {
            text-align: left;
            width: 233px;
        }
        .auto-style20 {
            height: 35px;
            text-align: left;
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>PRAYER&nbsp; REGISTER</td>
        </tr>
    </table>
    <br />
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label1" runat="server" Text="PRAYER GROUP"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddlprayergrp" runat="server" DataTextField="prayername" DataValueField="prayername" OnSelectedIndexChanged="ddlprayergrp_SelectedIndexChanged">
                    <asp:ListItem>.....Select......</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label2" runat="server" Text="FAMILY ID"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddlfamilyid" runat="server" OnSelectedIndexChanged="ddlfamilyid_SelectedIndexChanged">
                    <asp:ListItem>......select.....</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label4" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtaddress" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label5" runat="server" Text="PRAYER TYPE"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddlprayertype" runat="server">
                    <asp:ListItem>.....select.....</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style20">
                <asp:Label ID="Label6" runat="server" Text="PRAYER TIME"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:DropDownList ID="ddlprayertime" runat="server">
                    <asp:ListItem>.....select......</asp:ListItem>
                    <asp:ListItem>2 PM</asp:ListItem>
                    <asp:ListItem>2.30 PM</asp:ListItem>
                    <asp:ListItem>3 PM</asp:ListItem>
                    <asp:ListItem>3.30 PM</asp:ListItem>
                    <asp:ListItem>4 PM</asp:ListItem>
                    <asp:ListItem>5 PM</asp:ListItem>
                    <asp:ListItem>6 PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label7" runat="server" Text="PRAYER DATE"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
