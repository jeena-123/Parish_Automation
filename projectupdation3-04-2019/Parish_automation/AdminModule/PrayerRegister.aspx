<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="PrayerRegister.aspx.cs" Inherits="Parish_automation.AdminModule.PrayerRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 45px;
        }
        .auto-style10 {
            width: 100%;
            height: 544px;
        }
        .auto-style11 {
            width: 157px;
        }
        .auto-style13 {
            width: 157px;
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
            width: 192px;
        }
        .auto-style20 {
            height: 35px;
            text-align: left;
            width: 192px;
        }
    .auto-style22 {
        text-align: center;
            font-size: medium;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            width: 157px;
            height: 27px;
        }
        .auto-style25 {
            height: 27px;
            text-align: left;
            width: 192px;
        }
        .auto-style26 {
            height: 27px;
            text-align: left;
        }
        .auto-style27 {
            width: 157px;
            height: 19px;
        }
        .auto-style28 {
            height: 19px;
            text-align: left;
            width: 192px;
        }
        .auto-style29 {
            height: 19px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style22">PRAYER&nbsp; REGISTER</td>
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
                <asp:DropDownList ID="ddlprayergrp" runat="server" DataTextField="prayername" DataValueField="prayername" OnSelectedIndexChanged="ddlprayergrp_SelectedIndexChanged" Width="114px">
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
                <asp:DropDownList ID="ddlfamilyid" runat="server" OnSelectedIndexChanged="ddlfamilyid_SelectedIndexChanged" Height="25px" Width="114px">
                    <asp:ListItem>......select.....</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style25">
                <asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="txtname" runat="server" Width="168px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28">
                <asp:Label ID="Label4" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="txtaddress" runat="server" OnTextChanged="TextBox2_TextChanged" Width="168px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style20">
                <asp:Label ID="Label5" runat="server" Text="PRAYER TYPE"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:DropDownList ID="ddlprayertype" runat="server" Height="25px" Width="114px">
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
                <asp:DropDownList ID="ddlprayertime" runat="server" Height="25px" Width="114px" OnSelectedIndexChanged="ddlprayertime_SelectedIndexChanged">
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
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Width="168px" Height="25px"></asp:TextBox>
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
            <td class="auto-style23" colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="131px" />
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
