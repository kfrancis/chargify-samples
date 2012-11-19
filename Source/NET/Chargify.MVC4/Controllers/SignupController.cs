using System.Globalization;
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
            LocalSignup model = new LocalSignup();
            model.UserPayment = new BillingPaymentModel();

            // Create the next 10 years for the credit card expiration
            List<SelectListItem> expYears = new List<SelectListItem>();
            for (int i = 0; i <= 10; i++)
            {
                string year = (DateTime.Today.Year + i).ToString();
                expYears.Add(new SelectListItem { Text = year, Value = year });
            }
            ViewBag.ExpYears = new SelectList(expYears, "Value", "Text");

            IEnumerable<SelectListItem> expMonths = DateTimeFormatInfo.InvariantInfo.MonthNames.Where(m => !String.IsNullOrEmpty(m)).Select((monthName, index) => new SelectListItem
            {
                Value = (index + 1).ToString(),
                Text = (index + 1).ToString("00")
            });

            ViewBag.ExpMonths = new SelectList(expMonths, "Value", "Text");

            return View(model);
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
