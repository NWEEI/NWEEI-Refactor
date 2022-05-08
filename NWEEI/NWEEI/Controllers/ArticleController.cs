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

namespace NWEEI.Controllers
{
    public class ArticleController : Controller
    {
        IArticleRepo repo;

        public ArticleController(IArticleRepo r)
        {
            repo = r;
        }

        // GET: Article
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";
            return View(await repo.Articles.ToListAsync());
        }

        // get all articles in a category
        // GET: Category/Articles/5
        public async Task<IActionResult> Category(int categoryID)
        {
            ViewBag.Current = "Resources";
            return View(repo.GetArticlesByCategoryID(categoryID));
        }

        // GET: Article/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null)
            {
                return NotFound();
            }

            Article article = await repo.Articles
                .FirstOrDefaultAsync(m => m.ArticleID == id);
            if (article == null)
            {
                return NotFound();
            }

            return View(article);
        }

        // GET: Article/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Article/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Create([Bind("ArticleID,Title,Body,DateCreated,PublishDate,IsPublished,Featured,Views")] Article article)
        {
            if (ModelState.IsValid)
            {
                repo.AddArticle(article);
                return RedirectToAction(nameof(Index));
            }
            return View(article);
        }

        // GET: Article/Edit/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null)
            {
                return NotFound();
            }

            Article article = repo.GetArticleByID((int)id);
            if (article == null)
            {
                return NotFound();
            }
            return View(article);
        }

        // POST: Article/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int id, [Bind("ArticleID,Title,Body,DateCreated,PublishDate,IsPublished,Featured,Views")] Article article)
        {
            if (id != article.ArticleID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdateArticle(article);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ArticleExists(article.ArticleID))
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
            return View(article);
        }

        // GET: Article/Delete/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Article article = await repo.Articles
                .FirstOrDefaultAsync(m => m.ArticleID == id);
            if (article == null)
            {
                return NotFound();
            }

            return View(article);
        }

        // POST: Article/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            Article article = repo.GetArticleByID((int)id);
            repo.DeleteArticle(article);
            return RedirectToAction(nameof(Index));
        }

        private bool ArticleExists(int id)
        {
            return repo.Articles.Any(e => e.ArticleID == id);
        }
    }
}
