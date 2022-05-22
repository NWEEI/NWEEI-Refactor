using System;
using System.Collections.Generic;
using System.Linq;
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

        // nullcheck
        bool AppUserExists(string id );

        // update
        void UpdateAppUser(AppUser appUser);

        // delete
        void DeleteAppUser(AppUser appUser);
    }
}
