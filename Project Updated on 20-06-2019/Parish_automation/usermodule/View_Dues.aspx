<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="View_Dues.aspx.cs" Inherits="Parish_automation.usermodule.View_Dues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            height: 606px;
        }
        .auto-style10 {
            width: 100%;
            height: 207px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-family: Algerian;
            font-weight: bold;
            font-size: large;
            color: #008000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style9">


        <table class="auto-style10">
            <tr>
                <td class="auto-style11">
                    <span class="auto-style12">Due List</span><br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="kendravihitham Dues"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblKdue" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Masavari Dues"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblmDue" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>


    </div>
</asp:Content>
