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
    public class RegistrationController : Controller
    {
        private IRegistrationRepo repo;
        private readonly IPaymentOptionRepo payRepo;

        public RegistrationController(IRegistrationRepo r, IPaymentOptionRepo p)
        {
            repo = r;
            payRepo = p;
        }

        // GET: Registration
        [Authorize(Roles ="Admin")]
        public async Task<IActionResult> Index()
        {
            ViewBag.Current = "ContactOption";
            return View(await repo.Registrations.OrderByDescending(r => r.DateSubmitted).ToListAsync());
        }

        // GET: Registration/Details/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Registration registration = await repo.Registrations
                .FirstOrDefaultAsync(m => m.RegistrationID == id);
            if (registration == null)
            {
                return NotFound();
            }

            return View(registration);
        }

        // GET: Registration/Create
        public IActionResult Create()
        {
            // get all the payment options in a list.
            var payOptions = payRepo.GetAllPaymentOptions().ToList();
            // make a new List of SelectListItems
            List<SelectListItem> payOptionsList = new();
            // add the first default list item to the SelectItems list
            payOptionsList.Add(new SelectListItem { Selected = true, Text = "Select a payment type...", Value = String.Empty });
            // add all the from the payment options list to the SelectItems list. 
            for (int i = 0; i < payOptions.Count; i++)
                payOptionsList.Add(new SelectListItem { Selected = false, Text = payOptions[i].Option, Value = payOptions[i].Option });
            // make a new SelectList from the SelectItems list that contains all the SelectListItems
            SelectList payOptionsSelectList = new(payOptionsList, "Value", "Text", 1);
            // pass the SelectList to ViewData
            ViewData["PaymentOptions"] = payOptionsSelectList;
            return View();
        }

        // POST: Registration/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("RegistrationID,TrainingProgram,FirstName,LastName,Email,DateOfBirth,Title,Organization,Address1,Address2,City,State,ZipCode,Country,Phone,Fax,Referral,SpecialInstructions,PaymentType")] Registration registration)
        {
            registration.DateSubmitted = DateTime.Now;
            TempData["Training"] = registration.TrainingProgram;
            TempData["DateSubmitted"] = registration.DateSubmitted.ToString();
            TempData["FirstName"] = registration.FirstName;
            TempData["LastName"] = registration.LastName;
            TempData["Email"] = registration.Email;
            if (ModelState.IsValid)
            {
                repo.AddRegistration(registration);
                return RedirectToAction(nameof(CreateConfirmation));
            }
            return View(registration);
        }

        public IActionResult CreateConfirmation()
        {
            ViewBag.Current = "ContactOption";

            TempData.Keep("Training");
            TempData.Keep("DateSubmitted");
            TempData.Keep("FirstName");
            TempData.Keep("LastName");
            TempData.Keep("Email");
            return View();
        }

        // GET: Registration/Edit/5
        [Authorize(Roles = "Admin")]
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Registration registration = repo.GetRegistrationByID((int)id);
            if (registration == null)
            {
                return NotFound();
            }
            return View(registration);
        }

        // POST: Registration/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public IActionResult Edit(int id, [Bind("RegistrationID,TrainingProgram,FirstName,LastName,Email,DateOfBirth,Title,Organization,Address1,Address2,City,State,ZipCode,Country,Phone,Fax,Referral,SpecialInstructions,PaymentType")] Registration registration)
        {
            if (id != registration.RegistrationID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdateRegistration(registration);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RegistrationExists(registration.RegistrationID))
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
            return View(registration);
        }

        // GET: Registration/Delete/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Registration registration = await repo.Registrations
                .FirstOrDefaultAsync(m => m.RegistrationID == id);
            if (registration == null)
            {
                return NotFound();
            }

            return View(registration);
        }

        // POST: Registration/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            Registration registration = repo.GetRegistrationByID(id);
            repo.DeleteRegistration(registration);
            return RedirectToAction(nameof(Index));
        }

        private bool RegistrationExists(int id)
        {
            return repo.Registrations.Any(e => e.RegistrationID == id);
        }
    }
}
