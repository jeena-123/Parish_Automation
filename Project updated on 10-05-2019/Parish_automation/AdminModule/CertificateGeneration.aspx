<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CertificateGeneration.aspx.cs" Inherits="Parish_automation.AdminModule.CertificateGeneration" %>

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
            width: 100%;
            height: 719px;
            text-align: center;
            background-color: #669999;
        }
        .auto-style2 {
            width: 100%;
            height: 523px;
        }
        .auto-style3 {
            width: 100%;
            height: 36px;
            text-align: left;
        }
        
        .auto-style5 {
            width: 100%;
            height: 523px;
            border:5px solid red;
        }
       
        .auto-style6 {
            font-family: Algerian;
            font-size: x-large;
            font-weight: bold;
        }
       
        .auto-style7 {
            width: 1300px;
            height: 643px;
        }
       
        .auto-style8 {
            font-family: "Baskerville Old Face";
            font-size: medium;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
        }
       
        .auto-style11 {
            border: 7px solid #800000;
            background-color: #669999;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style7">
        
        
        <table class="auto-style5">
            <tr>
                <td class="auto-style11"><div class="auto-style1">
            

                    <div class="auto-style9">
            

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Image/web-logo.gif" />
&nbsp;<span class="auto-style2"> <span class="auto-style10">SEHION&nbsp; ORTHDOX&nbsp; CHURCH, KOTHALA</span><br class="auto-style10" />
            
            
            </span>
            
                    </div>
            
            <div class="auto-style3">


                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">Baptisam Certificate<br />
                <br />
                <br />
                <br />
                <br />

                </span>
                <br class="auto-style6" />

                <br />
                <br />

            </div>
            
            <div class="auto-style2">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style8"> THIS&nbsp; CERTIFIES&nbsp; THAT&nbsp; </span>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp; </span>
                <asp:Label ID="name" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CHILD&nbsp; OF&nbsp;&nbsp; </span>
                <asp:Label ID="fathername" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <span class="auto-style8">&nbsp; AND&nbsp;
                </span>
                <asp:Label ID="mothername" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <span class="auto-style8">&nbsp;
                </span>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHO WAS BORN IN </span>
                <asp:Label ID="dob" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;WAS BAPTISED IN THE NAME OF</span><br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THE FATHER SON AND THE HOLY SPIRIT</span><br class="auto-style8" />
                <br />
                <span class="auto-style8">&nbsp;BY </span>
                <asp:Label ID="vicername" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;AT THE CHURCH OF </span>
                <asp:Label ID="churchname" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br class="auto-style8" />
                <br class="auto-style8" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ON </span>
                <asp:Label ID="baptisamdate" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                signature<br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </div>

        </div></td>
               
            </tr>
        </table>
        
        
        <p>

                 <asp:Button ID="btnPrint" runat="server" Text="PRINT" OnClientClick="Print()" OnClick="btnPrint_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Send" />

            </p>
        
        
    </form>
</body>
</html>
