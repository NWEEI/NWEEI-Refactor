using System;
using System.Collections.Generic;
using System.Linq;
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

        // create a new category
        public void AddCategory(Category category)
        {
            // attempt to retrieve existing category
            Category existingCategory = categories.Find(c => c.Name == category.Name);

            // add category to list if it doesn't already exist
            if (existingCategory == null)
            {
                // simulate auto-incremented primary key and add category to list
                category.CategoryID = categories.Count;
                categories.Add(category);
            }
            else
            {
                throw new Exception("Category already exists");
            }
        }

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            categories = Categories.ToList();

            return categories;
        }

        // get a specific category by its id
        public Category GetCategoryByID(int id)
        {
            Category category = categories.Find(c => c.CategoryID == id);
            return category;
        }

        // update a category
        public void UpdateCategory(Category category)
        {
            // retrieve category from list
            Category existingCategory = categories.Find(c => c.CategoryID == c.CategoryID);

            // update its properties
            existingCategory.Name = category.Name;
        }

        // delete a category
        public void DeleteCategory(Category category)
        {
            Category existingCategory = categories.Find(c => c.CategoryID == category.CategoryID);
            categories.Remove(existingCategory);
        }
    }
}
