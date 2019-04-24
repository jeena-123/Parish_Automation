<%@ Page Title="" Language="C#" MasterPageFile="~/Parish.Master" AutoEventWireup="true" CodeBehind="hallavailability.aspx.cs" Inherits="Parish_automation.hallavailability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="text-center" style="height: 46px">
            <br />
            <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl="~/Image/web-logo.gif" />
&nbsp;<span style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sehion Center Online Booking</span></td>
        <td style="height: 46px"></td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: medium">Check Availability</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" style="height: 37px">
            <asp:Label ID="Label1" runat="server" Text="Event Type" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            <br />
        </td>
        <td style="height: 37px"></td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="159px">
            </asp:DropDownList>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Label ID="Label2" runat="server" Text="Event Date" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="159px"></asp:TextBox>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Label ID="Label3" runat="server" Text="No Of Guest" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="159px"></asp:TextBox>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Label ID="Label4" runat="server" Text="Message" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="159px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button1" runat="server" Text="Check Availability" Width="99px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
