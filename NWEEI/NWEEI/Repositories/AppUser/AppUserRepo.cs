using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class AppUserRepo : IAppUserRepo
    {
        private NWEEIContext context;

        public AppUserRepo( NWEEIContext c ) => context = c;

        public IQueryable<AppUser> AppUsers => context.AppUsers;

        // add a new appUser
        public void AddAppUser(AppUser appUser)
        {
            context.Add(appUser);
            context.SaveChanges();
        }

        // get a list of all appUsers
        public List<AppUser> GetAllAppUsers( ) => context.AppUsers
            .OrderBy( u => u.DateRegistered).ToList( );

        // get a specific appUser by its id
        public AppUser GetAppUserByID(string id) => context.AppUsers
            .FirstOrDefault(u => u.Id == id);

        // get a specific appUser by its normalized email 
        public AppUser GetAppUserByEmail(string email) => context.AppUsers
            .FirstOrDefault(u => u.NormalizedEmail == email.ToUpper());

        // check to see if an appUser exists
        public bool AppUserExists( string id ) => AppUsers.Any( u => u.Id == id );

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

    }
}
