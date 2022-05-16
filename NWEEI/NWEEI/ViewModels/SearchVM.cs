using System;
using System.Collections.Generic;
using NWEEI.Models;

namespace NWEEI.ViewModels
{
    public class SearchVM
    {
        public string SearchQuery { get; set; }
        public List<Article> Articles { get; set; }
        public List<FAQ> FAQs { get; set; }
        public List<Organization> Organizations { get; set; }
    }
}
