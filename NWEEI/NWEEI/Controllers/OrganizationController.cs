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
    public class OrganizationController : Controller
    {
        IOrganizationRepo repo;

        public OrganizationController(IOrganizationRepo r)
        {
            repo = r;
        }

        // GET: Organization
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "Resources";
            return View(await repo.Organizations.ToListAsync());
        }

        // GET: Organization/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null)
            {
                return NotFound();
            }

            Organization organization = await repo.Organizations
                .FirstOrDefaultAsync(m => m.OrganizationID == id);
            if (organization == null)
            {
                return NotFound();
            }

            return View(organization);
        }

        // GET: Organization/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Organization/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("OrganizationID,Name,Description,ImageURL,WebsiteURL")] Organization organization)
        {
            if (ModelState.IsValid)
            {
                repo.AddOrganization(organization);
                return RedirectToAction(nameof(Index));
            }
            return View(organization);
        }

        // GET: Organization/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Organization organization = repo.GetOrganizationByID((int)id);
            if (organization == null)
            {
                return NotFound();
            }
            return View(organization);
        }

        // POST: Organization/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("OrganizationID,Name,Description,ImageURL,WebsiteURL")] Organization organization)
        {
            if (id != organization.OrganizationID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdateOrganization(organization);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrganizationExists(organization.OrganizationID))
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
            return View(organization);
        }

        // GET: Organization/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Organization organization = await repo.Organizations
                .FirstOrDefaultAsync(m => m.OrganizationID == id);
            if (organization == null)
            {
                return NotFound();
            }

            return View(organization);
        }

        // POST: Organization/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            Organization organization = repo.GetOrganizationByID((int)id);
            repo.DeleteOrganization(organization);
            return RedirectToAction(nameof(Index));
        }

        private bool OrganizationExists(int id)
        {
            return repo.Organizations.Any(e => e.OrganizationID == id);
        }
    }
}
