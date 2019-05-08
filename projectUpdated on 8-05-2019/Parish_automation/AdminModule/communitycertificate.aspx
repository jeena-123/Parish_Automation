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
            border-style: solid;
            border-color: #FF0000;
width: 73%;
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
            border: 5px solid #0000FF;
            padding: 1px 4px;
            background-color: #666699;
            height: 617px;
            width: 1014px;
        }
    </style>
</head>
<body style="height: 736px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
        <div class="auto-style2">
            <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="~/Image/web-logo.gif" Width="59px" />
            SEHION ORTHDOX CHURCH,KOTHALA<br />
            <br />
            <br />
                    </div>
                    <div class="auto-style3">

                        COMMUNITY CERTIFICATE<br />
                        <br />
                    </div>
                    <div class="auto-style2">

                        THIS IS TO CERTIFY&nbsp; THAT&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;BELONGS TO CHRISTIAN&nbsp; COMMUNITY.<br />
&nbsp;<br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp; IS A MEMBER OF THIS PARISH UNDER THE ARCHDIOCESE OF CHANGNACHERRY.<br />
                        <br />
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGNATURE<br />
                        <br />
                         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="SAVE" />
                        <br />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
