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

namespace NWEEI.Controllers
{
    public class ArticleController : Controller
    {
        IArticleRepo repo;
        IWebHostEnvironment _env;

        public ArticleController(IArticleRepo r, IWebHostEnvironment env)
        {
            repo = r;
            _env = env;
        }

        // GET: Article
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Index()
        {
            return View(await repo.Articles.ToListAsync());
        }

        // get all articles in a category
        // GET: Category/Articles/5
        public async Task<IActionResult> Category(int categoryID)
        {
            return View(repo.GetArticlesByCategoryID(categoryID));
        }

        // GET: Article/Details/5
        public async Task<IActionResult> Details(int? id)
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
        public async Task<IActionResult> Create([Bind("ArticleID,Title,Body,DateCreated,PublishDate,IsPublished,Featured,Views")] Article article, string htmlcode)
        {
            ViewData["IsPosted"] = true;
            ViewData["PostedValue"] = htmlcode;
            article.Body = htmlcode;
            if (article.IsPublished)
                article.PublishDate = DateTime.Now;
            if (ModelState.IsValid)
            {
                repo.AddArticle(article);
                return RedirectToAction(nameof(Index));
            }
            return View(article);
        }
        
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

        // GET: Article/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
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
        public async Task<IActionResult> Edit(int id, [Bind("ArticleID,Title,Body,DateCreated,PublishDate,IsPublished,Featured,Views")] Article article, string htmlcode)
        {
            if (id != article.ArticleID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                ViewData["IsPosted"] = true;
                ViewData["PostedValue"] = htmlcode;
                article.Body = htmlcode;
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
