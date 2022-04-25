using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
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

        public Article GetArticleByID(int id)
        {
            Article article = articles.Find(a => a.ArticleID == id);
            return article;
        }

        public List<Article> GetArticlesByCategoryID(int categoryID)
        {
            List<Article> articlesByCategory = articles.Where
                (a => a.Category.CategoryID == categoryID).ToList();

            return articlesByCategory;
        }

        // TODO: build out search functionality
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }
    }
}
