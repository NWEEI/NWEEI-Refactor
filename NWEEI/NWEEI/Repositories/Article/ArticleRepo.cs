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


        #region retrieval methods

        public IQueryable<Article> Articles
        {
            get
            {
                return context.Articles
                    .Include(article => article.Author)
                    .Include(article => article.Category);
            }
        }

        public List<Article> GetAllArticles()
        {
            List<Article> articles = context.Articles.OrderByDescending(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .ToList();

            return articles;
        }

        public Article GetArticleByID(int id)
        {
            Article article = context.Articles
                .Include(a => a.Author)
                .Include(a => a.Category)
                .Where(a => a.ArticleID == id)
                .FirstOrDefault();

            return article;
        }

        public List<Article> GetArticlesByCategoryID(int categoryID)
        {
            List<Article> articles = context.Articles.OrderByDescending(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .Where(a => a.Category.CategoryID == categoryID)
                .ToList();

            return articles;
        }

        // TODO: build out search functionality
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }

        #endregion

    }
}
