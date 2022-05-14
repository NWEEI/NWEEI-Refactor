using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using NWEEI.Models;

namespace NWEEI.ViewModels
{
    public class CategorySelectorViewModel
    {
        public List<Category> Categories { get; set; }
        public Category CurrentCategory { get; set; }
        public int IndexOfCurrentCategory { get; set; }
        public int NewCategoryID { get; set; }

        public FAQ CurrentFAQ { get; set; }
        public Article CurrentArticle { get; set; }
    }
}
