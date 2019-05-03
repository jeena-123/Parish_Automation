<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="MarriageRegistration.aspx.cs" Inherits="Parish_automation.AdminModule.MarriageRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 10px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            height: 35px;
        }
        .auto-style13 {
            height: 37px;
        }
        .auto-style14 {
            height: 36px;
        }
        .auto-style15 {
            height: 3px;
        }
        .auto-style16 {
            height: 33px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style19 {
            height: 7px;
        }
        .auto-style20 {
            height: 5px;
        }
        .auto-style21 {
            height: 6px;
        }
        .auto-style22 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style18" colspan="5">Marriage Register</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Family Id"></asp:Label>
                </td>
            <td class="auto-style17">
                    <asp:DropDownList ID="ddlist1" AutoPostBack="true" runat="server" Height="24px" Width="163px" 
                        DataTextField="family" DataValueField="family_id" OnSelectedIndexChanged="ddlist1_SelectedIndexChanged">
                       
                    </asp:DropDownList>
                </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                    <asp:Label ID="Label2" runat="server" Text="Name Of Parish"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="txtparishname" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td></td>
            <td><strong>BRIDEGROOM DETAILS</strong></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="auto-style11">
                    <asp:DropDownList ID="ddlist2name" runat="server" Height="24px" Width="163px" DataTextField="name"
                        DataValueField="member_id" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlist2name_SelectedIndexChanged">
                        <asp:ListItem>.....select.....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                </td>
            <td class="auto-style11">
                    <asp:TextBox ID="groomaddress" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Text="Father Name"></asp:Label>
                </td>
            <td class="auto-style12">
                    <asp:DropDownList ID="groomfathername" runat="server" Height="24px" Width="163px" DataTextField="name"
                        DataValueField="member_id"
                        OnSelectedIndexChanged="ddlist2name_SelectedIndexChanged">
                        <asp:ListItem>.....select.....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Text="Mother Name"></asp:Label>
                </td>
            <td class="auto-style12">
                    <asp:DropDownList ID="groommothername" runat="server" Height="24px" Width="163px" DataTextField="name"
                        DataValueField="member_id"
                        OnSelectedIndexChanged="ddlist2name_SelectedIndexChanged">
                        <asp:ListItem>.....select.....</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>
                </td>
            <td class="auto-style12">
                    <asp:TextBox ID="groomage" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="groomdob" runat="server"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13">
                    <asp:Label ID="Label10" runat="server" Text="Occupation"></asp:Label>
                </td>
            <td class="auto-style13">
                    <asp:TextBox ID="groomoccupation" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server" Text="Withness"></asp:Label>
                </td>
            <td class="auto-style13">
                    <asp:TextBox ID="txtwithness" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>BRIDE DETAILS</strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14">
                    <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="txtbridename" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style14">
                    <asp:Label ID="Label25" runat="server" Text="Address"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="brideaddress" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14">
                    <asp:Label ID="Label26" runat="server" Text="Father Name"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="bridefathername" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style14">
                    <asp:Label ID="Label27" runat="server" Text="Mother Name"></asp:Label>
                </td>
            <td class="auto-style14">
                    <asp:TextBox ID="bridemothername" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style16">
                    <asp:Label ID="Label28" runat="server" Text="Age"></asp:Label>
                </td>
            <td class="auto-style16">
                    <asp:TextBox ID="brideage" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style16">
                    <asp:Label ID="Label29" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
            <td class="auto-style16">
                    <asp:TextBox ID="bridedob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11">
                    <asp:Label ID="Label30" runat="server" Text="Occupation"></asp:Label>
                </td>
            <td class="auto-style11">
                    <asp:TextBox ID="brideoccupation" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style11">
                    <asp:Label ID="Label31" runat="server" Text="Withness"></asp:Label>
                </td>
            <td class="auto-style11">
                    <asp:TextBox ID="withness2" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>MARRIAGE DETAILS</strong></td>
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
            <td>
                    <asp:Label ID="Label20" runat="server" Text="Date Of Marriage"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="datemarriage" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            <td>
                    <asp:Label ID="Label22" runat="server" Text="NAME OF PRIEST"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="priestname" runat="server"></asp:TextBox>
                </td>
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
            <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="92px" />
                </td>
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
