<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeathCertificate.aspx.cs" Inherits="Parish_automation.AdminModule.DeathCertificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 76%;
            height: 638px;
            background-color: #669999;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style5 {
            height: 392px;
            border-style: solid;
            border-width: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
        <div class="auto-style3">
            <asp:Image ID="Image1" runat="server" Height="54px" ImageUrl="~/Image/web-logo.gif" />
            SEHION ORTHDOX CHURCH, KOTHALA<br />
            <br />
            <span class="auto-style4">DEATH&nbsp; CERTIFICATE</span><br />
            <br />
            THIS IS&nbsp; TO ACKNOWLEDGE THE DEATH OF<br />
            <br />
            <asp:Label ID="name" runat="server"></asp:Label>
            <br />
            ON <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
