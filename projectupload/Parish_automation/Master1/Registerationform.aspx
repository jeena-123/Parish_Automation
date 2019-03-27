<%@ Page  Title="Registeration Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registerationform.aspx.cs" Inherits="Parish_automation.Master1.Registerationform" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="nav-justified" style="height: 157px">
    <tr>
        <td style="width: 7px">&nbsp;</td>
        <td class="text-center">
            <asp:Image ID="Image1" runat="server" Height="99px" ImageUrl="~/Image/web-logo.gif" />
            <span style="font-family: Arial; font-weight: bold; font-size: xx-large">SEHION ORTHDOX CHURCH</span></td>
    </tr>
    <tr>
        <td style="width: 7px">&nbsp;</td>
        <td>
            <table class="nav-justified" style="height: 403px">
                <tr>
                    <td style="height: 36px; width: 311px"></td>
                    <td style="height: 36px; width: 291px"><b>FAMILY REGISTER</b></td>
                    <td style="height: 36px; width: 311px"></td>
                    <td style="height: 36px"></td>
                </tr>
                <tr>
                    <td style="width: 311px"></td>
                    <td class="modal-sm" style="width: 291px"></td>
                    <td style="width: 311px" class="modal-sm"></td>
                    <td></td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 311px"></td>
                    <td style="height: 40px; width: 291px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Text="FAMILY ID"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 311px">
                        <asp:Label ID="familyid" runat="server" Font-Bold="False"></asp:Label>
                    </td>
                    <td style="height: 40px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 39px; width: 311px"></td>
                    <td style="height: 39px; width: 291px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="HOUSE NAME"></asp:Label>
                    </td>
                    <td style="height: 39px; width: 311px">
                        <asp:TextBox ID="txthousename" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="House Name is empty"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 39px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 41px; width: 311px"></td>
                    <td style="height: 41px; width: 291px">
                        <asp:Label ID="Label10" runat="server" Font-Bold="False" Text="PLACE"></asp:Label>
                    </td>
                    <td style="height: 41px; width: 311px">
                        <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtplace" ErrorMessage="Place Field Is Empty"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 41px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 45px; width: 311px"></td>
                    <td style="height: 45px; width: 291px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Text="CITY"></asp:Label>
                    </td>
                    <td style="height: 45px; width: 311px">
                        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcity" ErrorMessage="City Field Is Empty"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 45px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 311px"></td>
                    <td style="height: 40px; width: 291px">
                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Text="RES.MOB.NO"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 311px">
                        <asp:TextBox ID="txtmobno" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td style="height: 42px; width: 311px"></td>
                    <td style="height: 42px; width: 291px">
                        <asp:Label ID="Label6" runat="server" Font-Bold="False" Text="FAMILY HEAD"></asp:Label>
                    </td>
                    <td style="height: 42px; width: 311px">
                        <asp:TextBox ID="txtfamilyhead" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txthousename" ErrorMessage="Family Head Field Is Empty"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 42px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 42px; width: 311px"></td>
                    <td style="height: 42px; width: 291px">
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Text="PRAYER GROUP"></asp:Label>
                    </td>
                    <td style="height: 42px; width: 311px">
                        <asp:DropDownList ID="drpdwnprayer" runat="server" Height="34px" Width="145px" DataTextField="prayername" DataValueField="id">
                            
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpdwnprayer" ErrorMessage="Select Prayer Group"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 42px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 41px; width: 311px">&nbsp;</td>
                    <td style="height: 41px; width: 291px">
                        <asp:Label ID="Label11" runat="server" Text="USER NAME"></asp:Label>
                    </td>
                    <td style="height: 41px; width: 311px" class="text-left">
                        <asp:TextBox ID="usename" runat="server"  style="margin-bottom: 0"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="usename" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 41px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 39px; width: 311px">&nbsp;</td>
                    <td style="height: 39px; width: 291px">
                        <asp:Label ID="Label12" runat="server" Text="PASSWORD"></asp:Label>
                    </td>
                    <td style="height: 39px; width: 311px">
                        <asp:TextBox ID="password" runat="server"  TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 39px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 70px; width: 311px"></td>
                    <td style="height: 70px; width: 291px">
                        <asp:Label ID="Label13" runat="server" Text="UPLOAD"></asp:Label>
                    </td>
                    <td style="height: 70px; width: 311px">
                        <asp:FileUpload ID="img1" runat="server" />
                    </td>
                    <td style="height: 70px"></td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 311px"></td>
                    <td class="text-center" style="height: 20px; width: 291px"></td>
                    <td style="height: 20px; width: 311px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="SAVE" Width="123px" OnClick="Button1_Click" Height="40px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td class="modal-sm" style="width: 291px">&nbsp;</td>
                    <td style="width: 311px" class="modal-sm">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td class="modal-sm" style="width: 291px">&nbsp;</td>
                    <td style="width: 311px" class="modal-sm">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td class="modal-sm" style="width: 291px">&nbsp;</td>
                    <td style="width: 311px" class="modal-sm">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td class="modal-sm" style="width: 291px">&nbsp;</td>
                    <td style="width: 311px" class="modal-sm">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>

    </asp:Content>
