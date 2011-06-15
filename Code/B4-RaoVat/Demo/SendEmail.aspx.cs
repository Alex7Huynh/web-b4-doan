using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demo_SendEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntSend_Click(object sender, EventArgs e)
    {
        //Email nhom
        //email: araovat10@gmail.com
        //pass: b4123456789

        System.Net.Mail.MailMessage MyMailMessage = new System.Net.Mail.MailMessage(txtTo.Text.Trim(), txtFrom.Text.Trim(), txtSubject.Text, "");
        MyMailMessage.IsBodyHtml = false;
        MyMailMessage.Body = txtBody.Text;
        //provide Authentication Details need to be passed when sending email from gmail
        System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential(txtTo.Text.Trim(), "b4123456789");//Sender password

        //Smtp Mail server of Gmail is "smpt.gmail.com" and it uses port no. 587
        System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);

        //Enable SSL

        mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;
        mailClient.Send(MyMailMessage);

    }
}
