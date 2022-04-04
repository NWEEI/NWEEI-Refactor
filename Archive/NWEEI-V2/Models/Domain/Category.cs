using System.ComponentModel.DataAnnotations;

namespace NWEEI_V2.Models
{
    public class Category
    {
        public int CategoryID { get; set; }
        [Required(ErrorMessage = "A(n) {0} is required.")]
        [StringLength(100, MinimumLength = 1, ErrorMessage = "String length for the {0} must be between {2} and {1}.")]
        public string Name { get; set; }
    }
}
