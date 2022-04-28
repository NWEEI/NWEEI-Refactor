using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IRegistrationRepo
    {
        // retrieval methods
        IQueryable<Registration> Registrations { get; }
        List<Registration> GetAllRegistrations();
        Registration GetRegistrationByID(int id);
    }
}
