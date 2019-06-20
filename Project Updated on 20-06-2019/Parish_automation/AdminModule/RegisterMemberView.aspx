<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="RegisterMemberView.aspx.cs" Inherits="Parish_automation.AdminModule.RegisterMemberView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: center;
            font-family: Algerian;
            font-weight: bold;
            font-size: xx-large;
            color: #008080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">View Registered Member Details</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1214px">
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <EditItemStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataGrid>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [member_id], [name], [relationwithfamilyhead], [dob], [gender], [mobno], [familyid], [email_id], [blood_group], [qualification], [occupation] FROM [family_information1]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
