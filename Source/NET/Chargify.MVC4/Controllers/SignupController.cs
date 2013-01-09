using System.Globalization;
using Chargify.MVC4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ChargifyNET;
using System.Configuration;
using ChargifyNET.Configuration;

namespace Chargify.MVC4.Controllers
{
    public class SignupController : Controller
    {
        //
        // GET: /Signup/Local

        public ActionResult Local(string productHandle)
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
        public ActionResult Local(LocalSignup model, string productHandle)
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

        public ActionResult Completed()
        {
            return View();
        }

        public JsonResult ValidateCoupon(string couponCode)
        {
            
            return Json(null);
        }

        #region Helpers
        private ChargifyConnect Chargify
        {
            get
            {
                if (HttpContext.Cache["Chargify"] == null)
                {
                    ChargifyAccountRetrieverSection config = ConfigurationManager.GetSection("chargify") as ChargifyAccountRetrieverSection;
                    ChargifyAccountElement accountInfo = config.GetDefaultOrFirst();
                    ChargifyConnect chargify = new ChargifyConnect();
                    chargify.apiKey = accountInfo.ApiKey;
                    chargify.Password = accountInfo.ApiPassword;
                    chargify.URL = accountInfo.Site;
                    chargify.SharedKey = accountInfo.SharedKey;
                    chargify.UseJSON = config.UseJSON;

                    HttpContext.Cache.Add("Chargify", chargify, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.High, null);
                }

                return HttpContext.Cache["Chargify"] as ChargifyConnect;
            }
        }
        #endregion
    }
}
