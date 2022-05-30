using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NWEEI.Models;
using NWEEI.Repositories;
using NWEEI.ViewModels;

namespace NWEEI.Controllers
{
    public class OrganizationController : Controller
    {
        IOrganizationRepo repo;

        public OrganizationController( IOrganizationRepo r ) => repo = r;

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

            if (id is null) return NotFound();

            // get the organization from the repo of which the id matches the requested id
            Organization organization = repo.GetOrganizationByID( (int)id );

            // return not found if the organzation requested is null, otherwise return the detail view of that organization
            return organization is not null ? View(organization) : NotFound();
        }

        // GET: Organization/Create
        public IActionResult Create() => View();

        // POST: Organization/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Organization organization, string htmlcode)
        {
            // if data attempting to be posted is not valid, refresh view and display validation summaries
            if (!ModelState.IsValid) return View(organization);

            // set organization description equal to that passed in by htmlcode
            ViewData [ "IsPosted" ] = true;
            ViewData [ "PostedValue" ] = htmlcode;
            organization.Description = htmlcode;

            // add and save the org to the db
            repo.AddOrganization( organization );

            return RedirectToAction( nameof( Index ) );
        }

        // GET: Organization/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id is null) return NotFound();
            Organization organization = repo.GetOrganizationByID((int)id);
            // if the organization returned by querying by id is not null, return the edit view of that organization, otherwise return the NotFound() view.
            return organization is not null ? View( organization ) : NotFound() ;
        }

        // POST: Organization/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("OrganizationID,Name,Description,ImageURL,WebsiteURL")] Organization organization, string htmlcode)
        {
            // if the id parameter does not match the id of the object parameter, return the NotFound view
            if ( id != organization.OrganizationID ) return NotFound();

            // if data attempting to be posted is not valid, refresh view and display validation summaries
            if ( !ModelState.IsValid ) return View( organization );

            ViewData["IsPosted"] = true;
            ViewData["PostedValue"] = htmlcode;
            organization.Description = htmlcode;

            // attempt to save the object to it's repo.
            try { repo.UpdateOrganization( organization ); }
            // if the save fails, 
            catch ( DbUpdateConcurrencyException )
            {
                // and it fails because the object did not actually save to the repo, return the NotFound view
                if ( !OrganizationExists( organization.OrganizationID ) ) return NotFound();
                // otherwise, it failed because of a concurrency exception
                else throw;
            }
            // if the save didn't fail, go back to the index.
            return RedirectToAction( nameof( Index ) );
        }

        // GET: Organization/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id is null) return NotFound();

            Organization organization = repo.GetOrganizationByID( (int)id );

            return organization is not null ? View( organization ) : NotFound();
        }

        // POST: Organization/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            repo.DeleteOrganization(repo.GetOrganizationByID(id));
            return RedirectToAction(nameof(Index));
        }

        private bool OrganizationExists( int id ) => repo.OrganizationExists(id);
    }
}
