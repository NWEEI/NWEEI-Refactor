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

        // retrieval with search query
        List<Article> GetArticlesBySearchQuery(string query);
        List<FAQ> GetFAQsBySearchQuery(string query);

        // news article retrieval
        List<Article> GetNWEEINewsArticles();
        List<Article> GetFeaturedNWEEINewsArticles();
        List<Article> GetIndustryNewsArticles();
        List<Article> GetFeaturedIndustryNewsArticles();
    }
}
