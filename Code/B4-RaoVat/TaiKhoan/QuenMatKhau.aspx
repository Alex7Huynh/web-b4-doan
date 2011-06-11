<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuenMatKhau.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

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
        UserNameRequiredErrorMessage="Bạn phải nhập tên đăng nhập." 
        BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Tahoma" Font-Size="11pt" 
        GeneralFailureText="Khôi phục mật khẩu không thành công. Xin thử lại." 
        style="margin-left: 299px" Width="429px" 
        meta:resourcekey="PasswordRecovery1Resource1">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
    </asp:PasswordRecovery>
</asp:Content>

