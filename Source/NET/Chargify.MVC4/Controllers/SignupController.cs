using Chargify.MVC4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Chargify.MVC4.Controllers
{
    public class SignupController : Controller
    {
        //
        // GET: /Signup/Local

        public ActionResult Local()
        {
            return View();
        }

        //
        // POST: /Signup/Local

        [HttpPost]
        public ActionResult Local(LocalSignup model)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
