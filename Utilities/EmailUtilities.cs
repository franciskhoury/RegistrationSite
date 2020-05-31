using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Utilities
{
    public static class EmailUtilities
    {
        public static bool SendEmail(string sendFrom, string sendTo, string subject, string body, bool isHtml = true )
        {
            MailMessage msg = new MailMessage(sendFrom, sendTo, subject, body);
            msg.IsBodyHtml = isHtml;

            using (SmtpClient client = new SmtpClient("smtp.gmail.com", 587))
            {
                try
                {
                    string user = ConfigurationManager.AppSettings["EmailUsername"];
                    string pw = ConfigurationManager.AppSettings["EmailPassword"];
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential(user,pw);
                    client.Send(msg);
                    return true;
                }
                catch (Exception ex)
                {
                    // Do logging
                    return false;
                }
            }
        }
    }
}
