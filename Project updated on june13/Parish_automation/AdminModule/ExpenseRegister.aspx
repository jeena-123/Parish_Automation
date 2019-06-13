<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="ExpenseRegister.aspx.cs" Inherits="Parish_automation.AdminModule.ExpenseRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 168px;
        }
        .auto-style11 {
            font-family: Algerian;
            font-size: medium;
            color: #800000;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td colspan="2" class="auto-style11">Church Expense Register</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="expensedate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Amount Description"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="amountdes" runat="server"  AutoPostBack="true">
                    <asp:ListItem>.....Select.....</asp:ListItem>
                    <asp:ListItem>Loan Account</asp:ListItem>
                    <asp:ListItem>MetrasanaVihitham</asp:ListItem>
                    <asp:ListItem>care Taker Allevance</asp:ListItem>
                    <asp:ListItem>Church Cleaning</asp:ListItem>
                    <asp:ListItem>Electricity Charge</asp:ListItem>
                    <asp:ListItem>Telephone Charg</asp:ListItem>
                    <asp:ListItem>Sunday Food</asp:ListItem>
                    <asp:ListItem>Travelling Expense</asp:ListItem>
                    <asp:ListItem>Hall Cleaning Charge</asp:ListItem>
                    <asp:ListItem>Daily Expense</asp:ListItem>
                    <asp:ListItem>PrarthanaYogam</asp:ListItem>
                    <asp:ListItem>Sunday School</asp:ListItem>
                    <asp:ListItem>O.V.B.S</asp:ListItem>
                    <asp:ListItem>Youth League</asp:ListItem>
                    <asp:ListItem>MarthaMariya Samagam</asp:ListItem>
                    <asp:ListItem>DivyaBodhanam</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Other Expenses</asp:ListItem>
                    <asp:ListItem>Tax</asp:ListItem>
                    <asp:ListItem>Perunnal</asp:ListItem>
                    <asp:ListItem>Easter</asp:ListItem>
                    <asp:ListItem>Good Friday</asp:ListItem>
                    <asp:ListItem>Pampady Perunnal</asp:ListItem>
                    <asp:ListItem>Parumala Perunnal</asp:ListItem>
                    <asp:ListItem>Mission Sunday</asp:ListItem>
                    <asp:ListItem>Pampady Convention</asp:ListItem>
                    <asp:ListItem>Idavaka Dhyanam</asp:ListItem>
                    <asp:ListItem>Other Charity Funds</asp:ListItem>
                    <asp:ListItem>Audit Charge</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="expenseamount" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="Save" Width="98px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
