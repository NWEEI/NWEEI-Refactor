using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class AppUserRepo : IAppUserRepo
    {
        private NWEEIContext context;
        public UserManager<AppUser> UserManager;
        public RoleManager<IdentityRole> RoleManager;

        public AppUserRepo( NWEEIContext c, UserManager<AppUser> u, RoleManager<IdentityRole> r)
        {
            context = c;
            UserManager = u;
            RoleManager = r;
        }

        public IQueryable<AppUser> AppUsers => context.AppUsers;

        // add a new appUser
        public void AddAppUser(AppUser appUser)
        {
            context.Add(appUser);
            context.SaveChanges();
        }

        // get a list of all appUsers
        public List<AppUser> GetAllAppUsers( ) =>
            context.AppUsers.OrderBy( u => u.DateRegistered).ToList( );

        // get a specific appUser by its id
        public AppUser GetAppUserByID(string id) =>
            context.AppUsers.FirstOrDefault(u => u.Id == id);

        // async - get a specific appUser by its id, using the user manager
        public async Task<AppUser> FindAppUserByIdAsync(string id) =>
            await UserManager.FindByIdAsync(id);

        // async - get a specific appUser by its id, using the user manager
        public async Task<AppUser> FindAppUserByNameAsync(string name) =>
            await UserManager.FindByNameAsync(name);

        // get a specific appUser by its normalized email 
        public async Task<AppUser> GetAppUserByEmailAsync(string email) =>
            await context.AppUsers.FirstOrDefaultAsync(u => u.NormalizedEmail == email.ToUpper());

        // check to see if an appUser exists
        public bool AppUserExists( string id ) =>
            AppUsers.Any( u => u.Id == id );

        // update an appUser
        public void UpdateAppUser(AppUser appUser)
        {
            context.AppUsers.Update(appUser);
            context.SaveChanges();
        }

        // delete an appUser
        public void DeleteAppUser(AppUser appUser)
        {
            AppUser existingOrg = context.AppUsers.Find(appUser.Id);
            context.AppUsers.Remove(existingOrg);
            context.SaveChanges();
        }

        // get all the roles of a user
        public async Task<IList<string>> GetRolesAsync(AppUser user) =>
            await UserManager.GetRolesAsync(user);

        // get all the roles
        public IEnumerable<IdentityRole> GetAllRoles() =>
            RoleManager.Roles;

        // find a role by it's name
        public async Task<IdentityRole> FindRoleByNameAsync(string roleName) =>
            await RoleManager.FindByNameAsync(roleName);

        // add a role to the list of a user's roles
        public async Task<IdentityResult> AddToRoleAsync(AppUser user, string roleName) =>
            await UserManager.AddToRoleAsync(user, roleName);

        // remove a role to the list of a user's roles
        public async Task<IdentityResult> RemoveFromRoleAsync(AppUser user, string roleName) =>
            await UserManager.RemoveFromRoleAsync(user, roleName);
    }
}
