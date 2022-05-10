using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class PaymentOption
    {
        public int PaymentOptionID { get; set; }
        [Required(ErrorMessage = "Please enter a payment option.")]
        public string Option { get; set; }
    }
}
