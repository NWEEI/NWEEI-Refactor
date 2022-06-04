using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class ContactForm
    {
        [Required(ErrorMessage = "Please enter your name.")]
        public string Name { get; set; }
        [EmailAddress]
        [Required(ErrorMessage = "Please enter your email address.")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please enter a message.")]
        public string Message { get; set; }
    }
}
