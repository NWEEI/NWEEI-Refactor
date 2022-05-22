using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using NWEEI.Data;
using NWEEI.Models;
using NWEEI.ViewModels;
using NWEEI.Repositories;

namespace NWEEI.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AppUserController : Controller
    {
        private IAppUserRepo repo;
        private UserManager<AppUser> _userManager;
        private RoleManager<IdentityRole> _roleManager;

        public AppUserController(IAppUserRepo r, UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            repo = r;
            _userManager = userManager;
            _roleManager = roleManager;
        }

        // GET: AppUser
        public async Task<IActionResult> Index()
        {
            List<AppUser> users = repo.GetAllAppUsers();

            foreach (AppUser user in users)
                user.RoleNames = await _userManager.GetRolesAsync(user); 

            AppUserViewModel model = new()
            {
                Users = users,
                Roles = _roleManager.Roles
            };

            return View(model);  
        }

        // GET: AppUser/Details/5
        public IActionResult Details(string id)
        {
            if (id is null) return NotFound();
            AppUser appUser = repo.GetAppUserByID(id);
            return appUser is null ? NotFound() : View(appUser);
        }

        // GET: AppUser/Create
        public IActionResult Create() => View();

        /**    UNUSED POST:CREATE CODE
         * 
         * This code was previously the method for creating a user, 
         * but the scaffolded identity register view was used instead.
         * 
         * The method below was incomplete,
         * as creating a user with an already hashed password was a roadblock
         * 
         * 
        // POST: AppUser/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles="Admin")]
        public async Task<IActionResult> Create([Bind("FirstName,LastName,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount")] AppUser appUser)
        {
            if (ModelState.IsValid)
            {

                // using only the input email, set the username, and normalized username/email
                appUser.UserName = appUser.Email;
                appUser.NormalizedEmail = _userManager.NormalizeEmail(appUser.Email);
                appUser.NormalizedUserName = _userManager.NormalizeEmail(appUser.Email);

                // since the user was created by an admin, the email should be confirmed, as well as the phone number (if one is provided)
                appUser.EmailConfirmed= true;
                if (appUser.PhoneNumber != null)
                    appUser.PhoneNumberConfirmed = true;

                // The date registered for the created user is when this method is called
                appUser.DateRegistered = DateTime.Now;

                // All done, add user and save changes.
                _context.Add(appUser);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(appUser);
        }
        **/

        [HttpPost]
        public async Task<IActionResult> AddToAdmin(string id)
        {
            IdentityRole adminRole = await _roleManager.FindByNameAsync("Admin");
            if (adminRole is null)
                TempData["message"] = "Admin role does not exist. ";
            else
            {
                AppUser user = await _userManager.FindByIdAsync(id);
                await _userManager.AddToRoleAsync(user, adminRole.Name);
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public async Task<IActionResult> RemoveFromAdmin(string id)
        {
            AppUser
                // find the user in the db that is having their admin role removed
                user = await _userManager.FindByIdAsync(id),
                // find the user in the db that is performing the RemoveFromAdmin action
                signedInUser = await _userManager.FindByNameAsync(User.Identity.Name),
                // find the user in the db that is the seeded admin user
                seededAdmin = repo.AppUsers.FirstOrDefault();

            if (user == seededAdmin)
                return View("CustomError", new CustomError("You can't remove the Admin role from the built-in admin user."));
            else if (User.IsInRole("Admin") && user == signedInUser)
                return View("CustomError", new CustomError("You can't remove the Admin role from yourself."));
            else
            {
                // all good, do the thing
                await _userManager.RemoveFromRoleAsync(user, "Admin");
                return RedirectToAction("Index");
            }
        }
        [HttpPost]
        public async Task<IActionResult> AddToEditor(string id)
        {
            IdentityRole editorRole = await _roleManager.FindByNameAsync("Editor");
            if (editorRole is not null)
            {
                await _userManager.AddToRoleAsync(
                    await _userManager.FindByIdAsync(id),
                    editorRole.Name);
            }
            else
                TempData["message"] = "Editor role does not exist. ";
            return RedirectToAction("Index");
        }
        [HttpPost]
        public async Task<IActionResult> RemoveFromEditor(string id)
        {
            AppUser
                // find the user in the db that is having their admin role removed
                user = await _userManager.FindByIdAsync(id),
                // find the user in the db that is performing the RemoveFromAdmin action
                signedInUser = await _userManager.FindByNameAsync(User.Identity.Name),
                // find the user in the db that is the seeded admin user
                seededAdmin = repo.AppUsers.FirstOrDefault();

            if (user == seededAdmin)
                return View("CustomError", new CustomError("You can't remove the Editor role from the built-in admin user."));
            else if (User.IsInRole("Admin") && user == signedInUser)
                return View("CustomError", new CustomError("You can't remove the Editor role from yourself."));
            else
            {
                // all good, do the thing
                await _userManager.RemoveFromRoleAsync(user, "Editor");
                return RedirectToAction("Index");
            }
        }

        // GET: AppUser/Edit/5
        public IActionResult Edit(string id)
        {
            if (id is null) return NotFound();
            AppUser appUser = repo.GetAppUserByID(id);
            return appUser is null ? NotFound() : View(appUser);
        }

        // POST: AppUser/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("FirstName,LastName,Id,Email,EmailConfirmed,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled")] AppUser appUser)
        {
            // find the user in the db that is the seeded admin user
                AppUser seededAdmin = repo.AppUsers.FirstOrDefault();

            if (appUser == seededAdmin)
                return View("CustomError", new CustomError("You can't edit the properties of the built-in admin user."));

            if (id != appUser.Id) return NotFound();

            if (!ModelState.IsValid) return View(appUser);
            try
            {
                repo.UpdateAppUser(appUser);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!repo.AppUserExists(appUser.Id)) return NotFound();
                else throw;
            }
            return RedirectToAction(nameof(Index));
        }

        // GET: AppUser/Delete/5
        public IActionResult Delete(string id)
        {
            if (id is null) return NotFound();
            AppUser appUser = repo.GetAppUserByID(id);
            return appUser is null ? NotFound() : View(appUser);
        }

        // POST: AppUser/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(string id)
        {
            repo.DeleteAppUser(repo.GetAppUserByID(id));
            return RedirectToAction(nameof(Index));
        }
    }
}
