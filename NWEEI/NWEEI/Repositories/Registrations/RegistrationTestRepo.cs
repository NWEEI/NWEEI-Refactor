using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class RegistrationTestRepo : IRegistrationRepo
    {
        private List<Registration> registrations = new List<Registration>();

        public IQueryable<Registration> Registrations
        {
            get
            {
                return registrations.AsQueryable<Registration>();
            }
        }

        public List<Registration> GetAllRegistrations()
        {
            registrations = Registrations.ToList();

            return registrations;
        }

        public Registration GetRegistrationByID(int id)
        {
            Registration registration = registrations.Find(r => r.RegistrationID == id);
            return registration;
        }
    }
}
