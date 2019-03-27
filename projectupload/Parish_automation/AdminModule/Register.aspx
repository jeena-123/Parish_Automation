<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Parish_automation.AdminModule.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 48px;
            color: #FFFFFF;
            text-align: center;
            background-color: #FFCC99;
        }
        .auto-style4 {
            background-color: #FFCC99;
        }
        .auto-style6 {
            width: 267px;
            color: #000000;
        }
        .auto-style13 {
        width: 11px;
        background-color: #FFFFFF;
    }
        .auto-style16 {
        height: 48px;
        text-align: center;
        font-weight: bold;
        font-size: xx-large;
        color: #000000;
        background-color: #FFFFFF;
    }
        .auto-style17 {
        width: 66px;
    }
        .auto-style20 {
        color: #000000;
        width: 132px;
        text-align: center;
    }
    .auto-style21 {
        width: 139px;
    }
    .auto-style22 {
        width: 11px;
        background-color: #FFFFFF;
        height: 26px;
    }
    .auto-style23 {
        color: #000000;
        width: 132px;
        height: 26px;
        text-align: center;
    }
    .auto-style25 {
        width: 139px;
        height: 26px;
    }
    .auto-style26 {
        width: 66px;
        height: 26px;
    }
    .auto-style27 {
        width: 139px;
        text-align: center;
    }
    .auto-style30 {
        width: 132px;
        text-align: center;
    }
    .auto-style31 {
        width: 50px;
    }
    .auto-style32 {
        width: 50px;
        height: 26px;
    }
    .auto-style33 {
        width: 50px;
        text-align: center;
    }
    </style>

   <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style16" colspan="5">Marriage register</td>
            </tr>
            <tr>
                <td class="auto-style13" >&nbsp;</td>
                <td class="auto-style30" >&nbsp;</td>
                <td class="auto-style31" >&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" Text="FAMILY ID"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlist1" runat="server" Height="34px" Width="161px">
                        <asp:ListItem>.....select.....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server" Text="NAME OF PARISH"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtparishname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
                <td class="auto-style32"></td>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20"><strong>BRIDEGROOM DETAILS</strong></td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server" Text="NAME"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtgroomname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label5" runat="server" Text="ADDRESS"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="groomaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="FATHER NAME"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="groomfathername" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label7" runat="server" Text="MOTHER NAME"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="groommothername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label8" runat="server" Text="AGE"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="groomage" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="groomdob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label10" runat="server" Text="OCCUPATION"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="groomoccupation" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label11" runat="server" Text="WITHNESS"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtwithness" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20"><strong>BRIDE DETAILS</strong></td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label12" runat="server" Text="NAME"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtbridename" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label25" runat="server" Text="ADDRESS"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="brideaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label26" runat="server" Text="FATHER NAME"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="bridefathername" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label27" runat="server" Text="MOTHER NAME"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="bridemothername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label28" runat="server" Text="AGE"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="brideage" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label29" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="bridedob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label30" runat="server" Text="OCCUPATION"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="brideoccupation" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label31" runat="server" Text="WITHNESS"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="withness2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20"><strong>MARRIAGE DETAILS</strong></td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label20" runat="server" Text="DATE OF MARRIAGE"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="datemarriage" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="Label22" runat="server" Text="NAME OF PRIEST"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="priestname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style33">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
        </table>
       </div>
        <div>
        </div>
    
</asp:Content>