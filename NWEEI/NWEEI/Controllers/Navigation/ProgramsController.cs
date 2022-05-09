using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace NWEEI.Controllers.Navigation
{
    public class ProgramsController : Controller
    {
        public IActionResult Certificates()
        {
            ViewBag.Current = "Certificates";
            return View();
        }

        // get degrees overview view
        public IActionResult Degrees()
        {
            ViewBag.Current = "Degrees";
            return View();
        }

        // get degrees > energy management - building controls view
        public IActionResult EMBC()
        {
            ViewBag.Current = "Degrees";
            return View();
        }
    }
}
