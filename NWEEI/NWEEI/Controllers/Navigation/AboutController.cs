using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using NWEEI.Models;

//Contact form inspired by: https://nickolasfisher.com/blog/How-To-Make-a-Basic-Working-Contact-Form-With-ASP-NET-Core-MVC-and-MailKit

namespace NWEEI.Controllers.Navigation
{
    public class AboutController : Controller
    {
        private EmailAddress ContactFormRecipient;
        private IEmailService EmailService;

        public AboutController(EmailAddress _contactFormRecipient, IEmailService _emailService)
        {
            EmailService = _emailService;
            ContactFormRecipient = _contactFormRecipient;
        }

        // GET: /<controller>/
        public IActionResult Index()
        {
            ViewBag.Current = "About";
            return View();
        }

        // GET: Contact
        public IActionResult Contact()
        {
            ViewBag.Current = "About";
            return View();
        }

        // GET: Contact
        public IActionResult History()
        {
            ViewBag.Current = "About";
            return View();
        }

        // GET: Instructors
        public IActionResult Instructors()
        {
            ViewBag.Current = "About";
            return View();
        }

        // GET: Staff
        public IActionResult Staff()
        {
            ViewBag.Current = "About";
            return View();
        }

        // GET: ContactForm
        [HttpGet]
        public ViewResult ContactUs()
        {
            return View();
        }

        //POST: ContactForm
        [HttpPost]
        public IActionResult ContactUs(ContactForm contactForm)
        {
            if (ModelState.IsValid)
            {
                EmailMessage message = new EmailMessage
                {
                    ToAddresses = new List<EmailAddress> { ContactFormRecipient },
                    ///ideally, we would use a templated email from a file that would have an official header styled with html.
                    ///a hard-coded string will do for now.
                    Content =
                        "Here is the message from a contact form that was just filled out:" + "\n" +
                        "<table>" +
                            "<tr>" +
                                "<td><b>Name:</b></td>" +
                                "<td>" + contactForm.Name + "</td>" +
                            "</tr>" +
                            "<tr>" +
                                "<td><b>Email:</b></td>" +
                                "<td>" + contactForm.Email + "</td>" +
                            "</tr>" +
                            "<tr>" +
                                "<td><b>Message:</b></td>" +
                                "<td>" + contactForm.Message + "</td>" +
                            "</tr>" +
                        "</table>",
                    Subject = "NWEEI - Contact Requested"
                };
                try
                {
                    EmailService.Send(message);
                } catch
                {
                    throw;
                }
                return View("Notification", new Notification("Thank you!\n An email has been sent to a site admin."));
            } else
            {
                return View();
            }
        }
    }
}
