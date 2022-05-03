using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class ArticleTestRepo : IArticleRepo
    {
        private List<Article> articles = new List<Article>();

        public IQueryable<Article> Articles
        {
            get
            {
                return articles.AsQueryable<Article>();
            }
        }

        public List<Article> GetAllArticles()
        {
            articles = Articles.ToList();

            return articles;
        }

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

        public Article GetArticleByID(int id)
        {
            Article article = articles.Find(a => a.ArticleID == id);
            return article;
        }

        // TODO: write test update method
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
    }
}
