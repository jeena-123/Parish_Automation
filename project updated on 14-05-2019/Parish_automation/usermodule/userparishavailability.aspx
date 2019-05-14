<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="userparishavailability.aspx.cs" Inherits="Parish_automation.userparishavailability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-family: Algerian;
            color: #800000;
        }
        .auto-style10 {
            font-family: Algerian;
            color: #808000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="nav-justified">
    <tr>
        <td class="text-center" style="height: 46px" colspan="3">
            <br />
&nbsp;<span style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-weight: bold; font-size: large" class="auto-style9"> Sehion Center Online Booking</span></td>
    </tr>
    <tr>
        <td class="text-center" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-left" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: medium" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">Check Availability</span></td>
    </tr>
    <tr>
        <td class="text-center" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-left" style="height: 37px" colspan="3">
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Event Type" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddleventtype" runat="server" Height="32px" Width="159px">
                <asp:ListItem>.....Select.....</asp:ListItem>
                <asp:ListItem>Marriage</asp:ListItem>
                <asp:ListItem>Baptisam</asp:ListItem>
                <asp:ListItem>Reception</asp:ListItem>
                <asp:ListItem>other functions</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Event Date" style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: small"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="eventdate" runat="server" Height="24px" Width="159px" TextMode="Date"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parish Hall&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlhalltype" runat="server" Height="32px" Width="159px">
                <asp:ListItem>.....Select.....</asp:ListItem>
                <asp:ListItem>Sehion Center</asp:ListItem>
                <asp:ListItem>Sehion Parish</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Check Availability" Width="129px" OnClick="Button1_Click" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" style="width: 211px">
            <br />
            <br />
        </td>
        <td class="text-center" style="width: 545px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-left" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image7" runat="server" Height="362px" ImageUrl="~/Image/audi3.jpg" Width="985px" />
            <br />
            Sehion Center<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-left" colspan="3">
            &nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image8" runat="server" Height="282px" ImageUrl="~/Image/audi2.jpg" Width="381px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image9" runat="server" Height="275px" ImageUrl="~/Image/audi1.jpg" Width="444px" />
            <br />
            Sehion Parish</td>
    </tr>
    <tr>
        <td class="text-left" style="width: 211px">
            &nbsp;</td>
        <td class="text-left" style="width: 545px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" style="width: 211px">
            <br />
            <br />
        </td>
        <td class="text-center" style="width: 545px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
