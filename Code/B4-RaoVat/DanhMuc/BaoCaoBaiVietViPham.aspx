<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="BaoCaoBaiVietViPham.aspx.cs" Inherits="BaoCaoBaiVietViPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003399">Lý do vi phạm:</asp:Label>
    <div>                   
         <asp:CheckBox ID="ckbTenSai" runat="server" Text="Tên sai chuyên mục" />
    </div>
    <div>
         <asp:CheckBox ID="ckbTieuDeSai" runat="server" Text="Tiêu đề tin không dấu" />
    </div> 
    <div>
         <asp:CheckBox ID="ckbSpam" runat="server" Text="Spam/Làm mới tin/Đăng tin quá qui định" />
    </div>
    <div>
         <asp:CheckBox ID="ckbNickSpam" runat="server" Text="Lập nhiều nick đăng tin" />
    </div>
    <div>
    Mã bảo vệ:
    <asp:TextBox ID="TextBox1" runat="server" />
    <cc1:CaptchaControl ID="ccJoin"
     runat="server" 
     CaptchaBackgroundNoise="Extreme" 
     CaptchaLength="5" 
     CaptchaHeight="60" 
     CaptchaWidth="210" 
     CaptchaLineNoise="None" 
     CaptchaMinTimeout="5"
     CaptchaMaxTimeout="240" />
     <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
</div>
    <asp:Button ID="btnBaoCao" runat="server" BackColor="#FF9933" 
                            BorderStyle="Groove" Font-Bold="True" ForeColor="White" 
                            onclick="btnBaoCao1_Click" Text="Báo Cáo" />
</asp:Content>
