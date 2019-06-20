<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Parish_automation.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 63px">&nbsp;</td>
        <td style="width: 442px">&nbsp;</td>
        <td style="width: 668px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 63px; height: 329px"></td>
        <td style="width: 442px; height: 329px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/download.jpg" Width="256px" />
        </td>
        <td style="width: 668px; height: 329px">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/chuechinside.jpg" Width="382px" />
        </td>
        <td style="height: 329px">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Image/church.jpg" />
        </td>
        <td style="height: 329px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 63px; height: 211px"></td>
        <td style="width: 442px; height: 211px">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/imag.jpg" />
        </td>
        <td style="width: 668px; height: 211px">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Image/images.jpg" />
        </td>
        <td style="height: 211px">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/Image/img.jpg" />
        </td>
        <td style="height: 211px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 63px">&nbsp;</td>
        <td style="width: 442px">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/img1.jpg" />
        </td>
        <td style="width: 668px">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/Image/img2.jpg" />
        </td>
        <td>
            <asp:Image ID="Image9" runat="server" ImageUrl="~/Image/parsh.jpg" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
