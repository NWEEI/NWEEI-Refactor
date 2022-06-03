using System;
using System.Net.Mail;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NWEEI.Models;

namespace NWEEI.Controllers
{
    [Authorize(Roles = "Admin")]
    public class MailController : Controller
    {
        private readonly IEmailService _emailService;
        public MailController(IEmailService emailService)
        {
            _emailService = emailService;
        }


        [HttpPost("send")]
        public IActionResult Send(EmailMessage emailMessage)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    _emailService.Send(emailMessage);
                    return RedirectToAction("Index", "Home");                     
                } catch (Exception ex)
                {
                    throw;
                }
            }
            return View();
        }
        
        public IActionResult SMTPTest()
        {
            EmailMessage message = new();
            message.ToAddresses.Add(new EmailAddress(User.Identity.Name, User.Identity.Name));
            message.Subject = "Test Email";
            message.Content = "This is a test email from the NWEEI website. This email can be safely deleted.";
            try
            {
                _emailService.Send(message);
                return View();
            } catch (Exception ex)
            {
                throw;
            }
        }
    }
}
