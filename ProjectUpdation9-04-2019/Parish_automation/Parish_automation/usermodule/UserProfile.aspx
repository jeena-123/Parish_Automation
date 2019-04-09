<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Parish_automation.usermodule.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    .auto-style11 {
            width: 155px;
        }
    .auto-style12 {
            text-align: center;
            width: 155px;
        }
        .auto-style13 {
            text-align: center;
            width: 154px;
        }
        .auto-style14 {
            width: 154px;
        }
        .auto-style15 {
            width: 228px;
        }
        .auto-style16 {
            text-align: center;
            width: 155px;
            height: 26px;
        }
        .auto-style17 {
            text-align: center;
            width: 154px;
            height: 26px;
        }
        .auto-style18 {
            width: 228px;
            height: 26px;
            text-align: center;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            width: 228px;
            text-align: center;
        }
        .auto-style22 {
            color: #FF3300;
        }
        .auto-style23 {
            color: #FF0000;
        }
        .auto-style24 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style20" colspan="2">
                <span class="auto-style24">Welcome&nbsp;
                </span>
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style24"></asp:Label>
                <span class="auto-style23">!</span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Family id"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:Label ID="id1" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                </td>
            <td class="auto-style17">
                &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:Label ID="addr" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Mob No"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:Label ID="mob" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Prayer Group"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:Label ID="pyr" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style22">Family Member Details</span></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" Width="896px" AutoGenerateColumns="False">
                    <Columns>
            
           <asp:BoundField DataField="name" HeaderText ="Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

             <asp:BoundField DataField="relationwithfamilyhead" HeaderText ="Relation" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText ="Gender">
                
            
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
             <asp:BoundField DataField="dob" HeaderText ="Date Of Birth" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField> 
            <asp:BoundField DataField="mobno" HeaderText ="Mob.No" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="email_id" HeaderText ="Email" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
             <asp:BoundField DataField="marital_status" HeaderText ="Marital Status" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="qualification" HeaderText ="Qualification" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="occupation" HeaderText ="Occupation" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
        </Columns>
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
