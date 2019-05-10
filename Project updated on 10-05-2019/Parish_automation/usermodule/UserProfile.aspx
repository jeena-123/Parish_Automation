<%@ Page Title="" Language="C#" MasterPageFile="~/usermodule/UserModule.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Parish_automation.usermodule.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    .auto-style11 {
            width: 155px;
            height: 46px;
        }
        .auto-style16 {
            text-align: center;
            width: 155px;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
            text-align: center;
            height: 46px;
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
        .auto-style25 {
            font-size: large;
        }
        .auto-style26 {
            width: 51px;
        }
        .auto-style28 {
            text-align: center;
            width: 51px;
            height: 26px;
        }
        .auto-style31 {
            text-align: justify;
            height: 26px;
        }
        .auto-style40 {
            width: 51px;
            height: 10px;
        }
        .auto-style41 {
            width: 155px;
            height: 10px;
        }
        .auto-style42 {
            width: 164px;
            height: 10px;
        }
        .auto-style43 {
            width: 228px;
            height: 10px;
        }
        .auto-style44 {
            height: 10px;
        }
        .auto-style45 {
            width: 100%;
            font-size: x-large;
            height: 569px;
        }
        .auto-style46 {
            text-align: center;
            width: 51px;
            height: 38px;
        }
        .auto-style47 {
            text-align: center;
            width: 155px;
            height: 38px;
        }
        .auto-style48 {
            text-align: justify;
            height: 38px;
        }
        .auto-style49 {
            height: 38px;
        }
        .auto-style50 {
            text-align: center;
            width: 51px;
            height: 22px;
        }
        .auto-style51 {
            text-align: center;
            width: 155px;
            height: 22px;
        }
        .auto-style52 {
            text-align: justify;
            height: 22px;
        }
        .auto-style53 {
            height: 22px;
        }
        .auto-style54 {
            width: 51px;
            height: 157px;
        }
        .auto-style55 {
            height: 157px;
        }
        .auto-style58 {
            width: 51px;
            height: 31px;
        }
        .auto-style59 {
            width: 155px;
            height: 31px;
        }
        .auto-style60 {
            width: 164px;
            height: 31px;
        }
        .auto-style61 {
            width: 228px;
            height: 31px;
        }
        .auto-style62 {
            height: 31px;
        }
        .auto-style63 {
            width: 51px;
            height: 14px;
        }
        .auto-style64 {
            width: 155px;
            height: 14px;
        }
        .auto-style65 {
            width: 164px;
            height: 14px;
        }
        .auto-style66 {
            width: 228px;
            height: 14px;
        }
        .auto-style67 {
            height: 14px;
        }
        .auto-style68 {
            width: 51px;
            height: 9px;
        }
        .auto-style69 {
            height: 9px;
        }
        .auto-style70 {
            width: 51px;
            height: 46px;
        }
        .auto-style71 {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style45">
        <tr>
            <td class="auto-style70">
                </td>
            <td class="auto-style11">
                </td>
            <td class="auto-style20" colspan="2">
                <span class="auto-style24">Welcome&nbsp;
                </span>
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style24"></asp:Label>
                <span class="auto-style23">!</span></td>
            <td class="auto-style71"></td>
        </tr>
        <tr>
            <td class="auto-style58"></td>
            <td class="auto-style59"></td>
            <td class="auto-style60"></td>
            <td class="auto-style61"></td>
            <td class="auto-style62"></td>
        </tr>
        <tr>
            <td class="auto-style28">
                </td>
            <td class="auto-style16">
                </td>
            <td class="auto-style31" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="id1" runat="server" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style16">
                </td>
            <td class="auto-style31" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Address" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="addr" runat="server" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style46">
                </td>
            <td class="auto-style47">
                </td>
            <td class="auto-style48" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Mob No" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="mob" runat="server" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style49"></td>
        </tr>
        <tr>
            <td class="auto-style50">
                </td>
            <td class="auto-style51">
                </td>
            <td class="auto-style52" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Prayer Group" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="pyr" runat="server" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
            <td class="auto-style41"></td>
            <td class="auto-style42"></td>
            <td class="auto-style43"></td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style68"></td>
            <td colspan="4" class="auto-style69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style25"> </span> <span class="auto-style22"><span class="auto-style25">Family Member Details</span></span></td>
        </tr>
        <tr>
            <td class="auto-style63"></td>
            <td class="auto-style64"></td>
            <td class="auto-style65"></td>
            <td class="auto-style66"></td>
            <td class="auto-style67"></td>
        </tr>
        <tr>
            <td class="auto-style54">
            </td>
            <td colspan="4" class="auto-style55">
                <asp:GridView ID="GridView1" runat="server" Width="992px" AutoGenerateColumns="False" CellPadding="4" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="211px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <td class="auto-style26">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
