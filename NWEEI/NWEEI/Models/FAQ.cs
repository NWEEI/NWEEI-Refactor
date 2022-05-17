using System;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class FAQ
    {
        public int FAQID { get; set; }

        [Required(ErrorMessage = "Please enter a question.")]
        public string Question { get; set; }

        [Required(ErrorMessage = "Please enter an answer.")]
        public string Answer { get; set; }

        [Required(ErrorMessage = "Please select a category.")]
        public Category Category { get; set; }

        public bool IsPublished { get; set; }
        public bool Featured { get; set; }
    }
}
