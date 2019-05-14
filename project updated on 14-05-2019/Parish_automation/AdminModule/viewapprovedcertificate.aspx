<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="viewapprovedcertificate.aspx.cs" Inherits="Parish_automation.AdminModule.viewapprovedcertificate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: center;
        font-family: Algerian;
        font-weight: bold;
        font-size: large;
    }
    .auto-style10 {
        width: 100%;
    }
    .auto-style11 {
        width: 784px;
    }
    .auto-style12 {
        width: 360px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p class="auto-style9">
    VIEW&nbsp; APPROVED CERTIFICATE LIST</p>
<p>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [family_id], [name], [address], [mobno], [date], [certificate_type] FROM [certificate_Request] WHERE ([is_approved] = @is_approved)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="is_approved" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<table class="auto-style10">
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11" rowspan="2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="229px" Width="685px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="family_id" HeaderText="family_id" SortExpression="family_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="certificate_type" HeaderText="certificate_type" SortExpression="certificate_type" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
