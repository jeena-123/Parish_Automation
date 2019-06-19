<%@ Page Title="" Language="C#" MasterPageFile="~/VicerModule/VicerHome.Master" AutoEventWireup="true" CodeBehind="EditMasavari.aspx.cs" Inherits="Parish_automation.VicerModule.EditMasavari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-family: Algerian;
            font-weight: bold;
            font-size: x-large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        Update
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="family_id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">  
                    <Columns>  
                        <asp:BoundField DataField="family_id" HeaderText="family_id" >  
                        <HeaderStyle Height="38px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        <ItemStyle Height="35px" HorizontalAlign="Center" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="address" >  
                        <HeaderStyle Height="38px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        <ItemStyle Height="35px" HorizontalAlign="Center" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kendravihitham" HeaderText=" kendravihitham" >  
                        <HeaderStyle Height="38px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Height="35px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Masavari" HeaderText="Masavari" />  
                        <asp:CommandField  ShowEditButton="true" ButtonType="Button" />  
                        

                    </Columns>  
                  <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                  <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                  <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F7F7F7" />
                  <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                  <SortedDescendingCellStyle BackColor="#E5E5E5" />
                  <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
    </p>
</asp:Content>
