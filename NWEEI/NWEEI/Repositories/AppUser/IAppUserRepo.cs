using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IAppUserRepo
    {
        IQueryable<AppUser> AppUsers { get; }

        // create
        /// Currently overriden by scaffolded identity user
        //void AddAppUser(AppUser appUser);

        // retrieve
        List<AppUser> GetAllAppUsers( );
        AppUser GetAppUserByID(string id);
        Task<AppUser> FindAppUserByIdAsync(string id);
        Task<AppUser> FindAppUserByNameAsync(string name);
        Task<AppUser> GetAppUserByEmailAsync(string email);

        // nullcheck
        bool AppUserExists(string id );

        // update
        void UpdateAppUser(AppUser appUser);

        // delete
        void DeleteAppUser(AppUser appUser);

        Task<IList<string>> GetRolesAsync(AppUser user);
        IEnumerable<IdentityRole> GetAllRoles();
        Task<IdentityRole> FindRoleByNameAsync(string roleName);
        Task<IdentityResult> AddToRoleAsync(AppUser user, string roleName);
        Task<IdentityResult> RemoveFromRoleAsync(AppUser user, string roleName);
    }
}
