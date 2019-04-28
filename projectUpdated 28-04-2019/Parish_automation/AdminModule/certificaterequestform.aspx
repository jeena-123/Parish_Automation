<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="certificaterequestform.aspx.cs" Inherits="Parish_automation.AdminModule.certificaterequestform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Certificaterequest List&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="Certificategridview" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="Certificategridview_SelectedIndexChanged" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="617px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                    <asp:BoundField DataField="family_id" HeaderText ="family_id" SortExpression="family_id">
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

             <asp:BoundField DataField="name" HeaderText ="name" SortExpression="name" >
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText ="address" SortExpression="address">
                
            
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
             <asp:BoundField DataField="mobno" HeaderText ="mobno" SortExpression="mobno" >
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField> 
             <asp:BoundField DataField="date" HeaderText ="date" SortExpression="date" >
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField> 
                        <asp:BoundField DataField="certificate_type" HeaderText="certificate_type" SortExpression="certificate_type">
                        <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" Value='<%# Eval("is_approved") %>' /
                 CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' 
                    CommandName="ShowStatus" Text='<%# Eval("APR_STATUS") %>' OnClick ="btnApprove_Click"  />
            </ItemTemplate>
                <ControlStyle ForeColor="Red" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [family_id], [name], [address], [mobno], [date], [certificate_type] FROM [certificate_Request]"></asp:SqlDataSource>
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
        <tr>
            <td>&nbsp;</td>
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
        <tr>
            <td>&nbsp;</td>
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
        <tr>
            <td>&nbsp;</td>
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
        <tr>
            <td>&nbsp;</td>
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
