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
        private List<Organization> organizations = new List<Organization>();

        #region articles

        public IQueryable<Article> Articles
        {
            get
            {
                return articles.AsQueryable<Article>();
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


        #region organizations

        public IQueryable<Organization> Organizations
        {
            get
            {
                return organizations.AsQueryable<Organization>();
            }
        }

        // get organization that contain the search query
        // in either the name or description
        public List<Organization> GetOrgsBySearchQuery(string query)
        {
            List<Organization> matchingOrgs = organizations
                .Where(o => o.Name.Contains(query) || o.Description.Contains(query))
                .ToList();

            return matchingOrgs;
        }

        #endregion
    }
}
