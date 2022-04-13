﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace NWEEI.Controllers.Navigation
{
    public class ResourcesController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            ViewBag.Current = "Resources";
            return View();
        }
    }
}
