namespace NWEEI.Models
{
    public interface IEmailService
    {
        void Send(EmailMessage message);
    }
}
