using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Chargify.MVC4.Filters;
using Chargify.MVC4.Models;
using ChargifyNET;
using ChargifyNET.Configuration;
using WebMatrix.WebData;

namespace Chargify.MVC4.Controllers
{
    [InitializeSimpleMembership]
    public class SignupController : Controller
    {
        //
        // GET: /Signup/Local/product-handle

        public ActionResult Local(string id)
        {
            //LocalSignup model = new LocalSignup();
            //model.UserPayment = new BillingPaymentModel();

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

            var product = Chargify.LoadProduct(id);
            ViewBag.ProductName = product.Name ?? string.Empty;

            return View();
        }

        //
        // POST: /Signup/Local/product-handle

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Local(LocalSignup model, string id)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    // Attempt to register the user
                    Guid userId = Guid.NewGuid();
                    var newUser = WebSecurity.CreateUserAndAccount(model.User.UserName, model.User.Password, new { Email = model.UserContact.EmailAddress, UserId = userId });

                    if (newUser != null)
                    {
                        if (!Roles.RoleExists("user"))
                        {
                            Roles.CreateRole("user");
                        }
                        Roles.AddUsersToRoles(new string[] { model.User.UserName }, new string[] { "User" });

                        // Now that the user is created, attempt to create the corresponding subscription
                        var customerInfo = new CustomerAttributes()
                        {
                            FirstName = model.UserContact.FirstName,
                            LastName = model.UserContact.LastName,
                            Email = model.UserContact.EmailAddress,
                            SystemID = userId.ToString()
                        };

                        var paymentAttributes = new CreditCardAttributes()
                        {
                            FullNumber = model.UserPayment.CardNumber.Trim(),
                            CVV = model.UserPayment.CVV,
                            ExpirationMonth = model.UserPayment.ExpirationMonth,
                            ExpirationYear = model.UserPayment.ExpirationYear,
                            BillingAddress = model.UserAddress.Address,
                            BillingCity = model.UserAddress.City,
                            BillingZip = model.UserAddress.Zip,
                            BillingState = model.UserAddress.State,
                            BillingCountry = model.UserAddress.Country
                        };
                        

                        try
                        {
                            var newSubscription = Chargify.CreateSubscription(id, customerInfo, paymentAttributes);

                            WebSecurity.Login(model.User.UserName, model.User.Password, false);
                            return RedirectToAction("Index", "Site");
                        }
                        catch (ChargifyException ex)
                        {
                            if (ex.ErrorMessages.Count > 0)
                            {
                                ModelState.AddModelError("", ex.ErrorMessages.FirstOrDefault().Message);
                            }
                            else
                            {
                                ModelState.AddModelError("", ex.ToString());
                            }
                        }
                    }
                    else
                    {
                        //ModelState.AddModelError("", AccountValidation.ErrorCodeToString(createStatus));
                    }
                }

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
