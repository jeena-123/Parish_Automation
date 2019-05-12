<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Parish_automation.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ReqNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            
            <asp:BoundField DataField="family_id" HeaderText="family_id" SortExpression="family_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="certificate_type" HeaderText="certificate_type" SortExpression="certificate_type" />
            <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose" />
            <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                        <asp:Button ID="SanctionedButton" Text="view Certificate" runat="server" OnClick ="btnApprove_Click" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        
            
                        <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                        <asp:Button ID="SanctionedButton1" Text="Approved" runat="server" OnClick ="btnApprove1_Click" />
                        </ItemTemplate>
                        </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [ReqNo], [family_id], [name], [address], [mobno], [date], [certificate_type], [purpose] FROM [certificate_Request] WHERE ([is_approved] = @is_approved)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="is_approved" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
