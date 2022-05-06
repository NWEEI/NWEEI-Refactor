using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
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

        public IQueryable<Category> Categories
        {
            get
            {
                return context.Categories
                    .Include(c => c.Articles);
            }
        }

        // create a new category
        public void AddCategory(Category category)
        {
            context.Categories.Add(category);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            List<Category> categories = context.Categories
                .Include(c => c.Articles)
                .ToList();

            return categories;
        }

        // get a specific category by its id
        public Category GetCategoryByID(int id)
        {
            Category category = context.Categories
                .Include(c => c.Articles)
                .Where(c => c.CategoryID == id)
                .FirstOrDefault();

            return category;
        }

        // get a list of articles in a specific category
        public List<Article> GetArticlesByCategoryID(int id)
        {
            IQueryable<Article> articles = context.Articles
                .Include(a => a.Author)
                .Include(a => a.Category);

            List<Article> articlesByCategory = articles
                .Where(a => a.Category.CategoryID == id)
                .ToList();

            return articlesByCategory;
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
