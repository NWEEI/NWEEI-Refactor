using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class AppUserTestRepo : IAppUserRepo
    {
        private List<AppUser> appUsers = new();
        private List<Tag> tags = new( );

        public IQueryable<AppUser> AppUsers =>
            appUsers.AsQueryable<AppUser>();

        // add a new appUser
        public void AddAppUser(AppUser appUser) =>
            throw new NotImplementedException();

        // get a list of all appUsers
        public List<AppUser> GetAllAppUsers( ) =>
            appUsers.ToList( );

        // get a specific appUser by their id
        public AppUser GetAppUserByID(string id ) =>
            appUsers.Find( u => u.Id == id );

        // async - get a specific appUser by its id, using the user manager
        public async Task<AppUser> FindAppUserByIdAsync(string id) =>
            throw new NotImplementedException();

        // async - get a specific appUser by its id, using the user manager
        public async Task<AppUser> FindAppUserByNameAsync(string name) =>
            throw new NotImplementedException();

        // get a specific appUser by their normalized email 
        public async Task<AppUser> GetAppUserByEmailAsync(string email) =>
            throw new NotImplementedException();

        // check to see if an appUser exists
        public bool AppUserExists(string id ) =>
            AppUsers.Any( u => u.Id == id );

        // update an appUser
        public void UpdateAppUser(AppUser appUser)
        {
            // retrieve appUser from list
            AppUser existingAppUser = appUsers.Find(u => u.Id == appUser.Id);

            // update its properties
            existingAppUser.UserName = appUser.UserName;
            existingAppUser.NormalizedUserName = appUser.NormalizedUserName;
            existingAppUser.FirstName = appUser.FirstName;
            existingAppUser.LastName = appUser.LastName;
            existingAppUser.Email = appUser.Email;
            existingAppUser.NormalizedEmail = appUser.NormalizedEmail;
            existingAppUser.EmailConfirmed = appUser.EmailConfirmed;
            existingAppUser.PhoneNumber = appUser.PhoneNumber;
            existingAppUser.PhoneNumberConfirmed = appUser.PhoneNumberConfirmed;
            existingAppUser.RoleNames = appUser.RoleNames;
            existingAppUser.TwoFactorEnabled = appUser.TwoFactorEnabled;
        }

        // delete an appUser
        public void DeleteAppUser(AppUser appUser) =>
            appUsers.Remove( appUsers.Find( u => u.Id == appUser.Id));

        // get all the roles of a user
        public async Task<IList<string>> GetRolesAsync(AppUser user) =>
            throw new NotImplementedException();

        // get all the roles
        public IEnumerable<IdentityRole> GetAllRoles() =>
            throw new NotImplementedException();

        // find a role by it's name
        public async Task<IdentityRole> FindRoleByNameAsync(string roleName) =>
            throw new NotImplementedException();

        // add a role to the list of a user's roles
        public async Task<IdentityResult> AddToRoleAsync(AppUser user, string roleName) =>
            throw new NotImplementedException();

        // remove a role to the list of a user's roles
        public async Task<IdentityResult> RemoveFromRoleAsync(AppUser user, string roleName) =>
            throw new NotImplementedException();
    }
}
