<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="userviewcertificate.aspx.cs" Inherits="Parish_automation.usermodule.userviewcertificate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
        <asp:BoundField DataField="family_id" HeaderText ="Family Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="name" HeaderText ="name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText ="address">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="mobno" HeaderText ="Mobile No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
             <asp:BoundField DataField="date" HeaderText ="date" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="certificate_type" HeaderText ="certificate_type" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                                <asp:BoundField DataField="purpose" HeaderText ="purpose" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                        <asp:Button ID="SanctionedButton" Text="view Certificate" runat="server" OnClick ="btnApprove_Click" />
                        </ItemTemplate>
                        </asp:TemplateField>
            </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
</asp:Content>
