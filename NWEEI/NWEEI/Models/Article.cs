using System;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class Article
    {
        public int ArticleID { get; set; }

        [Required(ErrorMessage = "Please enter a title.")]
        public string Title { get; set; }
        public string Body { get; set; }
        public DateTime DateCreated { get; set; }
        public AppUser Author { get; set; }
        public Category Category { get; set; }
        public bool IsPublished { get; set; }
        public DateTime PublishDate { get; set; }
        public bool Featured { get; set; }
        public int Views { get; set; }
    }
}
