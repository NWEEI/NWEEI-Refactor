using System.Collections.Generic;

namespace NWEEI.Models
{
    public class EmailMessage
    {
        public EmailMessage() { }
        public List<EmailAddress> FromAddresses { get; set; } = new();
        public List<EmailAddress> ToAddresses { get; set; } = new();
        public string Subject { get; set; }
        public string Content { get; set; }
    }
}
