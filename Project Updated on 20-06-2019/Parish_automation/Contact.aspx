<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Parish_automation.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; width: 342px"></td>
        <td style="width: 1016px; height: 20px; font-family: 'Baskerville Old Face'; font-size: large"><b>Contact Us</b></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">Name<br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">
            <asp:TextBox ID="TextBox1" runat="server" Width="265px"></asp:TextBox>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">Email<br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">
            <asp:TextBox ID="TextBox2" runat="server" Width="261px"></asp:TextBox>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">Contact<br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">
            <asp:TextBox ID="TextBox3" runat="server" Width="260px"></asp:TextBox>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">Message<br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">
            <asp:TextBox ID="TextBox4" runat="server" Height="140px" TextMode="MultiLine" Width="261px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Send Message" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 342px">&nbsp;</td>
        <td style="width: 1016px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
