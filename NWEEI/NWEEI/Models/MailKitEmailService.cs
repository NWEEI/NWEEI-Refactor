﻿using System.Linq;
using MimeKit;

namespace NWEEI.Models
{
    public class MailKitEmailService
    {
        private readonly EmailServerConfiguration _eConfig;
        public MailKitEmailService(EmailServerConfiguration eConfig)
        {
            _eConfig = eConfig;
        }
        public void Send(EmailMessage msg)
        {
            var message = new MimeMessage();
            message.To.AddRange(msg.ToAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));
            message.From.AddRange(msg.FromAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));

            message.Subject = msg.Subject;

            message.Body = new TextPart("plain")
            {
                Text = msg.Content
            };

            using (var client = new MailKit.Net.Smtp.SmtpClient())
            {
                client.Connect(_eConfig.SmtpServer, _eConfig.SmtpPort, true);

                client.AuthenticationMechanisms.Remove("XOAUTH2");
                client.Authenticate(_eConfig.SmtpUsername, _eConfig.SmtpPassword);
                client.Send(message);
                client.Disconnect(true);
            }
        }
    }
}
