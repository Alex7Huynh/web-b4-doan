<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NangCapTaiKhoan.aspx.cs" Inherits="TaiKhoan_NangCapTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed">       
        <table style="width: 276px">
            <tr><td colspan="2"><hr /><b>Customer</b><hr /></td></tr>
            <tr align="left">
                <td>First name:</td>
                <td>
                    <asp:TextBox ID="txt_firstName" runat="server">Van A</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Last name:</td>
                <td>
                    <asp:TextBox ID="txt_LastName" runat="server">Nguyen</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>State:</td>
                <td>
                    <asp:TextBox ID="tbstate" runat="server">ABC</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>ZipCode:</td>
                <td>
                    <asp:TextBox ID="tbzipcode" runat="server">12345</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Country:</td>
                <td>
                    <asp:TextBox ID="txt_country" runat="server" 
                        ontextchanged="tbcountry_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Amount:$</td>
                <td>
                    <asp:TextBox ID="tbamount" runat="server">20</asp:TextBox>
                </td>
            </tr>
            <tr><td colspan="2"><hr /><b>Credit Card</b><hr /></td></tr>
            <tr align="left">
                <td>Card type:</td>
                <td>
                    <asp:DropDownList ID="Dropcard" runat="server" 
                        onselectedindexchanged="Dropcard_SelectedIndexChanged">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td>Card number:</td>
                <td>
                    <asp:TextBox ID="tbcard" runat="server" Width="128px">5490995941921857</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Expire month:</td>
                <td> 
                    <asp:TextBox ID="tbmonth" runat="server" Width="26px" style="margin-left: 0px">02</asp:TextBox>
                    &nbsp;&nbsp;Year: &nbsp;
                    <asp:TextBox ID="tbyear" runat="server" Width="37px">2015</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>CVV2:</td>
                <td>
                    <asp:TextBox ID="tbcvv2" runat="server" Width="128px">027</asp:TextBox>
                </td>
            </tr>
            <tr align="left">
            <td>
               
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:ImageButton ID="ImageButton3" runat="server" 
                     ImageUrl="~/images/CreditCard.jpg" onclick="ImageButton3_Click" />   
                 </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<asp:Label ID="lbMessage" runat="server" Font-Bold="True" 
            Font-Size="Large" ForeColor="#666633"></asp:Label>
    </asp:Panel>
</asp:Content>

