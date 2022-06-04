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
        public IActionResult Index() => View(repo.GetAllTrainingPrograms());

        // GET: TrainingPrograms/Details/5
        public IActionResult Details(int? id)
        {
            if (id is null) return NotFound();
            TrainingProgram trainingProgram = repo.GetTrainingProgramByID((int)id);
            return trainingProgram is null ? NotFound() : View(trainingProgram);
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
            if (!ModelState.IsValid) return View(trainingProgram);
            repo.AddTrainingProgram(trainingProgram);
            return RedirectToAction(nameof(Index));
        }

        // GET: TrainingPrograms/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id is null) return NotFound();
            TrainingProgram trainingProgram = repo.GetTrainingProgramByID((int)id);
            return trainingProgram is null ? NotFound() : View(trainingProgram);
        }

        // POST: TrainingPrograms/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("TrainingProgramID,Name")] TrainingProgram trainingProgram)
        {
            if (id != trainingProgram.TrainingProgramID) return NotFound();

            if (!ModelState.IsValid) return View(trainingProgram);
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

        // GET: TrainingPrograms/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id is null) return NotFound();
            TrainingProgram trainingProgram = repo.GetTrainingProgramByID((int)id);
            return trainingProgram is null ? NotFound() : View(trainingProgram);
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

        private bool TrainingProgramExists(int id) =>
            repo.TrainingPrograms.Any(e => e.TrainingProgramID == id);


        #region CustomTrainingOption methods

        public async Task<IActionResult> CustomTraining()
        {
            return View(repo.GetCustomTrainingOptions());
        }

        public async Task<IActionResult> CustomTrainingOption(int id)
        {
            return View(repo.GetCustomTrainingOptionByID(id));
        }

        #endregion
    }
}
