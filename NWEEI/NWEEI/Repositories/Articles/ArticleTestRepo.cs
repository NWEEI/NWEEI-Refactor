using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class ArticleTestRepo : IArticleRepo
    {
        private List<Article> articles = new List<Article>();
        private List<Category> categories = new List<Category>();

        public IQueryable<Article> Articles
        {
            get
            {
                return articles.AsQueryable<Article>();
            }
        }

        // add a new article
        public void AddArticle(Article article)
        {
            // attempt to retrieve existing article
            Article existingArticle = articles.Find(a => a.Title == article.Title && a.Body == article.Body);

            // add article to list if it doesn't already exist
            if (existingArticle == null)
            {
                // simulate auto-incremented primary key and add article to list
                article.ArticleID = articles.Count;
                articles.Add(article);
            }
            else
            {
                throw new Exception("Article already exists");
            }
        }

        // get a list of all articles
        public List<Article> GetAllArticles()
        {
            articles = Articles.ToList();

            return articles;
        }

        // get a list of articles by category
        public List<Article> GetArticlesByCategoryID(int categoryID)
        {
            List<Article> articlesByCategory = articles
                .Where(a => a.Category.CategoryID == categoryID)
                .ToList();

            return articlesByCategory;
        }

        // TODO: build out search functionality
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }

        // get a specific article by its id
        public Article GetArticleByID(int id)
        {
            Article article = articles.Find(a => a.ArticleID == id);
            return article;
        }

        // update an article
        public void UpdateArticle(Article article)
        {
            // retrieve article from list
            Article existingArticle = articles.Find(a => a.ArticleID == a.ArticleID);

            // update its properties
            existingArticle.Title = article.Title;
            existingArticle.Body = article.Body;
            existingArticle.DateCreated = article.DateCreated;
            existingArticle.Author = article.Author;
            existingArticle.Category = article.Category;
            existingArticle.PublishDate = article.PublishDate;
            existingArticle.IsPublished = article.IsPublished;
            existingArticle.Featured = article.Featured;
            existingArticle.Views = article.Views;
        }

        // delete an article
        public void DeleteArticle(Article article)
        {
            Article existingArticle = articles.Find(a => a.ArticleID == article.ArticleID);
            articles.Remove(existingArticle);
        }

        public IQueryable<Category> Categories
        {
            get
            {
                return categories.AsQueryable<Category>();
            }
        }

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            categories = Categories.ToList();

            return categories;
        }
    }
}
