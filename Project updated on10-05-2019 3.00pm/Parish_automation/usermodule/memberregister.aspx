﻿<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="memberregister.aspx.cs" Inherits="Parish_automation.usermodule.memberregister1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 100%;
        height: 753px;
    }
    .auto-style9 {
        height: 50px;
    }
        .auto-style10 {
            color: #008080;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10" colspan="2">MEMBER&nbsp; REGISTRATION</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label1" runat="server" Text="Member Id" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="memberid" runat="server" Font-Size="Small" Height="16px" Width="155px"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label15" runat="server" Text="Family Id" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:Label ID="familyid" runat="server" Font-Size="Medium"></asp:Label>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label5" runat="server" Text="Relation With Family Head" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:DropDownList ID="ddlrelation" runat="server" Width="163px">
                            <asp:ListItem>....Select....</asp:ListItem>
                            <asp:ListItem>Family Head</asp:ListItem>
                            <asp:ListItem>Wife</asp:ListItem>
                            <asp:ListItem>Daughter</asp:ListItem>
                            <asp:ListItem>Son</asp:ListItem>
                            <asp:ListItem>Grand Daughter</asp:ListItem>
                            <asp:ListItem>Grand Son</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label3" runat="server" Text="Date Of Birth" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtmemdob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label6" runat="server" Text="Gender" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:CheckBoxList ID="chkgender" runat="server" Font-Size="Medium">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label7" runat="server" Text="Mob No" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtmobno" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label8" runat="server" Text="Date Of Baptisam" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtbaptisamdate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label9" runat="server" Text="Email Id" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label10" runat="server" Text="Blood Group" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:DropDownList ID="ddlbloodgrp" runat="server" Width="163px">
                            <asp:ListItem>....Select....</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        &nbsp;</td>
        <td>
                        &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label13" runat="server" Text="Marital Status" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:DropDownList ID="ddlmaritalstatus" runat="server" Width="143px">
                            <asp:ListItem>....Select....</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>UnMarried</asp:ListItem>
                            <asp:ListItem>Divorsed</asp:ListItem>
                        </asp:DropDownList>
                    </td>
        <td>
                        <asp:Label ID="Label14" runat="server" Text="Marriage Date" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtmarriagedate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                        <asp:Label ID="Label12" runat="server" Text="Qualification" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtqualification" runat="server"></asp:TextBox>
                    </td>
        <td>
                        <asp:Label ID="Label4" runat="server" Text="Occupation" Font-Size="Medium"></asp:Label>
                    </td>
        <td>
                        <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
                        <asp:Button ID="Button3" runat="server" Text="Save" Width="96px" OnClick="Button3_Click" />
                    </td>
        <td>
                        <asp:Button ID="Button4" runat="server" Text="Add Member" OnClick="Button4_Click" />
                    </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
