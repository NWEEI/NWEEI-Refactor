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

        // create a new category
        public void AddCategory(Category category)
        {
            context.Categories.Add(category);
            context.SaveChanges();
        }

        #region retrieval methods

        public IQueryable<Category> Categories
        {
            get
            {
                return context.Categories;
            }
        }

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            List<Category> categories = context.Categories.ToList();

            return categories;
        }

        // get a specific category by its id
        public Category GetCategoryByID(int id)
        {
            Category category = context.Categories
                .Where(c => c.CategoryID == id)
                .FirstOrDefault();

            return category;
        }

        #endregion

        // update a category
        public void UpdateCategory(Category category)
        {
            context.Categories.Update(category);
            context.SaveChanges();
        }

        // delete a category
        public void DeleteCategory(Category category)
        {
            Category existingCategory = context.Categories.Find(category.CategoryID);
            context.Categories.Remove(existingCategory);
            context.SaveChanges();
        }
    }
}
