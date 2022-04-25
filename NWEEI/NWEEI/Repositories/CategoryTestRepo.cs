using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class CategoryTestRepo : ICategoryRepo
    {
        private List<Category> categories = new List<Category>();

        public IQueryable<Category> Categories
        {
            get
            {
                return categories.AsQueryable<Category>();
            }
        }

        public List<Category> GetAllCategories()
        {
            categories = Categories.ToList();

            return categories;
        }

        public Category GetCategoryByID(int id)
        {
            Category category = categories.Find(c => c.CategoryID == id);
            return category;
        }
    }
}
