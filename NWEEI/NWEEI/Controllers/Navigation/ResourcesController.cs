using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NWEEI.Models;
using NWEEI.Repositories;
using NWEEI.ViewModels;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace NWEEI.Controllers.Navigation
{
    public class ResourcesController : Controller
    {
        IResourceRepo repo;
        IOrganizationRepo orgRepo;

        public ResourcesController(IResourceRepo r, IOrganizationRepo oR)
        {
            repo = r;
            orgRepo = oR;
        }

        // GET: /Resources/Search
        // search articles, FAQs, organizations
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";

            // initialize new searchVM
            SearchViewModel viewModel = new SearchViewModel
            {
                SearchQuery = "",
                HasResults = false,
                Articles = new List<Article>(),
                FAQs = new List<FAQ>(),
                Organizations = new List<Organization>()
            };

            return View(viewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        // search articles, FAQs, organizations
        public async Task<IActionResult> Index(SearchViewModel viewModel)
        {
            ViewBag.Current = "Resources";

            if (ModelState.IsValid)
            {
                // get lists of articles, FAQs, and organizations
                // that contain the search query
                viewModel.Articles = repo.GetArticlesBySearchQuery(viewModel.SearchQuery);
                viewModel.FAQs = repo.GetFAQsBySearchQuery(viewModel.SearchQuery);
                //viewModel.Organizations = repo.GetOrgsBySearchQuery(viewModel.SearchQuery);

                // if results are found, set HasResults to true
                // TODO: update to include orgs once built out
                if (viewModel.Articles.Count > 0 || viewModel.FAQs.Count > 0)
                {
                    viewModel.HasResults = true;
                }

                return View(viewModel);
            }

            return NotFound();
        }

        public IActionResult CareerMap()
        {
            ViewBag.Current = "Resources";
            return View();
        }

        public async Task<IActionResult> IndustryAssociations()
        {
            ViewBag.Current = "Resources";
            List<Organization> orgs = orgRepo.GetAllOrganizationsAZ();
            return View(orgs);
        }

        public async Task<IActionResult> NWEEINews()
        {
            ViewBag.Current = "Resources";
            return View(repo.GetNWEEINewsArticles());
        }

        public async Task<IActionResult> IndustryNews()
        {
            ViewBag.Current = "Resources";
            return View(repo.GetIndustryNewsArticles());
        }
    }
}
