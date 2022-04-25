using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IArticleRepo
    {
        // retrieval methods
        IQueryable<Article> Articles { get; }
        List<Article> GetAllArticles();
        List<Article> GetArticlesByCategoryID(int categoryID);
        List<Article> GetArticlesBySearchQuery(string query);
        Article GetArticleByID(int id);

    }
}
