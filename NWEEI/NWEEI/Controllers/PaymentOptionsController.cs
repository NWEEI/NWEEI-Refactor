using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Controllers
{
    public class PaymentOptionsController : Controller
    {
        private readonly NWEEIContext _context;

        public PaymentOptionsController(NWEEIContext context)
        {
            _context = context;
        }

        // GET: PaymentOptions
        public async Task<IActionResult> Index()
        {
            return View(await _context.PaymentOptions.ToListAsync());
        }

        // GET: PaymentOptions/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var paymentOption = await _context.PaymentOptions
                .FirstOrDefaultAsync(m => m.PaymentOptionID == id);
            if (paymentOption == null)
            {
                return NotFound();
            }

            return View(paymentOption);
        }

        // GET: PaymentOptions/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: PaymentOptions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PaymentOptionID,Option")] PaymentOption paymentOption)
        {
            if (ModelState.IsValid)
            {
                _context.Add(paymentOption);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(paymentOption);
        }

        // GET: PaymentOptions/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var paymentOption = await _context.PaymentOptions.FindAsync(id);
            if (paymentOption == null)
            {
                return NotFound();
            }
            return View(paymentOption);
        }

        // POST: PaymentOptions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PaymentOptionID,Option")] PaymentOption paymentOption)
        {
            if (id != paymentOption.PaymentOptionID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(paymentOption);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PaymentOptionExists(paymentOption.PaymentOptionID))
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
            return View(paymentOption);
        }

        // GET: PaymentOptions/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var paymentOption = await _context.PaymentOptions
                .FirstOrDefaultAsync(m => m.PaymentOptionID == id);
            if (paymentOption == null)
            {
                return NotFound();
            }

            return View(paymentOption);
        }

        // POST: PaymentOptions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var paymentOption = await _context.PaymentOptions.FindAsync(id);
            _context.PaymentOptions.Remove(paymentOption);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PaymentOptionExists(int id)
        {
            return _context.PaymentOptions.Any(e => e.PaymentOptionID == id);
        }
    }
}
