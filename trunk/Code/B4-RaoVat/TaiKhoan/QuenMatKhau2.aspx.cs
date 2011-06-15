using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using BUS;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntDongY_Click(object sender, EventArgs e)
    {
        if (txtUser.Text == "")
        {
            lblThongBaoUser.Text = "Xin vui lòng nhập tên người dùng để lấy lại mật khẩu.";
        }
        if (txtEmail.Text == "")
        {
            lblThongBaoEmail.Text = "Xin vui lòng nhập vào địa chỉ Email để lấy lại mật khẩu.";
        }
        if (txtUser.Text != "" && txtEmail.Text != "")
        {
            NGUOIDUNG ng = new NGUOIDUNG();
            ng = NguoiDungDAO.LayNguoiDungTheoTen(txtUser.Text.Trim());
            System.Net.Mail.MailMessage MyMailMessage = new System.Net.Mail.MailMessage("araovat10@gmail.com", txtEmail.Text.ToString().Trim(), "[Rao vặt] Lấy lại mật khẩu", "");
            MyMailMessage.IsBodyHtml = false;
            MyMailMessage.Body = "Recovery password in Raovat for B4:" + "\nUser Name: " + ng.TenNguoiDung.ToString() + "\nPassword: " + ng.MatKhau.ToString() + "\nThank you for much, admin!";
            //provide Authentication Details need to be passed when sending email from gmail
            System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential("araovat10@gmail.com", "b4123456789");//Sender password

            //Smtp Mail server of Gmail is "smpt.gmail.com" and it uses port no. 587
            System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);

            //Enable SSL

            mailClient.EnableSsl = true;
            mailClient.UseDefaultCredentials = false;
            mailClient.Credentials = mailAuthentication;
            mailClient.Send(MyMailMessage);

            lblThank.Text = "Mật khẩu đã gửi đến địa chỉ email:" + txtEmail.Text.ToString().Trim() + "\nCảm Ơn bạn nhiều lắm.";

        }
    }
}
