using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;
using NWEEI.Repositories;
using NWEEI.ViewModels;

namespace NWEEI.Controllers
{
    public class FAQController : Controller
    {
        IFAQRepo repo;
        ICategoryRepo catRepo;

        public FAQController(IFAQRepo r, ICategoryRepo cr)
        {
            repo = r;
            catRepo = cr;
        }
        
        // GET: FAQ
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";

            return View(repo.GetFAQCategories());
        }

        // get all FAQs
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Manage()
        {
            return View(repo.FAQs.ToList());
        }

        // get all FAQs in a category
        public async Task<IActionResult> ByCategory(int categoryID)
        {
            ViewBag.Current = "Resources";

            // only return published FAQs
            return View(repo.GetPublishedFAQsByCategoryID(categoryID));
        }

        // GET: FAQ/Details/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Details(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null)
            {
                return NotFound();
            }

            FAQ fAQ = repo.FAQs
                .FirstOrDefault(m => m.FAQID == id);
            if (fAQ == null)
            {
                return NotFound();
            }

            return View(fAQ);
        }

        // GET: FAQ/Create
        [Authorize(Roles = "Admin")]
        public IActionResult Create()
        {
            // get categories
            List<Category> categories = repo.GetAllCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = categories,
                CurrentFAQ = new FAQ
                {
                    Category = new Category
                    {
                        Name = ""
                    }
                }
            };

            return View(viewModel);
        }

        // POST: FAQ/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Create(CategorySelectorViewModel viewModel)
        {
            FAQ faq = new FAQ();

            if (ModelState.IsValid)
            {
                // create new FAQ with viewModel values
                faq.Question = viewModel.CurrentFAQ.Question;
                faq.Answer = viewModel.CurrentFAQ.Answer;
                faq.IsPublished = viewModel.CurrentFAQ.IsPublished;
                faq.Featured = viewModel.CurrentFAQ.Featured;
                faq.Category = catRepo.GetCategoryByID(viewModel.CurrentFAQ.Category.CategoryID);

                repo.AddFAQ(faq);
                return RedirectToAction(nameof(Manage));
            }
            return View(viewModel);
        }

        // GET: FAQ/Edit/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            // get FAQ
            FAQ faq = repo.GetFAQByID((int)id);
            if (faq == null)
            {
                return NotFound();
            }

            // get categories
            List<Category> categories = repo.GetAllCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = categories,
                CurrentCategory = faq.Category,
                CurrentFAQ = faq
            };

            return View(viewModel);
        }

        // POST: FAQ/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int id, CategorySelectorViewModel viewModel)

        {
            if (id != viewModel.CurrentFAQ.FAQID)
            {
                return NotFound();
            }

            // get existing FAQ with id
            FAQ faq = repo.GetFAQByID(id);

            if (ModelState.IsValid)
            {
                // update existing FAQ's values with viewModel values
                faq.Question = viewModel.CurrentFAQ.Question;
                faq.Answer = viewModel.CurrentFAQ.Answer;
                faq.IsPublished = viewModel.CurrentFAQ.IsPublished;
                faq.Featured = viewModel.CurrentFAQ.Featured;
                faq.Category = repo.GetAllCategories()
                    .Where(c => c.CategoryID == viewModel.NewCategoryID)
                    .FirstOrDefault();

                try
                {
                    repo.UpdateFAQ(faq);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FAQExists(viewModel.CurrentFAQ.FAQID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Manage));
            }
            return View(viewModel);
        }

        // GET: FAQ/Delete/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var fAQ = await repo.FAQs
                .FirstOrDefaultAsync(m => m.FAQID == id);
            if (fAQ == null)
            {
                return NotFound();
            }

            return View(fAQ);
        }

        // POST: FAQ/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            FAQ faq = repo.GetFAQByID((int)id);
            repo.DeleteFAQ(faq);
            return RedirectToAction(nameof(Manage));
        }

        private bool FAQExists(int id)
        {
            return repo.FAQs.Any(e => e.FAQID == id);
        }
    }
}
