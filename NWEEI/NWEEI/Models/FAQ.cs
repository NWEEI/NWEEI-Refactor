using System;

namespace NWEEI.Models
{
    public class FAQ
    {
        public int FAQID { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
        public Category Category { get; set; }
        public bool IsPublished { get; set; }
        public bool Featured { get; set; }
    }
}
