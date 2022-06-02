using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class ResourceTestRepo : IResourceRepo
    {
        private List<Article> articles = new List<Article>();
        private List<FAQ> faqs = new List<FAQ>();

        #region articles

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

        // get published articles that contain the search query
        // in either the title or body
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            List<Article> matchingArticles = articles
                .Where(a => a.Title.Contains(query) || a.Body.Contains(query))
                .Where(a => a.IsPublished == true)
                .ToList();

            return matchingArticles;
        }

        // get published articles from the "NWEEI News Articles" category (categoryID 7)
        public List<Article> GetNWEEINewsArticles()
        {
            int categoryID = 7;

            List<Article> newsArticles = articles
                .Where(a => a.Category.CategoryID == categoryID && a.IsPublished == true)
                .OrderByDescending(a => a.Featured)
                .ThenByDescending(a => a.DateCreated)
                .ToList();

            return newsArticles;
        }

        // get featured published articles from the "NWEEI News Articles" category (categoryID 7)
        public List<Article> GetFeaturedNWEEINewsArticles()
        {
            int categoryID = 7;

            List<Article> newsArticles = articles
                .Where(a => a.Category.CategoryID == categoryID
                    && a.IsPublished == true
                    && a.Featured == true)
                .OrderByDescending(a => a.Featured)
                .ThenByDescending(a => a.DateCreated)
                .ToList();

            return newsArticles;
        }

        // get published articles from news-related categories:
        // "Short News Snippets" (categoryID 4)
        // "News" (categoryID 21)
        // "News" (categoryID 51)
        public List<Article> GetIndustryNewsArticles()
        {
            int[] categoryIDs = { 4, 21, 51 };

            List<Article> newsArticles = articles
                .Where(a => a.IsPublished == true)
                .Where(a => categoryIDs.Contains(a.Category.CategoryID))
                .OrderByDescending(a => a.Featured)
                .ThenByDescending(a => a.DateCreated)
                .ToList();

            return newsArticles;
        }

        // get featured published articles from news-related categories:
        // "Short News Snippets" (categoryID 4)
        // "News" (categoryID 21)
        // "News" (categoryID 51)
        public List<Article> GetFeaturedIndustryNewsArticles()
        {
            int[] categoryIDs = { 4, 21, 51 };

            List<Article> newsArticles = articles
                .Where(a => a.IsPublished == true && a.Featured == true)
                .Where(a => categoryIDs.Contains(a.Category.CategoryID))
                .OrderByDescending(a => a.Featured)
                .ThenByDescending(a => a.DateCreated)
                .ToList();

            return newsArticles;
        }

        #endregion


        #region FAQs

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return faqs.AsQueryable<FAQ>();
            }
        }

        // get published FAQs that contain the search query
        // in either the question or answer
        public List<FAQ> GetFAQsBySearchQuery(string query)
        {
            List<FAQ> matchingFAQs = faqs
                .Where(f => f.Question.Contains(query) || f.Answer.Contains(query))
                .Where(f => f.IsPublished == true)
                .ToList();

            return matchingFAQs;
        }


        #endregion
    }
}
