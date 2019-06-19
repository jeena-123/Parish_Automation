<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parish_automation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table class="nav-justified" style="height: 493px">
        <tr>
            <td class="text-left" style="font-family: Arial; font-weight: bold; font-size: xx-large; height: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="111px" ImageUrl="~/Image/web-logo.gif" Width="111px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEHION&nbsp; ORTHODOX&nbsp;&nbsp; CHURCH</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="340px" ImageUrl="~/Image/images.jpg" Width="1300px" BorderStyle="Solid" />
            </td>
        </tr>
        <tr>
            <td>
                <table class="nav-justified" style="height: 306px">
                    <tr>
                        <td style="width: 267px; height: 248px; font-family: Arial; font-size: medium; color: #0000FF;">
                            W<b>elcome To Sehion Church<asp:Image ID="Image3" runat="server" ImageUrl="~/Image/download.jpg" style="margin-top: 78px" Width="236px" Height="257px" />
                            </b>
                        </td>
                        <td style="width: 433px; height: 248px;text-align:justify">
                            <strong style="color: rgb(0, 0, 0); font-family: Arial; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 240, 240); text-decoration-style: initial; text-decoration-color: initial;">Kothala Sehion Orthodox Syrian Church was consecrated on 26th January 1933 (13 Makaram 1106).
                            By His Grace Pampady Thirumeni and the first Holy Qurbana said and blessings were given.</strong><span style="color: rgb(0, 0, 0); font-family: Arial; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 240, 240); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>His decision to name the church after the twelve disciples of Christ. The name Sehion pally was chosen by His Grace to commemorate the Sehion Banglove where the disciples and Christ
                            join together for the last supper. Our Church is one of the few churches named after the disciples</strong></span><span style="color: rgb(146, 146, 146); font-family: Arial; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 240, 240); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>.</strong></span></td>
                        <td style="height: 248px;">
                            <table class="nav-justified" style="height: 260px">
                                <tr>
                                    <td class="text-center" style="font-family: Arial; font-weight: bold; font-size: x-large; width: 433px; height: 98px;">LOGIN</td>
                                </tr>
                                <tr>
                                    <td class="text-center" style="height: 30px; width: 433px">
                                        <asp:TextBox ID="username1" runat="server" ToolTip="ENTER USERNAME" CssClass="form-control" style="margin-left:27%" placeholder="ENTER USERNAME"></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="text-center" style="width: 433px; height: 30px;">
                                        <asp:TextBox ID="password" runat="server" placeholder="ENTER PASSWORD" TextMode="Password" ToolTip="ENTER PASSWORD"  CssClass="form-control" style="margin-left:27%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center" style="width: 433px; height: 3px;">
                                    &nbsp;
                                        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Smaller" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center" style="width: 433px; height: 30px;">&nbsp;
                                        <asp:Button runat="server" OnClick="Button2_Click1" Text="LOGIN" CssClass="btn btn-success"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 10px;" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 10px;" colspan="3">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>

    

</asp:Content>
