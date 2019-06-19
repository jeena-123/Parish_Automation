<%@ Page Title="" Language="C#" MasterPageFile="~/VicerModule/VicerHome.Master" AutoEventWireup="true" CodeBehind="PrayerList.aspx.cs" Inherits="Parish_automation.VicerModule.PrayerList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
        font-family: Algerian;
        font-weight: bold;
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    View Prayer List<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prayergroup" HeaderText="prayergroup" SortExpression="prayergroup" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="addresses" HeaderText="addresses" SortExpression="addresses" />
            <asp:BoundField DataField="prayer_type" HeaderText="prayer_type" SortExpression="prayer_type" />
            <asp:BoundField DataField="prayer_time" HeaderText="prayer_time" SortExpression="prayer_time" />
            <asp:BoundField DataField="prayer_date" HeaderText="prayer_date" SortExpression="prayer_date" />
        </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [prayergroup], [name], [addresses], [prayer_type], [prayer_time], [prayer_date] FROM [prayerregister]"></asp:SqlDataSource>
</p>
<p class="auto-style5">
    &nbsp;</p>
</asp:Content>
