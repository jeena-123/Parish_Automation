<%@ Page Title="" Language="C#" MasterPageFile="~/Parish.Master" AutoEventWireup="true" CodeBehind="ParishHallRegister.aspx.cs" Inherits="Parish_automation.ParishHallRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 681px">
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large;" colspan="2"><b>Sehion Center Online Booking</b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label3" runat="server" Text="Mob"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label4" runat="server" Text="Event Type"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label5" runat="server" Text="Event Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">
                <asp:Label ID="Label6" runat="server" Text="No Of Days "></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Register Booking" Width="144px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
