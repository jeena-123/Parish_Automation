<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="communitycertificate.aspx.cs" Inherits="Parish_automation.AdminModule.communitycertificate" %>

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
        .auto-style1 {
            border: 9px solid #000000;
            width: 65%;
            height: 525px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style4 {
            border: 5px solid #FFFFFF;
            padding: 1px 4px;
            background-color: #FFFFFF;
            height: 617px;
            width: 1014px;
        }
        .auto-style5 {
            font-family: Algerian;
            font-size: medium;
            font-weight: bold;
        }
        .auto-style6 {
            font-family: Algerian;
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</head>
<body style="height: 736px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
        <div class="auto-style2" style="height: 109px">
            <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="~/Image/web-logo.gif" Width="59px" />
            <span class="auto-style6">SEHION ORTHDOX CHURCH,KOTHALA</span><br class="auto-style5" />
            <br />
            <br />
                    </div>
                    <div class="auto-style3">

                        COMMUNITY CERTIFICATE<br />
                        <br />
                    </div>
                    <div class="auto-style2">

                        This is to certify that&nbsp;
                        <asp:Label ID="name" runat="server"></asp:Label>
                        &nbsp;belongs to christian community.<br />
&nbsp;<br />
                        <br />
                        <asp:Label ID="name1" runat="server"></asp:Label>
&nbsp; is a member of this parish under the diocese of kottayam.<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="69px" ImageUrl="~/Image/HH PAULOSE II BAVA SEAL copy.jpg" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="55px" ImageUrl="~/Image/signature.jpg" Width="143px" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGNATURE<br />
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <br />
                          <asp:Button ID="btnPrint" runat="server" Text="PRINT" OnClientClick="Print()" OnClick="btnPrint_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
