using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NWEEI.Models;
using NWEEI.Repositories;

namespace NWEEI.Views.Shared.Components.QuickArticles
{
    public class QuickArticlesViewComponent : ViewComponent
    {
        List<Article> topArticles;
        IResourceRepo repo;

        public QuickArticlesViewComponent(IResourceRepo r)
        {
            repo = r;
        }

        // takes a string whichArticles that specifies the type of articles to retrieve
        public async Task<IViewComponentResult> InvokeAsync(string whichArticles)
        {
            topArticles = await GetItemsAsync(whichArticles);
            return View(topArticles);
        }

        private async Task<List<Article>> GetItemsAsync(string whichArticles)
        {
            List<Article> articles = new List<Article>();

            // use whichArticles to determine which repo method to call
            if (whichArticles == "NWEEI News")
            {
                articles = repo.GetFeaturedNWEEINewsArticles();
            }
            else if (whichArticles == "Industry News")
            {
                articles = repo.GetFeaturedIndustryNewsArticles();
            }

            return articles;
        }
    }
}
