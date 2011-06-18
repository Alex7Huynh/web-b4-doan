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
        Style="margin-left: 293px" UserNameRequiredErrorMessage="Tên người dùng yêu cầu."
        Width="374px" meta:resourcekey="Login1Resource1">
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <LayoutTemplate>
            <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width: 374px;">
                            <tr>
                                <td align="center" colspan="2" style="color: White; background-color: #5D7B9D; font-size: 0.9em;
                                    font-weight: bold;">
                                    Đăng Nhập
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 93px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" meta:resourcekey="UserNameLabelResource1">Người Dùng:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" meta:resourcekey="UserNameResource1"
                                        Style="margin-bottom: 0px" Width="83px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="Tên người dùng yêu cầu." ToolTip="Tên người dùng yêu cầu." ValidationGroup="Login1"
                                        meta:resourcekey="UserNameRequiredResource1">Tên người dùng.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 93px">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 93px">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" meta:resourcekey="PasswordLabelResource1">Mât Khẩu:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" meta:resourcekey="PasswordResource1"
                                        Style="margin-bottom: 0px" Width="83px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Mật khẩu yêu cầu." ToolTip="Mật khẩu yêu cầu." ValidationGroup="Login1"
                                        meta:resourcekey="PasswordRequiredResource1">Mật khẩu người dùng.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Nhớ đăng nhập lần sau của tôi"
                                        meta:resourcekey="RememberMeResource1" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False" meta:resourcekey="FailureTextResource1"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                                        BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                        Font-Size="0.8em" ForeColor="#284775" Text="Đăng Nhập" ValidationGroup="Login1"
                                        meta:resourcekey="LoginButtonResource1" />
                                </td>
                            </tr>
                        </table>
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
