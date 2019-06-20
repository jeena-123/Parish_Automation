<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeathCertificate.aspx.cs" Inherits="Parish_automation.AdminModule.DeathCertificate" %>

<!DOCTYPE html>
<script type="text/javascript">

    function Print() {
        window.print();
    }
</script>

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
            background-color: #FFFFFF;
        }
        .auto-style6 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body style="width: 780px">
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
        <div class="auto-style3">
            <asp:Image ID="Image1" runat="server" Height="54px" ImageUrl="~/Image/web-logo.gif" />
            <span class="auto-style6">SEHION ORTHDOX CHURCH, KOTHALA</span><br class="auto-style6" />
            <br />
            <span class="auto-style4">DEATH&nbsp; CERTIFICATE</span><br />
            <br />
            This is&nbsp; to acknowledge the death of<br />
            <br />
            <asp:Label ID="name" runat="server"></asp:Label>
            <br />
            who is a member of this parish<br />
            born in&nbsp;<br />
            <asp:Label ID="name0" runat="server"></asp:Label>
            <br />
            and died in
            <asp:Label ID="name1" runat="server"></asp:Label>
            &nbsp;due to
            <asp:Label ID="name2" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl="~/Image/HH PAULOSE II BAVA SEAL copy.jpg" Width="113px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="76px" ImageUrl="~/Image/signature.jpg" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature&nbsp;
            <br />
            <br />
            <br />
            <asp:Button ID="btnPrint" runat="server" Text="PRINT" OnClientClick="Print()" OnClick="btnPrint_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
