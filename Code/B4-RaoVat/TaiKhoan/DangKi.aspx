<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        AnswerLabelText="Câu Trả Lời Bảo Mật:" 
        CompleteSuccessText="Tài khoản của bạn đã tạo thành công." 
        ConfirmPasswordCompareErrorMessage="Mật khẩu cần phải giống nhau." 
        ConfirmPasswordLabelText="Điền Lại Mật Khẩu;" 
        DuplicateEmailErrorMessage="Địa chỉ email này đã tồn tại, xin vui lòng điền địa chỉ email khác." 
        DuplicateUserNameErrorMessage="Tên người dùng này đã tồn tại xin vui lòng điền lại tên người dùng khác." 
        onload="CreateUserWizard1_Load" PasswordLabelText="Mật Khẩu:" 
        QuestionLabelText="Câu Hỏi Bảo Mật:" UserNameLabelText="Tên Người Dùng:">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

