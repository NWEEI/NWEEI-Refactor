using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class AppUserTestRepo : IAppUserRepo
    {
        private List<AppUser> appUsers = new();
        private List<Tag> tags = new( );

        public IQueryable<AppUser> AppUsers => appUsers.AsQueryable<AppUser>();
        public IQueryable<Tag> Tags => tags.AsQueryable<Tag>( );

        // add a new appUser
        public void AddAppUser(AppUser appUser) => throw new NotImplementedException();

        // get a list of all appUsers
        public List<AppUser> GetAllAppUsers( ) => appUsers.ToList( );


        // get a specific appUser by its id
        public AppUser GetAppUserByID(string id ) => appUsers.Find( u => u.Id == id );

        // check to see if an appUser exists
        public bool AppUserExists(string id ) => AppUsers.Any( u => u.Id == id );

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
        public void DeleteAppUser(AppUser appUser) => appUsers
            .Remove( appUsers
                .Find( u => u.Id == appUser.Id)
            );
    }
}
