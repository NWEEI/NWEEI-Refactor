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

        public FAQController(IFAQRepo r)
        {
            repo = r;
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
            return View(repo.GetFAQsByCategoryID(categoryID));
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
            // TODO: update to return full list of categories,
            // not just categories with FAQs currently assigned
            // get FAQ categories
            List<Category> faqCategories = repo.GetFAQCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = faqCategories,
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
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
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
                faq.Category = repo.GetFAQCategories()
                    .Where(c => c.CategoryID == viewModel.CurrentFAQ.Category.CategoryID)
                    .FirstOrDefault();

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

            // get FAQ categories
            List<Category> faqCategories = repo.GetFAQCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = faqCategories,
                CurrentCategory = faq.Category,
                CurrentFAQ = faq
            };

            return View(viewModel);
        }

        // POST: FAQ/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        //public async Task<IActionResult> Edit(int id, [Bind("FAQID,Question,Answer,IsPublished,Featured")] FAQ fAQ)
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
                try
                {
                    // update existing FAQ's values with viewModel values
                    faq.Category = repo.GetFAQCategories()
                        .Where(c => c.CategoryID == viewModel.NewCategoryID)
                        .FirstOrDefault();

                    faq.Question = viewModel.CurrentFAQ.Question;
                    faq.Answer = viewModel.CurrentFAQ.Answer;
                    faq.IsPublished = viewModel.CurrentFAQ.IsPublished;
                    faq.Featured = viewModel.CurrentFAQ.Featured;

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
