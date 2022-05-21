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
    public class TagController : Controller
    {
        ITagRepo repo;

        public TagController( ITagRepo r ) => repo = r;

        // GET: Tag
        public IActionResult Index( ) => View( repo.GetAllTags( ) );

        // GET: Tag/Details/5
        public IActionResult Details(int? id)
        {
            if (id is null) return NotFound( );

            Tag tag = repo.GetTagByID( (int)id );

            return tag is null ? NotFound( ) : View( tag );
        }

        // GET: Tag/Create
        public IActionResult Create( ) => View( );

        // POST: Tag/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("TagID,Name")] Tag tag)
        {
            if (!ModelState.IsValid ) return View( tag );
            repo.AddTag(tag);
            return RedirectToAction(nameof(Index));
        }

        // GET: Tag/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id is null) return NotFound();

            Tag tag = repo.GetTagByID((int)id);

            return tag is null ? NotFound( ) : View(tag);
        }

        // POST: Tag/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("TagID,Name")] Tag tag)
        {
            if (id != tag.TagID) return NotFound();

            if (!ModelState.IsValid ) return View( tag );

            try
            {
                repo.UpdateTag(tag);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TagExists(tag.TagID)) return NotFound();
                else throw; 
            }
            return RedirectToAction(nameof(Index));
        }

        // GET: Tag/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id is null) return NotFound( );
            Tag tag = repo.GetTagByID( (int)id );
            return tag is null ? NotFound( ) : View( tag );
        }

        // POST: Tag/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            repo.DeleteTag( repo.GetTagByID( id ) );
            return RedirectToAction(nameof(Index));
        }

        private bool TagExists( int id ) => repo.TagExists(id);
    }
}
