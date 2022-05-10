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
    [Authorize(Roles = "Admin")]
    public class PaymentOptionsController : Controller
    {
        private IPaymentOptionRepo repo;

        public PaymentOptionsController(IPaymentOptionRepo r) => repo = r;

        // GET: PaymentOptions
        public async Task<IActionResult> Index() => View(await repo.PaymentOptions.ToListAsync());

        // GET: PaymentOptions/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            NullCheck(id);

            var paymentOption = await repo.PaymentOptions
                .FirstOrDefaultAsync(m => m.PaymentOptionID == id);
            return paymentOption == null ? NotFound() : View(paymentOption);
        }

        // GET: PaymentOptions/Create
        public IActionResult Create() => View();

        // POST: PaymentOptions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("PaymentOptionID,Option")] PaymentOption paymentOption)
        {
            if (ModelState.IsValid)
            {
                repo.AddPaymentOption(paymentOption);
                return RedirectToAction(nameof(Index));
            }
            return View(paymentOption);
        }

        // GET: PaymentOptions/Edit/5
        public IActionResult Edit(int? id)
        {
            NullCheck(id);
            PaymentOption paymentOption = repo.GetPaymentOptionByID((int)id);
            return paymentOption == null ? NotFound() : View(paymentOption);
        }

        // POST: PaymentOptions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("PaymentOptionID,Option")] PaymentOption paymentOption)
        {
            if (id != paymentOption.PaymentOptionID)
                return NotFound();

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdatePaymentOption(paymentOption);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PaymentOptionExists(paymentOption.PaymentOptionID))
                        return NotFound();
                    else throw;
                }
                return RedirectToAction(nameof(Index));
            }
            return View(paymentOption);
        }

        // GET: PaymentOptions/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            NullCheck(id);
            var paymentOption = await repo.PaymentOptions
                .FirstOrDefaultAsync(m => m.PaymentOptionID == id);
            NullCheck(paymentOption);
            return View(paymentOption);
        }

        // POST: Tag/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            PaymentOption paymentOption = repo.GetPaymentOptionByID(id);
            repo.DeletePaymentOption(paymentOption);
            return RedirectToAction(nameof(Index));
        }

        /// <summary>
        /// Checks to see if an object, property, or method of any type is null.
        /// </summary>
        /// <param name="arg"> A object, property, or method of any type. </param>
        /// <returns> The 'NotFound' view if arg is null, nothing otherwise. </returns>
        private NotFoundResult NullCheck<T>(T arg) => arg == null ? NotFound(): null;

        private bool PaymentOptionExists(int id) => repo.PaymentOptions.Any(e => e.PaymentOptionID == id);
    }
}
