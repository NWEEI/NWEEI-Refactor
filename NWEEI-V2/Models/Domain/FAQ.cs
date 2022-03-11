using System.ComponentModel.DataAnnotations;

namespace NWEEI_V2.Models
{
    public class FAQ : ContentItem
    {
        public int FAQID { get; set; }
        [Required(ErrorMessage = "A(n) {0} is required.")]
        public string Question { get; set; }
        [Required(ErrorMessage = "A(n) {0} is required.")]
        public string Answer { get; set; }
        public int Upvotes { get; set; }
    }
}
