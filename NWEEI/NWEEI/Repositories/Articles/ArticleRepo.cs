using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class ArticleRepo : IArticleRepo
    {
        private NWEEIContext context;

        public ArticleRepo(NWEEIContext c)
        {
            context = c;
        }

        public IQueryable<Article> Articles
        {
            get
            {
                return context.Articles
                    .Include(article => article.Author)
                    .Include(article => article.Category);
            }
        }

        // add a new article
        public void AddArticle(Article article)
        {
            context.Articles.Add(article);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all articles
        public List<Article> GetAllArticles()
        {
            List<Article> articles = context.Articles
                .OrderBy(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .ToList();

            return articles;
        }

        // get a list of all published articles
        public List<Article> GetPublishedArticles()
        {
            List<Article> articles = context.Articles
                .Where(a => a.IsPublished == true)
                .OrderBy(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .ToList();

            return articles;
        }

        // get a list of articles by category
        public List<Article> GetArticlesByCategoryID(int categoryID)
        {
            List<Article> articles = context.Articles
                .OrderBy(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .Where(a => a.Category.CategoryID == categoryID)
                .ToList();

            return articles;
        }

        // get a list of published articles by category
        public List<Article> GetPublishedArticlesByCategoryID(int categoryID)
        {
            List<Article> articles = context.Articles
                .Where(a => a.IsPublished == true)
                .OrderBy(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .Where(a => a.Category.CategoryID == categoryID)
                .ToList();

            return articles;
        }

        // get a specific article by its id
        public Article GetArticleByID(int id)
        {
            Article article = context.Articles
                .Include(a => a.Author)
                .Include(a => a.Category)
                .Where(a => a.ArticleID == id)
                .FirstOrDefault();

            return article;
        }

        #endregion

        // update an article
        public void UpdateArticle(Article article)
        {
            context.Articles.Update(article);
            context.SaveChanges();
        }

        // delete an article
        public void DeleteArticle(Article article)
        {
            Article existingArticle = context.Articles.Find(article.ArticleID);
            context.Articles.Remove(existingArticle);
            context.SaveChanges();
        }

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            List<Category> categories = context.Categories
                .Include(c => c.Articles)
                .ToList();

            return categories;
        }
    }
}
