﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Mvc5Examples.Areas.Chapter10.Controllers
{
    public class ch10Controller : Controller
    {
        public ActionResult Index(string id)
        {
            return View(id);
        }
    }
}