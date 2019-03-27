<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="BaptisamRegister.aspx.cs" Inherits="Parish_automation.AdminModule.BaptisamRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 48px;
           
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
            height: 49px;
           
        }
        .auto-style16 {
            color: #000000;
            width: 267px;
            height: 49px;
          
        text-align: center;
    }
        .auto-style17 {
            height: 49px;
           
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            text-align: center;
            color: #000000;
            width: 267px;
          
        }
        .auto-style20 {
            height: 23px;
           
        }
        .auto-style21 {
            height: 48px;
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
            color: #000000;
          
        }
    </style>

   
        <table class="auto-style1">
            <tr>
                <td class="auto-style21" colspan="5">Baptisam register</td>
            </tr>
            <tr>
                <td class="auto-style20" ></td>
                <td class="auto-style20" ></td>
                <td class="auto-style18" ></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label14" runat="server" Text="FAMILY_ID" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="ddlist" runat="server" DataTextField="family_id" DataValueField="family_id">
                        <asp:ListItem>....select....</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label2" runat="server" Text="NAME 0F PERSON BAPTISED" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtbaptisedname" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label15" runat="server" Text="BAPTISAM NAME" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbaptisamname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="GENDER" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="CHILD_FATHER_NAME" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfathername" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="CHILD_MOTHER_NAME" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmothername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label6" runat="server" Text="ADDRESS" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddresss" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="WARD" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtward" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label10" runat="server" Text="VILLAGE" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvillage" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="DISTRICT" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    DATE_OF_BAPTISAM</td>
                <td>
                    <asp:TextBox ID="txtbaptisamdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="NAME_OF_PARISH" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtparishname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label13" runat="server" Text="VICER" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvicer" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click1" Height="45px" Width="154px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <div>
        </div>
   

</asp:Content>
