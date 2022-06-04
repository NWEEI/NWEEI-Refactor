using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace NWEEI.Controllers.Navigation
{
    public class ProgramsController : Controller
    {
        public async Task<IActionResult> ProfessionalDevelopment()
        {
            ViewBag.Current = "Professional Development";
            return View();
        }

        // get degrees overview view
        public async Task<IActionResult> Degrees()
        {
            ViewBag.Current = "Degrees";
            return View();
        }

        // get degrees > energy management building controls view
        public async Task<IActionResult> EMBC()
        {
            ViewBag.Current = "Degrees";
            return View();
        }

        // get degrees > water conservation
        public async Task<IActionResult> WaterConservation()
        {
            ViewBag.Current = "Degrees";
            return View();
        }

        // get professional development > custom training
        public async Task<IActionResult> CustomTraining()
        {
            ViewBag.Current = "Professional Development";
            return View();
        }

        /*
        // not a currently valid degree
        // get degrees > energy management technician
        public async Task<IActionResult> EnergyMgmt()
        {
            ViewBag.Current = "Degrees";
            return View();
        }
        */
    }
}
