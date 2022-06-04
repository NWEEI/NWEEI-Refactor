using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class Notification
    {
        private string Message { get; set; }
        public Notification(string message) => Message = message;
        public string GetMessage() => Message;
        public void SetMessage(string message) => Message = message;
    }
}