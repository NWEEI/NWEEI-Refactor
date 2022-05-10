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
    public class TrainingProgramsController : Controller
    {
        private ITrainingProgramRepo repo;

        public TrainingProgramsController(ITrainingProgramRepo r) => repo = r;

        // GET: TrainingPrograms
        public async Task<IActionResult> Index() => View(await repo.TrainingPrograms.ToListAsync());

        // GET: TrainingPrograms/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            NullCheck(id);

            var trainingProgram = await repo.TrainingPrograms
                .FirstOrDefaultAsync(m => m.TrainingProgramID == id);
            return trainingProgram == null ? NotFound() : View(trainingProgram);
        }

        // GET: TrainingPrograms/Create
        public IActionResult Create() => View();

        // POST: TrainingPrograms/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("TrainingProgramID,Name")] TrainingProgram trainingProgram)
        {
            if (ModelState.IsValid)
            {
                repo.AddTrainingProgram(trainingProgram);
                return RedirectToAction(nameof(Index));
            }
            return View(trainingProgram);
        }

        // GET: TrainingPrograms/Edit/5
        public IActionResult Edit(int? id)
        {
            NullCheck(id);
            TrainingProgram trainingProgram = repo.GetTrainingProgramByID((int)id);
            return trainingProgram == null ? NotFound() : View(trainingProgram);
        }

        // POST: TrainingPrograms/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("TrainingProgramID,Name")] TrainingProgram trainingProgram)
        {
            if (id != trainingProgram.TrainingProgramID)
                return NotFound();

            if (ModelState.IsValid)
            {
                try
                {
                    repo.UpdateTrainingProgram(trainingProgram);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TrainingProgramExists(trainingProgram.TrainingProgramID))
                        return NotFound();
                    else throw;
                }
                return RedirectToAction(nameof(Index));
            }
            return View(trainingProgram);
        }

        // GET: TrainingPrograms/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            NullCheck(id);
            var trainingProgram = await repo.TrainingPrograms
                .FirstOrDefaultAsync(m => m.TrainingProgramID == id);
            NullCheck(trainingProgram);
            return View(trainingProgram);
        }

        // POST: Tag/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            TrainingProgram trainingProgram = repo.GetTrainingProgramByID(id);
            repo.DeleteTrainingProgram(trainingProgram);
            return RedirectToAction(nameof(Index));
        }

        /// <summary>
        /// Checks to see if an object, property, or method of any type is null.
        /// </summary>
        /// <param name="arg"> A object, property, or method of any type. </param>
        /// <returns> The 'NotFound' view if arg is null, nothing otherwise. </returns>
        private NotFoundResult NullCheck<T>(T arg) => arg == null ? NotFound() : null;

        private bool TrainingProgramExists(int id) => repo.TrainingPrograms.Any(e => e.TrainingProgramID == id);
    }
}
