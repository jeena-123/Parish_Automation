<%@ Page Title="" Language="C#" MasterPageFile="~/VicerModule/VicerHome.Master" AutoEventWireup="true" CodeBehind="ViewPaidList.aspx.cs" Inherits="Parish_automation.VicerModule.ViewPaidList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style43 {
            color: #800000;
        }
        .auto-style44 {
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style45 {
            width: 303px;
        }
        .auto-style46 {
            height: 29px;
        }
        .auto-style47 {
            width: 303px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td colspan="2"> <span class="auto-style43"> <span class="auto-style44">Church Income List</span></span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46"></td>
            <td class="auto-style47">
                <asp:Label ID="Label1" runat="server" Text="Family Id"></asp:Label>
                </td>
            <td class="auto-style46">
                <asp:DropDownList ID="ddlfamilyid" runat="server" DataValueField="family_id" DataTextField="family_id" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="166px">
                <asp:ListItem>.......Select.......</asp:ListItem>
            </asp:DropDownList>
                
            </td>
            <td class="auto-style46"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">
                <asp:Label ID="Label3" runat="server" Text="Account Description"></asp:Label>
                </td>
            <td>
                <asp:DropDownList ID="ddlaccountdescription" runat="server" DataValueField="AmountDescription" DataTextField="AmountDescription" AutoPostBack="true" Width="166px">
                <asp:ListItem>.......Select.......</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">
                <asp:Label ID="Label4" runat="server" Text="Total Amount"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Details" />
            </td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Paid List" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Total Amount" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;
                <asp:GridView ID="GridView1" runat="server" Width="924px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="222px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText ="PaidDate">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:BoundField DataField="familyid" HeaderText ="Family Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                         

             <asp:BoundField DataField="Name" HeaderText ="Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText ="Address">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
             <asp:BoundField DataField="mobno" HeaderText ="Mobile No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="ward" HeaderText ="Ward" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="accountDescription" HeaderText ="Account Description" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                        <asp:BoundField DataField="amount" HeaderText ="Amount" >
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
