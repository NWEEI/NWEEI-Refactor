using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class CategoryRepo : ICategoryRepo
    {
        private NWEEIContext context;

        public CategoryRepo(NWEEIContext c)
        {
            context = c;
        }


        #region retrieval methods

        public IQueryable<Category> Categories
        {
            get
            {
                return context.Categories;
            }
        }

        public List<Category> GetAllCategories()
        {
            List<Category> categories = context.Categories.ToList();

            return categories;
        }

        public Category GetCategoryByID(int id)
        {
            Category category = context.Categories
                .Where(c => c.CategoryID == id)
                .FirstOrDefault();

            return category;
        }

        #endregion

        public void UpdateCategory(Category category)
        {
            context.Categories.Update(category);
            context.SaveChanges();
        }
    }
}
