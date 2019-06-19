<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="viewPrayerList.aspx.cs" Inherits="Parish_automation.AdminModule.viewPrayerList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: center;
        font-family: Algerian;
        font-weight: bold;
        font-size: medium;
        color: #800000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
    View Prayer List<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prayergroup" HeaderText="prayergroup" SortExpression="prayergroup" />
            <asp:BoundField DataField="family_id" HeaderText="family_id" SortExpression="family_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="addresses" HeaderText="addresses" SortExpression="addresses" />
            <asp:BoundField DataField="prayer_type" HeaderText="prayer_type" SortExpression="prayer_type" />
            <asp:BoundField DataField="prayer_time" HeaderText="prayer_time" SortExpression="prayer_time" />
            <asp:BoundField DataField="prayer_date" HeaderText="prayer_date" SortExpression="prayer_date" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [prayergroup], [family_id], [name], [addresses], [prayer_type], [prayer_time], [prayer_date] FROM [prayerregister]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
