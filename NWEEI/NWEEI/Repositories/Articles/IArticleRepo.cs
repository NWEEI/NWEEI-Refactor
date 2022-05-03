using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IArticleRepo
    {
        // retrieval
        IQueryable<Article> Articles { get; }
        List<Article> GetAllArticles();
        List<Article> GetArticlesByCategoryID(int categoryID);
        List<Article> GetArticlesBySearchQuery(string query);
        Article GetArticleByID(int id);

        // update
        void UpdateArticle(Article article);
    }
}
