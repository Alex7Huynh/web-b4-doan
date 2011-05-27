<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Login ID="Login1" runat="server" CreateUserUrl="~/TaiKhoan/DangKi.aspx" 
    onauthenticate="Login1_Authenticate" onloggedin="Login1_LoggedIn" 
    onloggingin="Login1_LoggingIn" onloginerror="Login1_LoginError" 
    PasswordLabelText="Mât Khẩu:" PasswordRecoveryUrl="~/TaiKhoan/QuenMatKhau.aspx" 
    RememberMeText="Nhớ đăng nhập lần sau của tôi" TitleText="Đăng Nhập" 
    UserNameLabelText="Người Dùng:" 
        FailureText="Tên Đăng Nhập hoặc Mật Khẩu không đúng. Xin vui lòng thử lại." 
        LoginButtonText="Đăng Nhập">
</asp:Login>
    <asp:Label ID="lblUserName" runat="server" Text="Tên UserName"></asp:Label>
    <asp:LinkButton ID="lbntDangXuat" runat="server">Đăng Xuất</asp:LinkButton>
    <asp:LinkButton ID="lbntDangKi" runat="server" 
        PostBackUrl="~/TaiKhoan/DangKi.aspx">Đăng Kí</asp:LinkButton>
    <asp:LinkButton ID="lbntQuenMatKhau" runat="server" 
        PostBackUrl="~/TaiKhoan/QuenMatKhau.aspx">Quên Mật Khẩu</asp:LinkButton>
</asp:Content>

