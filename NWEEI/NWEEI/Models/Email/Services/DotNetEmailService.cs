using System.Linq;
using System.Net.Mail;
using System.Net;
using MimeKit;
using Microsoft.Extensions.Options;
using System.Threading.Tasks;

namespace NWEEI.Models
{
    public class DotNetEmailService : IEmailService
    {
        private readonly MailSettings _mailSettings;
        
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="mailSettings">
        /// Using startup.cs, appsettings.json, and MailSettings.cs, creates an object that populates the properties needed to send an email from an SMTP server.
        /// </param>
        public DotNetEmailService(IOptions<MailSettings> mailSettings) => _mailSettings = mailSettings.Value;
        
        /// <summary> Sends an email using System.Net.Mail. </summary>
        /// <param name="msg"> The message to send. All of it's fields should have been populated when it is passed in, with the exception of fromAddresses. </param>
        public void Send(EmailMessage msg)
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            //create the mailservice message
            MailMessage mailMessage = new();

            //set the addresses 
            mailMessage.From = new MailAddress(_mailSettings.Address, _mailSettings.DisplayName); //IMPORTANT: This must be same as your smtp authentication address.
            foreach (EmailAddress toAddress in msg.ToAddresses)
                mailMessage.To.Add(new MailAddress(toAddress.Address, toAddress.Name));

            //set the subject & content
            mailMessage.Subject = msg.Subject;
            mailMessage.Body = msg.Content;

            //send the message 
            SmtpClient smtp = new(_mailSettings.Host);

            //IMPORANT:  Your smtp login email MUST be same as your FROM address. 
            NetworkCredential Credentials = new(_mailSettings.Address, _mailSettings.Password);
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = Credentials;
            smtp.Port = _mailSettings.Port;
            smtp.EnableSsl = false;
            smtp.Send(mailMessage); 
        }
    }
}
