using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;
using NWEEI.Repositories;

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

        // get all FAQs in a category
        public async Task<IActionResult> ByCategory(int categoryID)
        {
            ViewBag.Current = "Resources";
            return View(repo.GetFAQsByCategoryID(categoryID));
        }

        // GET: FAQ/Details/5
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
        public IActionResult Create()
        {
            return View();
        }

        // POST: FAQ/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("FAQID,Question,Answer,IsPublished,Featured")] FAQ fAQ)
        {
            if (ModelState.IsValid)
            {
                repo.AddFAQ(fAQ);
                return RedirectToAction(nameof(Index));
            }
            return View(fAQ);
        }

        // GET: FAQ/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            FAQ faq = repo.GetFAQByID((int)id);
            if (faq == null)
            {
                return NotFound();
            }
            return View(faq);
        }

        // POST: FAQ/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("FAQID,Question,Answer,IsPublished,Featured")] FAQ fAQ)
        {
            if (id != fAQ.FAQID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdateFAQ(fAQ);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FAQExists(fAQ.FAQID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(fAQ);
        }

        // GET: FAQ/Delete/5
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
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            FAQ faq = repo.GetFAQByID((int)id);
            repo.DeleteFAQ(faq);
            return RedirectToAction(nameof(Index));
        }

        private bool FAQExists(int id)
        {
            return repo.FAQs.Any(e => e.FAQID == id);
        }
    }
}
