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
        public IActionResult Index()
        {
            ViewBag.Current = "Resources";
            return View(repo.GetAllOrganizations());
        }

        // GET: Organization/Details/5
        public IActionResult Details(int? id)
        {
            ViewBag.Current = "Resources";

            if (id == null) return NotFound();

            // get the organization from the repo of which the id matches the requested id
            Organization organization = repo.Organizations.FirstOrDefault(m => m.OrganizationID == id);

            // return not found if the organzation requersted is null, otherwise return the detail view of that organization
            return organization == null ? NotFound() : View( organization );
        }

        // GET: Organization/Create
        public IActionResult Create() => View();

        // POST: Organization/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("OrganizationID,Name,Description,ImageURL,WebsiteURL")] Organization organization)
        {
            if (ModelState.IsValid)
            {
                repo.AddOrganization(organization);
                return RedirectToAction(nameof(Index));
            }
            return View(organization);
        }

        // GET: Organization/Edit/5
        public IActionResult Edit(int? id)
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
        public IActionResult Edit(int id, [Bind("OrganizationID,Name,Description,ImageURL,WebsiteURL")] Organization organization)
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
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Organization organization = repo.Organizations
                .FirstOrDefault(m => m.OrganizationID == id);
            if (organization == null)
            {
                return NotFound();
            }

            return View(organization);
        }

        // POST: Organization/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
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
