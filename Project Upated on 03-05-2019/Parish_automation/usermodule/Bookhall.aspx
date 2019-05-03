<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="Bookhall.aspx.cs" Inherits="Parish_automation.Bookhall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 263px;
        }
        .auto-style10 {
            width: 110px;
        }
        .auto-style11 {
            width: 218px;
        }
        .auto-style12 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" style="height: 681px">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td></td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large;" colspan="2"><b>Sehion Center Online Booking</b></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large;" colspan="2">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Family Id" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 128px">
                <asp:Label ID="familyid" runat="server"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Address" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 128px">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" Text="Mob"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Email Id" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 128px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Text="Auditoriam name"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddlaudiname" runat="server">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Sehion Center</asp:ListItem>
                    <asp:ListItem>Sehion parish</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Event Type" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 128px">
                <asp:DropDownList ID="ddleventtype" runat="server">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Baptisam</asp:ListItem>
                    <asp:ListItem>Engagement</asp:ListItem>
                    <asp:ListItem>other functions</asp:ListItem>
                    <asp:ListItem>Receptions</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Event Date"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="No Of Days " Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 128px">
                <asp:DropDownList ID="ddlnoofdays" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlnoofdays_SelectedIndexChanged">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Full Day</asp:ListItem>
                    <asp:ListItem>Forenoon</asp:ListItem>
                    <asp:ListItem>Afternoon</asp:ListItem>
                    <asp:ListItem>2Days</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Amount"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:ScriptManager ID="aa" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlnoofdays" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td style="width: 128px">
                <asp:Button ID="Button1" runat="server" Text="Register Booking" Width="144px" OnClick="Button1_Click" />
                </td>
            <td class="auto-style12">
                <asp:Button ID="Button2" runat="server" Text="Confirm Booking" />
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
