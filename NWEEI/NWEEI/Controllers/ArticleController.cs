using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;
using NWEEI.Repositories;
using NWEEI.ViewModels;

namespace NWEEI.Controllers
{
    public class ArticleController : Controller
    {
        IArticleRepo repo;
        ICategoryRepo catRepo;
        IWebHostEnvironment _env;

        public ArticleController(IArticleRepo r, ICategoryRepo c, IWebHostEnvironment env)
        {
            repo = r;
            catRepo = c;
            _env = env;
        }

        // GET: Article
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";
            return View(repo.GetPublishedArticles());
        }

        // get all articles for admin management
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Manage()
        {
            return View(repo.GetAllArticles());
        }

        // get all articles in a category for admin management
        [Authorize(Roles = "Admin")]
        [HttpGet("Article/Manage/{categoryID}")]
        public async Task<IActionResult> Manage(int categoryID)
        {
            return View(repo.GetArticlesByCategoryID(categoryID));
        }

        // get all published articles in a category to display to end-users
        // GET: Category/Articles/5
        public async Task<IActionResult> ByCategory(int categoryID)
        {
            ViewBag.Current = "Resources";
            return View(repo.GetPublishedArticlesByCategoryID(categoryID));
        }

        // GET: Article/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null)
            {
                return NotFound();
            }

            Article article = repo.Articles
                .FirstOrDefault(m => m.ArticleID == id);
            if (article == null)
            {
                return NotFound();
            }

            // increase view count by 1 and update
            article.Views++;
            repo.UpdateArticle(article);

            return View(article);
        }

        // GET: Article/Create
        [Authorize(Roles = "Admin")]
        public IActionResult Create()
        {
            // get categories
            List<Category> categories = repo.GetAllCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = categories,
                CurrentArticle = new Article
                {
                    Category = new Category
                    {
                        Name = ""
                    }
                }
            };

            return View(viewModel);
        }

        // POST: Article/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Create(CategorySelectorViewModel viewModel, string htmlcode)
        {
            // create new article with viewModel values and html string from RTE
            Article article = new Article();

            ViewData["IsPosted"] = true;
            ViewData["PostedValue"] = htmlcode;

            if (ModelState.IsValid)
            {
                article.Title = viewModel.CurrentArticle.Title;
                article.Body = htmlcode;
                article.DateCreated = viewModel.CurrentArticle.DateCreated;
                article.Author = viewModel.CurrentArticle.Author;
                article.IsPublished = viewModel.CurrentArticle.IsPublished;
                article.Featured = viewModel.CurrentArticle.Featured;
                article.Views = viewModel.CurrentArticle.Views;
                article.Category = catRepo.GetCategoryByID(viewModel.CurrentArticle.Category.CategoryID);

                // set publish date if article is set to be published
                if (article.IsPublished)
                {
                    article.PublishDate = DateTime.Now;
                }
                    
                repo.AddArticle(article);

                return RedirectToAction(nameof(Manage));
            }

            return View(viewModel);
        }

        // GET: Article/Edit/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            // get article
            Article article = repo.GetArticleByID((int)id);

            if (article == null)
            {
                return NotFound();
            }

            // get categories
            List<Category> categories = repo.GetAllCategories();

            // initialize new category selector VM
            CategorySelectorViewModel viewModel = new CategorySelectorViewModel
            {
                Categories = categories,
                CurrentCategory = article.Category,
                CurrentArticle = article
            };

            return View(viewModel);
        }

        // POST: Article/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int id, CategorySelectorViewModel viewModel, string htmlcode)
        {
            if (id != viewModel.CurrentArticle.ArticleID)
            {
                return NotFound();
            }

            // get existing article with id
            Article article = repo.GetArticleByID(id);

            if (ModelState.IsValid)
            {
                ViewData["IsPosted"] = true;
                ViewData["PostedValue"] = htmlcode;

                // update existing article's values with viewModel values
                article.Title = viewModel.CurrentArticle.Title;
                article.Body = htmlcode;
                article.DateCreated = viewModel.CurrentArticle.DateCreated;
                article.Author = viewModel.CurrentArticle.Author;
                article.IsPublished = viewModel.CurrentArticle.IsPublished;
                article.Featured = viewModel.CurrentArticle.Featured;
                article.Views = viewModel.CurrentArticle.Views;
                article.Category = repo.GetAllCategories()
                        .Where(c => c.CategoryID == viewModel.NewCategoryID)
                        .FirstOrDefault();

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

                return View(nameof(Details), article); // redirect to article details
            }

            return View(viewModel);
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
            return RedirectToAction(nameof(Manage));
        }

        private bool ArticleExists(int id)
        {
            return repo.Articles.Any(e => e.ArticleID == id);
        }

        #region RTE methods

        // for rich text editor
        string GetHtmlFileCode()
        {
            string fullpath = GetHtmlFilePath();
            if (!System.IO.File.Exists(fullpath))
                return "<b>No saved data yet</b>";
            return System.IO.File.ReadAllText(fullpath);
        }

        // for rich text editor
        string GetHtmlFilePath()
        {
            string filename = "/usertyped_htmlcontent.html";
            string fullpath = Path.Combine(_env.WebRootPath, filename.TrimStart('/'));
            return fullpath;
        }

        // for rich text editor
        IActionResult ReportError(string msg)
        {
            Response.ContentType = "text/plain";
            Response.StatusCode = 500;
            return Content("ERROR:" + msg);
        }

        // for rich text editor
        async Task<byte[]> FullReadDataAsync()
        {
            byte[] data = new byte[(int)Request.ContentLength];
            int len = 0;
            while (len < data.Length)
            {
                int rc = await Request.Body.ReadAsync(data, len, data.Length - len);
                if (rc == 0)
                    throw new Exception("Unexpected request data");
                len += rc;
            }
            return data;
        }

        // for rich text editor
        public async Task<IActionResult> ImageUploadHandler(string type, string name)
        {
            if (Request.ContentLength > 4000000)
            {
                return ReportError("file too big");
            }

            string ext = Path.GetExtension(name).ToLower();

            if (type.StartsWith("image/"))
            {
                switch (ext)
                {
                    case ".jpeg":
                    case ".jpg":
                    case ".png":
                        break;
                    default:
                        return ReportError("invalid file extension.");
                }

                byte[] data = await FullReadDataAsync();

                string filename = "/imageuploads/" + DateTime.Now.Ticks + "-" + Guid.NewGuid() + ext;

                string fullpath = Path.Combine(_env.WebRootPath, filename.TrimStart('/'));
                string fulldir = Path.GetDirectoryName(fullpath);
                if (!Directory.Exists(fulldir)) Directory.CreateDirectory(fulldir);

                System.IO.File.WriteAllBytes(fullpath, data);

                return Content("READY:" + filename);
            }
            else
            {
                switch (ext)
                {
                    case ".zip":
                    case ".rar":
                    case ".pdf":
                    case ".doc":
                    case ".docx":
                    case ".xls":
                    case ".xlsx":
                    case ".rtf":
                    case ".txt":
                        break;
                    default:
                        return ReportError("Invalid file extension");
                }

                string filename = "/imageuploads/" + DateTime.Now.Ticks + "-" + Guid.NewGuid() + ext;

                byte[] data = await FullReadDataAsync();

                string fullpath = Path.Combine(_env.WebRootPath, filename.TrimStart('/'));
                string fulldir = Path.GetDirectoryName(fullpath);
                if (!Directory.Exists(fulldir)) Directory.CreateDirectory(fulldir);

                System.IO.File.WriteAllBytes(fullpath, data);

                return Content("READY:" + filename);
            }
        }

#endregion

    }
}
