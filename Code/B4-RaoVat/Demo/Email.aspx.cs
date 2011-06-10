using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        //Chỉnh lại địa chỉ email và password
        string EmailAddress = "";
        string EmailPassword = "";
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com",587);
        SmtpServer.Credentials = new System.Net.NetworkCredential(EmailAddress, EmailPassword);
        SmtpServer.EnableSsl = true;
        MailMessage mail = new MailMessage();
        String[] addr = txtTo.Text.Split(',');
        try
        {
            mail.From = new MailAddress(EmailAddress,
            "Raovat-B4", System.Text.Encoding.UTF8);
            Byte i;
            for (i = 0; i < addr.Length; i++)
                mail.To.Add(addr[i]);

            mail.Subject = txtSubject.Text;
            mail.Body = txtConTent.Text;

            mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            mail.ReplyTo = new MailAddress(txtTo.Text);
            SmtpServer.Send(mail);
        }
        catch (Exception ex)
        { Response.Redirect("~/Default.aspx?rv=submitraovat&ss=fail"); }

        Response.Redirect("~/Default.aspx?rv=submitraovat&ss=success");
    }
}
