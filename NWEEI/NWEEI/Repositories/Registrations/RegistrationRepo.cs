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

        public RegistrationRepo(NWEEIContext c)
        {
            context = c;
        }

        public IQueryable<Registration> Registrations
        {
            get
            {
                return context.Registrations;
            }
        }

        // add a new registration
        public void AddRegistration(Registration registration)
        {
            context.Registrations.Add(registration);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all registrations
        public List<Registration> GetAllRegistrations()
        {
            List<Registration> registrations = context.Registrations
                .OrderByDescending(r => r.DateSubmitted)
                .ToList();

            return registrations;
        }

        // get a specific registration by its id
        public Registration GetRegistrationByID(int id)
        {
            Registration registration = context.Registrations
                .Where(r => r.RegistrationID == id)
                .FirstOrDefault();

            return registration;
        }

        #endregion

        // update a registration
        public void UpdateRegistration(Registration registration)
        {
            context.Registrations.Update(registration);
            context.SaveChanges();
        }
    }
}
