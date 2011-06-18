<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="BaoCaoNguoiDung.aspx.cs" Inherits="BaoCaoNguoiDungViPham" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#003399" 
        meta:resourcekey="Label1Resource1">Người vi phạm:</asp:Label>
    <div>
         <asp:DropDownList ID="ddlNguoiViPham" runat="server" Width="120px" 
                            ForeColor="#003399" Height="17px" 
             DataSourceID="LinqDataSource1" DataTextField="TenNguoiDung" 
             DataValueField="TenNguoiDung" meta:resourcekey="ddlNguoiViPhamResource1">
         </asp:DropDownList>
         <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
             ContextTypeName="DAO.RaoVatDataClassesDataContext" Select="new (TenNguoiDung)" 
             TableName="NGUOIDUNGs">
         </asp:LinqDataSource>
    </div>
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399" 
        meta:resourcekey="Label15Resource1">Lý do vi phạm:</asp:Label>
    
    <div>                   
         <asp:CheckBox ID="ckbXucPham" runat="server" 
             Text="Post bài xúc phạm thành viên khác" 
             meta:resourcekey="ckbXucPhamResource1" />
    </div>
    <div>
         <asp:CheckBox ID="ckbSpam" runat="server" 
             Text="Post nhiều tin có nội dung như nhau" 
             meta:resourcekey="ckbSpamResource1" />
    </div> 
    <div>
         <asp:CheckBox ID="ckbTuSai" runat="server" 
             Text="Dùng từ ngữ không dấu và ngôn ngữ thiếu văn hóa" 
             meta:resourcekey="ckbTuSaiResource1" />
    </div>
    <div>
         <asp:CheckBox ID="ckbNickSpam" runat="server" Text="Lập nhiều nick đăng tin" 
             meta:resourcekey="ckbNickSpamResource1" />
    </div>
    <div>
    Mã bảo vệ:
    <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1" />
    <cc1:CaptchaControl ID="ccJoin"
     runat="server" 
     CaptchaBackgroundNoise="Extreme" 
     CaptchaHeight="60" 
     CaptchaWidth="210" 
     CaptchaMinTimeout="5"
     CaptchaMaxTimeout="240" BackColor="White" 
            CaptchaChars="ACDEFGHJKLNPQRTUVXYZ2346789" FontColor="Black" LineColor="Black" 
            meta:resourcekey="ccJoinResource1" NoiseColor="Black" />
     <asp:Label ID="Label2" runat="server" style="color: #FF3300" 
            meta:resourcekey="Label2Resource1"></asp:Label>
</div>
    <asp:Button ID="btnBaoCao" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnBaoCao1_Click" Text="Báo Cáo" 
        meta:resourcekey="btnBaoCaoResource1" />
</asp:Content>
