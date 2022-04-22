using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class CustomError
    {
        private string message { get; set; }
        public CustomError(string ErrorMessage) => message = ErrorMessage;
        public string GetErrorMessage() => message;
        public void SetErrorMessage(string ErrorMessage) => message = ErrorMessage;
    }
}