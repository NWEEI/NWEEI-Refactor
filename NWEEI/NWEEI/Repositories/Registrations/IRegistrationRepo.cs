using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IRegistrationRepo
    {
        IQueryable<Registration> Registrations { get; }

        // create
        void AddRegistration(Registration registration);

        // retrieve
        List<Registration> GetAllRegistrations();
        Registration GetRegistrationByID(int id);

        // update
        void UpdateRegistration(Registration registration);

        // delete
        void DeleteRegistration( Registration registration );

        // exists
        bool RegistrationExists( int id );
    }
}
