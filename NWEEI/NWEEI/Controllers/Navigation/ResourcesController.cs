using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NWEEI.Repositories;
using NWEEI.ViewModels;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace NWEEI.Controllers.Navigation
{
    public class ResourcesController : Controller
    {
        IResourceRepo repo;

        public ResourcesController(IResourceRepo r)
        {
            repo = r;
        }

        // GET: /Resources/Search
        // search articles, FAQs, organizations
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";

            // initialize new searchVM
            SearchVM viewModel = new SearchVM();

            return View(viewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        // search articles, FAQs, organizations
        public async Task<IActionResult> Index(SearchVM viewModel)
        {
            ViewBag.Current = "Resources";

            if (ModelState.IsValid)
            {
                // get lists of articles, FAQs, and organizations
                // that contain the search query
                viewModel.Articles = repo.GetArticlesBySearchQuery(viewModel.SearchQuery);
                viewModel.FAQs = repo.GetFAQsBySearchQuery(viewModel.SearchQuery);
                viewModel.Organizations = repo.GetOrgsBySearchQuery(viewModel.SearchQuery);

                return View(viewModel);
            }

            return NotFound();
        }

        /*
        // GET: /<controller>/
        public IActionResult Index()
        {
            ViewBag.Current = "Resources";
            return View();
        }
        */

        public IActionResult CareerMap()
        {
            ViewBag.Current = "Resources";
            return View();
        }
    }
}
