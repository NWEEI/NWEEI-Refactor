using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class ResourceRepo : IResourceRepo
    {
        private NWEEIContext context;

        public ResourceRepo(NWEEIContext c)
        {
            context = c;
        }

        #region articles

        public IQueryable<Article> Articles
        {
            get
            {
                return context.Articles.Include(a => a.Category);
            }
        }

        // get published articles that contain the search query
        // in either the title or body
        public List<Article> GetArticlesBySearchQuery(string query)
        {
            List<Article> articles = context.Articles
                .Where(a => a.Title.Contains(query) || a.Body.Contains(query))
                .Where(a => a.IsPublished == true)
                .OrderBy(a => a.DateCreated)
                .Include(a => a.Author)
                .Include(a => a.Category)
                .ToList();

            return articles;
        }

        #endregion


        #region FAQs

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return context.FAQs.Include(f => f.Category);
            }
        }

        // get published FAQs that contain the search query
        // in either the question or answer
        public List<FAQ> GetFAQsBySearchQuery(string query)
        {
            List<FAQ> faqs = context.FAQs
                .Where(f => f.Question.Contains(query) || f.Answer.Contains(query))
                .Where(f => f.IsPublished == true)
                .Include(f => f.Category)
                .ToList();

            return faqs;
        }


        #endregion


        #region organizations
        /*
        public IQueryable<Organization> Organizations
        {
            get
            {
                return context.Organizations
                    .Include(o => o.Tags)
                    //.Include(o => o.TagKeys);
            }
        }

        // get organization that contain the search query
        // in either the name or description
        public List<Organization> GetOrgsBySearchQuery(string query)
        {
            List<Organization> organizations = context.Organizations
                .Where(o => o.Name.Contains(query) || o.Description.Contains(query))
                //.Include(o => o.Tags)
                //.Include(o => o.TagKeys)
                .ToList();

            return organizations;
        }
        */

        #endregion
    }
}
