<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="BaoCaoNguoiDung.aspx.cs" Inherits="BaoCaoNguoiDungViPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#003399">Người vi phạm:</asp:Label>
    <div>
         <asp:DropDownList ID="ddlNguoiViPham" runat="server" Width="120px" 
                            ForeColor="#003399" Height="17px" 
             DataSourceID="LinqDataSource1" DataTextField="TenNguoiDung" 
             DataValueField="TenNguoiDung">
         </asp:DropDownList>
         <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
             ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="new (TenNguoiDung)" 
             TableName="NGUOIDUNGs">
         </asp:LinqDataSource>
    </div>
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399">Lý do vi phạm:</asp:Label>
    
    <div>                   
         <asp:CheckBox ID="ckbXucPham" runat="server" Text="Post bài xúc phạm thành viên khác" />
    </div>
    <div>
         <asp:CheckBox ID="ckbSpam" runat="server" Text="Post nhiều tin có nội dung như nhau" />
    </div> 
    <div>
         <asp:CheckBox ID="ckbTuSai" runat="server" Text="Dùng từ ngữ không dấu và ngôn ngữ thiếu văn hóa" />
    </div>
    <div>
         <asp:CheckBox ID="ckbNickSpam" runat="server" Text="Lập nhiều nick đăng tin" />
    </div>
    <asp:Button ID="btnBaoCao" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnBaoCao1_Click" Text="Báo Cáo" />
</asp:Content>
