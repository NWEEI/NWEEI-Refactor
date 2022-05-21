using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class RegistrationRepo : IRegistrationRepo
    {
        private NWEEIContext context;

        public RegistrationRepo( NWEEIContext c ) => context = c;

        public IQueryable<Registration> Registrations => context.Registrations;

        // add a new registration
        public void AddRegistration(Registration registration)
        {
            context.Registrations.Add(registration);
            context.SaveChanges();
        }

        // get a list of all registrations
        public List<Registration> GetAllRegistrations() => context.Registrations
                .OrderByDescending(r => r.DateSubmitted)
                .ToList();

        // get a specific registration by its id
        public Registration GetRegistrationByID(int id) => context.Registrations
                .Where(r => r.RegistrationID == id)
                .FirstOrDefault();

        // update a registration
        public void UpdateRegistration(Registration registration)
        {
            context.Registrations.Update(registration);
            context.SaveChanges();
        }

        // delete a registration
        public void DeleteRegistration(Registration registration)
        {
            context.Registrations.Remove( context.Registrations
                .Find( registration.RegistrationID)
            );
            context.SaveChanges();
        }

        // check to see if a registration exists
        public bool RegistrationExists( int id ) => Registrations.Any( e => e.RegistrationID == id );
    }
}
