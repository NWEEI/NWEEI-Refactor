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

namespace NWEEI.Controllers
{
    [Authorize(Roles = "Admin")]
    public class TrainingProgramsController : Controller
    {
        private readonly NWEEIContext _context;

        public TrainingProgramsController(NWEEIContext context)
        {
            _context = context;
        }

        // GET: TrainingPrograms
        public async Task<IActionResult> Index()
        {
            return View(await _context.TrainingProgram.ToListAsync());
        }

        // GET: TrainingPrograms/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trainingProgram = await _context.TrainingProgram
                .FirstOrDefaultAsync(m => m.TrainingProgramID == id);
            if (trainingProgram == null)
            {
                return NotFound();
            }

            return View(trainingProgram);
        }

        // GET: TrainingPrograms/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: TrainingPrograms/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("TrainingProgramID,Name")] TrainingProgram trainingProgram)
        {
            if (ModelState.IsValid)
            {
                _context.Add(trainingProgram);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(trainingProgram);
        }

        // GET: TrainingPrograms/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trainingProgram = await _context.TrainingProgram.FindAsync(id);
            if (trainingProgram == null)
            {
                return NotFound();
            }
            return View(trainingProgram);
        }

        // POST: TrainingPrograms/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("TrainingProgramID,Name")] TrainingProgram trainingProgram)
        {
            if (id != trainingProgram.TrainingProgramID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(trainingProgram);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TrainingProgramExists(trainingProgram.TrainingProgramID))
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
            return View(trainingProgram);
        }

        // GET: TrainingPrograms/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trainingProgram = await _context.TrainingProgram
                .FirstOrDefaultAsync(m => m.TrainingProgramID == id);
            if (trainingProgram == null)
            {
                return NotFound();
            }

            return View(trainingProgram);
        }

        // POST: TrainingPrograms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var trainingProgram = await _context.TrainingProgram.FindAsync(id);
            _context.TrainingProgram.Remove(trainingProgram);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TrainingProgramExists(int id)
        {
            return _context.TrainingProgram.Any(e => e.TrainingProgramID == id);
        }
    }
}
