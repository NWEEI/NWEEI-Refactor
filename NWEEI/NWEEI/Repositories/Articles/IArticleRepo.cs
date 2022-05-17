using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IArticleRepo
    {
        IQueryable<Article> Articles { get; }

        // create
        void AddArticle(Article article);

        // retrieve
        List<Article> GetAllArticles();
        List<Article> GetArticlesByCategoryID(int categoryID);
        List<Article> GetArticlesBySearchQuery(string query);
        Article GetArticleByID(int id);
        List<Category> GetAllCategories();

        // update
        void UpdateArticle(Article article);

        // delete
        void DeleteArticle(Article article);
    }
}
