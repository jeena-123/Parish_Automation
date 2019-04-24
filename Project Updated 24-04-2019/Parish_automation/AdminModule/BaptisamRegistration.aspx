<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="BaptisamRegistration.aspx.cs" Inherits="Parish_automation.AdminModule.BaptisamRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 668px;
        }
        .auto-style10 {
            width: 27px;
        }
        .auto-style12 {
            width: 290px;
        }
        .auto-style13 {
            width: 27px;
            height: 36px;
        }
        .auto-style15 {
            height: 36px;
        }
        .auto-style16 {
            width: 290px;
            height: 36px;
        }
        .auto-style17 {
            width: 27px;
            height: 4px;
        }
        .auto-style19 {
            height: 4px;
        }
        .auto-style20 {
            width: 290px;
            height: 4px;
        }
        .auto-style21 {
            width: 27px;
            height: 31px;
        }
        .auto-style23 {
            height: 31px;
        }
        .auto-style24 {
            width: 290px;
            height: 31px;
        }
        .auto-style25 {
            height: 70px;
            text-align: center;
            font-size: large;
        }
        .auto-style26 {
            width: 27px;
            height: 23px;
        }
        .auto-style28 {
            height: 23px;
        }
        .auto-style29 {
            width: 290px;
            height: 23px;
        }
        .auto-style30 {
            width: 203px;
            height: 4px;
        }
        .auto-style31 {
            width: 203px;
            height: 31px;
        }
        .auto-style32 {
            width: 203px;
            height: 36px;
        }
        .auto-style33 {
            width: 203px;
            height: 23px;
        }
        .auto-style34 {
            width: 203px;
        }
        .auto-style35 {
            width: 262px;
            height: 4px;
        }
        .auto-style36 {
            width: 262px;
            height: 31px;
        }
        .auto-style37 {
            width: 262px;
            height: 36px;
        }
        .auto-style38 {
            width: 262px;
            height: 23px;
        }
        .auto-style39 {
            width: 262px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style25" colspan="5">Baptisam Registeration</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style35"></td>
            <td class="auto-style30"></td>
            <td class="auto-style20"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style36">
                    <asp:Label ID="Label14" runat="server" Text="Family Id" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style31">
                    <asp:DropDownList ID="ddlist" runat="server" DataTextField="family_id" DataValueField="family_id" AutoPostBack="true" OnSelectedIndexChanged="ddlist_SelectedIndexChanged">
                        
                    </asp:DropDownList>
                </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style37">
                    <asp:Label ID="Label2" runat="server" Text="Name of Person Baptised" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style32">
                    <asp:TextBox ID="txtbaptisedname" runat="server" ></asp:TextBox>
                </td>
            <td class="auto-style16">
                    <asp:Label ID="Label15" runat="server" Text="Baptisam Name" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style15">
                    <asp:TextBox ID="txtbaptisamname" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style38">
                    <asp:Label ID="Label3" runat="server" Text="Gender" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style33">
                <asp:RadioButtonList ID="rdbtn" runat="server" Height="19px" Width="144px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style29">
                    <asp:Label ID="Label5" runat="server" Text="Child Father Name" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style28">
                    <asp:DropDownList ID="ddlfather" runat="server" DataTextField="name" DataValueField="name" AutoPostBack="true" OnSelectedIndexChanged="ddlfather_SelectedIndexChanged">
                    <asp:ListItem>....select....</asp:ListItem>
                  
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">
                    <asp:Label ID="Label16" runat="server" Text="Child Mother Name" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style34">
                    <asp:DropDownList ID="ddlmother" runat="server" DataTextField="name" DataValueField="name" AutoPostBack="true" >
                    <asp:ListItem>....select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Text="Address" ForeColor="Black"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="txtaddresss" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">
                    <asp:Label ID="Label9" runat="server" Text="Ward" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style34">
                    <asp:TextBox ID="txtward" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Text="Village" ForeColor="Black"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="txtvillage" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">
                    <asp:Label ID="Label12" runat="server" Text="District" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style34">
                    <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label17" runat="server" Text="Date Of Baptisam" ForeColor="Black"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="txtbaptisamdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">
                    <asp:Label ID="Label8" runat="server" Text="Name Of Parish" ForeColor="Black"></asp:Label>
                </td>
            <td class="auto-style34">
                    <asp:TextBox ID="txtparishname" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style12">
                    <asp:Label ID="Label13" runat="server" Text="Vicer" ForeColor="Black"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="txtvicer" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style34">
                    <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click1" Height="45px" Width="154px" />
                </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
