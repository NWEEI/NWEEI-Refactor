using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace NWEEI.Controllers.Navigation
{
    public class ProgramsController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Certificates()
        {
            ViewBag.Current = "Certificates";
            return View();
        }

        public IActionResult Degrees()
        {
            ViewBag.Current = "Degrees";
            return View();
        }

        public IActionResult EMBC()
        {
            ViewBag.Current = "EMBC";
            return View();
        }
    }
}
