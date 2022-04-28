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

        #region retrieval methods

        public IQueryable<Registration> Registrations
        {
            get
            {
                return context.Registrations;
            }
        }

        public List<Registration> GetAllRegistrations()
        {
            List<Registration> registrations = context.Registrations
                .OrderByDescending(r => r.DateSubmitted)
                .ToList();

            return registrations;
        }

        public Registration GetRegistrationByID(int id)
        {
            Registration registration = context.Registrations
                .Where(r => r.RegistrationID == id)
                .FirstOrDefault();

            return registration;
        }

        #endregion
    }
}
