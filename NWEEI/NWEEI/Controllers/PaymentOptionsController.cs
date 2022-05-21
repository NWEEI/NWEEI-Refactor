using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
        public IActionResult Index() => View(repo.GetAllPaymentOptions());

        // GET: PaymentOptions/Details/5
        public IActionResult Details(int? id)
        {
            if (id is null) return NotFound();
            var paymentOption = repo.GetPaymentOptionByID((int)id);
            return paymentOption is null ? NotFound() : View(paymentOption);
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
            if (!ModelState.IsValid) return View(paymentOption);
            repo.AddPaymentOption(paymentOption);
            return RedirectToAction(nameof(Index));
        }

        // GET: PaymentOptions/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id is null) return NotFound();
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
            if (id != paymentOption.PaymentOptionID) return NotFound();

            if (!ModelState.IsValid) return View(paymentOption);
            try
            {
                repo.UpdatePaymentOption(paymentOption);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PaymentOptionExists(paymentOption.PaymentOptionID))
                    return NotFound();
                else
                    throw;
            }
            return RedirectToAction(nameof(Index));
        }

        // GET: PaymentOptions/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id is null) return NotFound();
            PaymentOption paymentOption = repo.GetPaymentOptionByID((int)id);
            return paymentOption is null ? NotFound() : View(paymentOption);
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

        private bool PaymentOptionExists(int id) => repo.PaymentOptions.Any(e => e.PaymentOptionID == id);
    }
}
