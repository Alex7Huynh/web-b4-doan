<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuenMatKhau.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
        SubmitButtonText="Đồng Ý" 
        UserNameInstructionText="Nhập vào tên Đăng Nhập để nhận lại Mật Khẩu." 
        UserNameLabelText="Tên Đăng Nhập:" UserNameTitleText="Quên Mật Khẩu?" 
    onsendmailerror="PasswordRecovery1_SendMailError" 
        AnswerRequiredErrorMessage="Bạn phải nhập lại địa chỉ email." 
        QuestionFailureText="Email chưa đúng xin nhập lại." 
        QuestionInstructionText="Nhập địa chỉ email để lấy mật khẩu." 
        QuestionLabelText="Email:" QuestionTitleText="Xác nhậ duy nhất." 
        SuccessText="Mật khẩu đã được gửi đến địa chỉ email của bạn." 
        UserNameFailureText="Bạn không được phép truy cập thông tin nay. Xin thử lại!" 
        UserNameRequiredErrorMessage="Bạn phải nhập tên đăng nhập.">
    </asp:PasswordRecovery>
</asp:Content>

