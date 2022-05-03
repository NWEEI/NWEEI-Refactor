﻿using System;
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
            List<Article> articles = context.Articles.OrderByDescending(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .ToList();

            return articles;
        }

        // get a list of articles by category
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
        // get all articles that include a word or phrase
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            throw new NotImplementedException();
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

    }
}
