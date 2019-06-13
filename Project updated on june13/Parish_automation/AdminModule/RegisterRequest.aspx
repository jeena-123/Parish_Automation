<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminModuleMain.Master" AutoEventWireup="true" CodeBehind="RegisterRequest.aspx.cs" 
    Inherits="Parish_automation.AdminModule.RegisterRequest" EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 124%;
            height: 685px;
        }
        .auto-style10 {
            text-align: justify;
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            width: 940px;
            height: 67px;
        }
        .auto-style11 {
            height: 265px;
            width: 940px;
        }
        .auto-style12 {
            text-align: center;
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            width: 91px;
            height: 67px;
        }
        .auto-style13 {
            height: 265px;
            width: 91px;
        }
        .auto-style14 {
            width: 91px;
        }
        .auto-style15 {
            height: 265px;
            width: 120px;
        }
        .auto-style16 {
            width: 940px;
        }
        .auto-style17 {
            font-family: Algerian;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style17">&nbsp;Registration Request</span></td>
        </tr>
        <tr>
            <td class="auto-style13">
            </td>
            <td class="auto-style11">
                 <asp:GridView ID="GridView1" runat="server" Width="801px" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None"  OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                    <asp:BoundField DataField="family_id" HeaderText ="Family Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="housename" HeaderText ="Address" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="place" HeaderText ="Place">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="resphoneno" HeaderText ="Mobile No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
             <asp:BoundField DataField="family_head_name" HeaderText ="Family Head Name" >
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
                <HeaderStyle HorizontalAlign="Center" />
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
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
