using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IResourceRepo
    {
        IQueryable<Article> Articles { get; }
        IQueryable<FAQ> FAQs { get; }
        IQueryable<Organization> Organizations { get; }

        // retrieval with search query
        List<Article> GetArticlesBySearchQuery(string query);
        List<FAQ> GetFAQsBySearchQuery(string query);
        List<Organization> GetOrgsBySearchQuery(string query);
    }
}
