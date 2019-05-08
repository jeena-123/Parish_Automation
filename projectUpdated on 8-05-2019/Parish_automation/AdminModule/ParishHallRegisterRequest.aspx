<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="ParishHallRegisterRequest.aspx.cs" Inherits="Parish_automation.AdminModule.ParishHallRegisterRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>Parish hall register request.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                 <asp:GridView ID="GridView1" runat="server" Width="712px" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None"  OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                    <asp:BoundField DataField="name" HeaderText ="Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="address" HeaderText ="Address" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="mobno" HeaderText ="Mob.No">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="emailid" HeaderText ="Email Id" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
             <asp:BoundField DataField="audiname" HeaderText ="Auditoriam Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="eventtype" HeaderText ="Event Type" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="eventdate" HeaderText ="Event Date" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
                        <asp:BoundField DataField="noofdays" HeaderText ="No Of Days" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:HiddenField ID="hdnApp" runat="server" Value='<%# Eval("is_approved") %>' />
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' 
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
            </td>
        </tr>
    </table>
</asp:Content>
