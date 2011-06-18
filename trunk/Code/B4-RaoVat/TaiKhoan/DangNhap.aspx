<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DangNhap.aspx.cs" Inherits="Default2" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:Login ID="Login1" runat="server" CreateUserUrl="~/TaiKhoan/DangKi.aspx" OnAuthenticate="Login1_Authenticate"
        OnLoggedIn="Login1_LoggedIn" OnLoggingIn="Login1_LoggingIn" OnLoginError="Login1_LoginError"
        PasswordLabelText="Mât Khẩu:" PasswordRecoveryUrl="~/TaiKhoan/QuenMatKhau.aspx"
        RememberMeText="Nhớ đăng nhập lần sau của tôi" TitleText="Đăng Nhập" UserNameLabelText="Người Dùng:"
        FailureText="Tên Đăng Nhập hoặc Mật Khẩu không đúng. Xin vui lòng thử lại." LoginButtonText="Đăng Nhập"
        BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid"
        BorderWidth="1px" Font-Names="Tahoma" Font-Size="11pt" ForeColor="#333333" PasswordRequiredErrorMessage="Mật khẩu yêu cầu."
        UserNameRequiredErrorMessage="Tên người dùng yêu cầu."
        Width="374px" meta:resourcekey="Login1Resource1">
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <LayoutTemplate>
            <table border="0" cellpadding="0" style="width: 435px;">
                <tr>
                    <td align="center" colspan="3" style="color: White; background-color: #5D7B9D; font-size: 0.9em;
                    font-weight: bold;">
                        Đăng Nhập
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 96px">
                        <asp:Label ID="UserNameLabel" runat="server" 
                        AssociatedControlID="UserName" meta:resourcekey="UserNameLabelResource1">Người Dùng:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="UserName" runat="server" 
                        Font-Size="0.8em" meta:resourcekey="UserNameResource1" 
                        style="margin-bottom: 0px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                        ErrorMessage="Tên người dùng yêu cầu." 
                        meta:resourcekey="UserNameRequiredResource1" ToolTip="Tên người dùng yêu cầu." 
                        ValidationGroup="Login1">Tên người dùng.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 96px">
                        <asp:Label ID="PasswordLabel" runat="server" 
                        AssociatedControlID="Password" meta:resourcekey="PasswordLabelResource1">Mât Khẩu:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" 
                        Font-Size="0.8em" meta:resourcekey="PasswordResource1" 
                        style="margin-bottom: 0px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                        ErrorMessage="Mật khẩu yêu cầu." meta:resourcekey="PasswordRequiredResource1" 
                        ToolTip="Mật khẩu yêu cầu." ValidationGroup="Login1">Mật khẩu người dùng.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:CheckBox ID="RememberMe" runat="server" 
                        meta:resourcekey="RememberMeResource1" Text="Nhớ đăng nhập lần sau của tôi" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="color: Red;">
                        <asp:Literal ID="FailureText" runat="server" 
                        EnableViewState="False" meta:resourcekey="FailureTextResource1"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Button ID="LoginButton" runat="server" 
                        BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                        CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
                        meta:resourcekey="LoginButtonResource1" Text="Đăng Nhập" 
                        ValidationGroup="Login1" />
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
    <asp:Label ID="lblUserName" runat="server" Text="Tên UserName" meta:resourcekey="lblUserNameResource1"></asp:Label>
    &nbsp;
    <asp:LinkButton ID="lbntDangKi" runat="server" PostBackUrl="~/TaiKhoan/DangKi.aspx"
        meta:resourcekey="lbntDangKiResource1"> Đăng Kí</asp:LinkButton>
    &nbsp;
    <asp:LinkButton ID="lbntQuenMatKhau" runat="server" PostBackUrl="~/TaiKhoan/QuenMatKhau2.aspx"
        meta:resourcekey="lbntQuenMatKhauResource1"> Quên Mật Khẩu</asp:LinkButton>
</asp:Content>
