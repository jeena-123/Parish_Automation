<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="Editvicer.aspx.cs" Inherits="Parish_automation.AdminModule.Editvicer" %>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">Edit Vicer</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                
                   
                    
                
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                     <Columns>
                    <asp:BoundField DataField="Member_name" HeaderText ="Member Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText ="Address">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                         
                        <asp:BoundField DataField="mobno" HeaderText ="Mobno">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                        <asp:BoundField DataField="year_from" HeaderText ="Year From">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                        <asp:BoundField DataField="year_to" HeaderText ="
                            Year To">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                        <asp:BoundField DataField="emailid" HeaderText ="Email Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                         
                </asp:BoundField>
                        
                        <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                        <asp:Button ID="SanctionedButton1" Text="Update" runat="server" OnClick ="btnApprove1_Click" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        </Columns>
                </asp:GridView>
                
                   
                    
                
                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
