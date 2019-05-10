<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarriageCertificate.aspx.cs" Inherits="Parish_automation.AdminModule.MarriageCertificate" %>

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
            height: 768px;
        }
        .auto-style2 {
            width: 80%;
            height: 766px;
        }
        .auto-style3 {
            border: 5px solid #808080;
            background-color: #999966;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-family: "Baskerville Old Face";
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body style="height: 773px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <div class="auto-style4">

                            <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/Image/web-logo.gif" />
&nbsp;<span class="auto-style5">SEHION ORTHDOX CHURCH,KOTHALA<br />
                            </span></div>
                        <div class="auto-style6">

                            MARRIAGE&nbsp;&nbsp; CERTIFICATE<br />
                        </div>
                        <div class="auto-style4">

                            <br />
                            THIS CERTIFIES THAT<br />
                            <br />
                            <asp:Label ID="bridename" runat="server"></asp:Label>
&nbsp; AND&nbsp;
                            <asp:Label ID="groomname" runat="server"></asp:Label>
                            <br />
                            <br />
                            WERE UNITED IN THE HOLY BOND OF MATRIMONY<br />
                            <br />
                            AT
                            <asp:Label ID="churchname" runat="server"></asp:Label>
                            <br />
                            <br />
                            ON
                            <asp:Label ID="marriagedate" runat="server"></asp:Label>
                            <br />
                            <br />
                            WITHNESSED&nbsp;
                            <asp:Label ID="withness1" runat="server"></asp:Label>
&nbsp;&amp;
                            <asp:Label ID="withness2" runat="server"></asp:Label>
                            <br />
                            <br />
                            OFFICIATED BY&nbsp;
                            <asp:Label ID="priestname" runat="server"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGNATURE<br />
                            <br />
                            <br />
                            <br />
                           <asp:Button ID="btnPrint" runat="server" Text="PRINT" OnClientClick="Print()" OnClick="btnPrint_Click" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                            <br />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
