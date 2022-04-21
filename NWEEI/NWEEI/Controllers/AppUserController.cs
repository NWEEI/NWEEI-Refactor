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

namespace NWEEI.Controllers
{
    public class AppUserController : Controller
    {
        private readonly NWEEIContext _context;
        private UserManager<AppUser> _userManager;
        private RoleManager<IdentityRole> _roleManager;

        public AppUserController(NWEEIContext context, UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
        }

        // GET: AppUser
        public async Task<IActionResult> Index()
        {
            var users = await _context.AppUsers.ToListAsync();
            foreach (AppUser user in _userManager.Users)
            {
                user.RoleNames = await _userManager.GetRolesAsync(user);
            }
            AppUserViewModel model = new AppUserViewModel
            {
                Users = users,
                Roles = _roleManager.Roles
            };

            return View(model);  
        }

        // GET: AppUser/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var appUser = await _context.AppUsers
                .FirstOrDefaultAsync(m => m.Id == id);
            if (appUser == null)
            {
                return NotFound();
            }

            return View(appUser);
        }

        // GET: AppUser/Create
        public IActionResult Create()
        {
            return View();
        }

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
            if (adminRole == null)
            {
                TempData["message"] = "Admin role does not exist. ";
            }
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
            AppUser user = await _userManager.FindByIdAsync(id);
            await _userManager.RemoveFromRoleAsync(user, "Admin");
            return RedirectToAction("Index");
        }
        [HttpPost]
        public async Task<IActionResult> AddToEditor(string id)
        {
            IdentityRole editorRole = await _roleManager.FindByNameAsync("Editor");
            if (editorRole == null)
            {
                TempData["message"] = "Editor role does not exist. ";
            }
            else
            {
                AppUser user = await _userManager.FindByIdAsync(id);
                await _userManager.AddToRoleAsync(user, editorRole.Name);
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public async Task<IActionResult> RemoveFromEditor(string id)
        {
            AppUser user = await _userManager.FindByIdAsync(id);
            await _userManager.RemoveFromRoleAsync(user, "Editor");
            return RedirectToAction("Index");
        }

        // GET: AppUser/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var appUser = await _context.AppUsers.FindAsync(id);
            if (appUser == null)
            {
                return NotFound();
            }
            return View(appUser);
        }

        // POST: AppUser/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("FirstName,LastName,Id,Email,EmailConfirmed,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled")] AppUser appUser)
        {
            if (id != appUser.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(appUser);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AppUserExists(appUser.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(appUser);
        }

        // GET: AppUser/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var appUser = await _context.AppUsers
                .FirstOrDefaultAsync(m => m.Id == id);
            if (appUser == null)
            {
                return NotFound();
            }

            return View(appUser);
        }

        // POST: AppUser/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var appUser = await _context.AppUsers.FindAsync(id);
            _context.AppUsers.Remove(appUser);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AppUserExists(string id)
        {
            return _context.AppUsers.Any(e => e.Id == id);
        }
    }
}
