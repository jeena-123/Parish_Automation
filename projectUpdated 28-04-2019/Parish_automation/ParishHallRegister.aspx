<%@ Page Title="" Language="C#" MasterPageFile="~/Parish.Master" AutoEventWireup="true" CodeBehind="ParishHallRegister.aspx.cs" Inherits="Parish_automation.ParishHallRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 681px">
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large;" colspan="2"><b>Sehion Center Online Booking</b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label3" runat="server" Text="Mob"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label9" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label8" runat="server" Text="Auditoriam name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlaudiname" runat="server">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Sehion Center</asp:ListItem>
                    <asp:ListItem>Sehion parish</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label4" runat="server" Text="Event Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddleventtype" runat="server">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Baptisam</asp:ListItem>
                    <asp:ListItem>Engagement</asp:ListItem>
                    <asp:ListItem>other functions</asp:ListItem>
                    <asp:ListItem>Receptions</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label5" runat="server" Text="Event Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label6" runat="server" Text="No Of Days "></asp:Label>
            </td>
            <td>
                &nbsp;<asp:DropDownList ID="ddlnoofdays" runat="server">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Full Day</asp:ListItem>
                    <asp:ListItem>Forenoon</asp:ListItem>
                    <asp:ListItem>Afternoon</asp:ListItem>
                    <asp:ListItem>more than 1 day</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label7" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Register Booking" Width="144px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Confirm Booking" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
