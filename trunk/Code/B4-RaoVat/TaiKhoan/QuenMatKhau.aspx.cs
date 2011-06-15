using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class Default2 : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        System.Net.Mail.MailMessage MyMailMessage = new System.Net.Mail.MailMessage("araovat10@gmail.com", "nhocnhobuon@gmail.com", "Pass word: *****", "");
        MyMailMessage.IsBodyHtml = false;
        MyMailMessage.Body = "Recovery password.";
        //provide Authentication Details need to be passed when sending email from gmail
        System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential("araovat10@gmail.com", "b4123456789");//Sender password

        //Smtp Mail server of Gmail is "smpt.gmail.com" and it uses port no. 587
        System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);

        //Enable SSL

        mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;
        mailClient.Send(MyMailMessage);
        this.PasswordRecovery1.MembershipProvider = "MyMembership";
    }
    protected void PasswordRecovery1_SendMailError(object sender, SendMailErrorEventArgs e)
    {

        e.Handled = true;
    }
    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {
        //Email nhom
        //email: araovat10@gmail.com
        //pass: b4123456789
    }
}
