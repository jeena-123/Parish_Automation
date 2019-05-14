<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="ViewAssociationMembers.aspx.cs" Inherits="Parish_automation.AdminModule.ViewAssociationMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 123%;
        }
        .auto-style10 {
            width: 282px;
        }
        .auto-style11 {
            width: 515px;
        }
        .auto-style12 {
            width: 165px;
        }
        .auto-style13 {
            font-family: Algerian;
            font-weight: bold;
            font-size: large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13">View Association Member Details</span></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Select"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlselect" runat="server">
                    <asp:ListItem>......Select.......</asp:ListItem>
                    <asp:ListItem>Church Committiee</asp:ListItem>
                    <asp:ListItem>Youth League</asp:ListItem>
                    <asp:ListItem>Divya Bhodhanam</asp:ListItem>
                    <asp:ListItem>SundaySchool</asp:ListItem>
                    <asp:ListItem>PrarthanaYogam</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Period From"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtfrom" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;To
                <asp:TextBox ID="txtto" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="View Details" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="733px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                    <asp:BoundField DataField="familyid" HeaderText ="Family Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="Member_name" HeaderText ="Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText ="Address">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
             <asp:BoundField DataField="mobno" HeaderText ="Mobile No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="position_in_association" HeaderText ="Position" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="year_from" HeaderText ="Year From" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                        <asp:BoundField DataField="year_to" HeaderText ="Year To" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            
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
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
