<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeFile="DeathRegister1.aspx.cs" Inherits="Parish_automation.AdminModule.DeathRegister1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
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
            width: 137px;
        }
        .auto-style15 {
            width: 137px;
            height: 46px;
        }
        .auto-style16 {
        color: #000000;
        width: 267px;
        height: 46px;
        text-align: center;
    }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            height: 46px;
            width: 316px;
        }
        .auto-style35 {
            width: 137px;
            height: 12px;
        }
        .auto-style36 {
            color: #000000;
            width: 267px;
            height: 12px;
        text-align: center;
    }
        .auto-style37 {
            height: 12px;
            width: 316px;
        }
        .auto-style38 {
            width: 100%;
            height: 624px;
        }
        .auto-style39 {
            width: 137px;
            height: 43px;
        }
        .auto-style40 {
            color: #000000;
            width: 267px;
            height: 43px;
        text-align: center;
    }
        .auto-style41 {
            height: 43px;
            width: 316px;
        }
        .auto-style42 {
            width: 137px;
            height: 39px;
        }
        .auto-style43 {
            color: #000000;
            width: 267px;
            height: 39px;
        text-align: center;
    }
        .auto-style44 {
            height: 39px;
            width: 316px;
        }
        .auto-style45 {
            width: 137px;
            height: 40px;
        }
        .auto-style46 {
            color: #000000;
            width: 267px;
            height: 40px;
        }
        .auto-style47 {
            height: 40px;
            width: 316px;
        }
        .auto-style48 {
            width: 137px;
            height: 41px;
        }
        .auto-style49 {
        color: #000000;
        width: 267px;
        height: 41px;
        text-align: center;
    }
        .auto-style50 {
            height: 41px;
            width: 316px;
        }
        .auto-style51 {
            width: 137px;
            height: 45px;
        }
        .auto-style52 {
            color: #000000;
            width: 267px;
            height: 45px;
            text-align: right;
        }
        .auto-style53 {
            height: 45px;
            width: 316px;
        }
        .auto-style54 {
            height: 23px;
            width: 316px;
        }
        .auto-style55 {
            width: 316px;
        }
    .auto-style56 {
        color: #000000;
        width: 267px;
        height: 40px;
        text-align: center;
    }
    .auto-style57 {
        height: 48px;
        text-align: center;
        font-weight: bold;
        font-size: xx-large;
        color: #FFFFFF;
        background-color: #FF33CC;
    }
    </style>

   <div>
        <table class="auto-style38">
            <tr>
                <td class="auto-style57" colspan="3">Death register</td>
            </tr>
            <tr>
                <td class="auto-style18" ></td>
                <td class="auto-style18" >&nbsp;</td>
                <td class="auto-style54" ></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label9" runat="server" Text="Family Id"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>......select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtmembname" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style40">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:TextBox ID="txtmembaddress" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style44">
                    <asp:TextBox ID="txtmembage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style56">
                    <asp:Label ID="Label5" runat="server" Text="Date Of Death"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:TextBox ID="txtdod" runat="server"  TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style49">
                    <asp:Label ID="Label6" runat="server" Text="Date Of Funeral"></asp:Label>
                </td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtdof" runat="server"  TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style49">
                    <asp:Label ID="Label7" runat="server" Text="Priest"></asp:Label>
                </td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtpriest" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style36">
                    <asp:Label ID="Label8" runat="server" Text="Death Reason"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtdeathreason" runat="server"  TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    </td>
                <td class="auto-style47">
                </td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="117px" />
                </td>
                <td class="auto-style53">
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            </table>
       </div>
        <div>
        </div>
    
</asp:Content>
