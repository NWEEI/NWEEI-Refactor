using System;

namespace NWEEI_V2.Models
{
    public class Article : ContentItem
    {
        public int ArticleID { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public DateTime DateCreated { get; set; }
        public int Views { get; set; }
    }
}
