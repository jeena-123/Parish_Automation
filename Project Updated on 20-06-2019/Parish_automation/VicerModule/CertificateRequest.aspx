<%@ Page Title="" Language="C#" MasterPageFile="~/VicerModule/VicerHome.Master" AutoEventWireup="true" CodeBehind="CertificateRequest.aspx.cs" Inherits="Parish_automation.VicerModule.CertificateRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
            font-family: Algerian;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10">Certificate Request List</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewCertificate" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="None" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridViewCertificate_RowDataBound">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="family_id" HeaderText="family_id" SortExpression="family_id">
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name">
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address">
                        </asp:BoundField>
                        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno">
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date">
                        </asp:BoundField>
                        <asp:BoundField DataField="certificate_type" HeaderText="certificate_type" SortExpression="certificate_type">
                        </asp:BoundField>
                        <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose">
                        </asp:BoundField>
                        
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
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [family_id], [name], [address], [mobno], [date], [certificate_type], [purpose], [is_approved] FROM [certificate_Request] WHERE ([is_approved] = @is_approved)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="is_approved" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [family_id], [name], [address], [mobno], [date], [certificate_type], [purpose] FROM [certificate_Request]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [family_id], [name], [address], [mobno], [date], [certificate_type], [purpose] FROM [certificate_Request] ORDER BY [date]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
