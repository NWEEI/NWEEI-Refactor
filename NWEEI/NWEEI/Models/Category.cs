using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NWEEI.Models
{
    public class Category
    {
        private List<Article> articles = new List<Article>();
        private List<FAQ> faqs = new List<FAQ>();

        public int CategoryID { get; set; }

        [Required(ErrorMessage = "A(n) {0} is required.")]
        [StringLength(100, MinimumLength = 1, ErrorMessage = "String length for the {0} must be between {2} and {1}.")]
        public string Name { get; set; }

        public List<Article> Articles { get { return articles; } }
        public List<FAQ> FAQs { get { return faqs; } }
    }
}
