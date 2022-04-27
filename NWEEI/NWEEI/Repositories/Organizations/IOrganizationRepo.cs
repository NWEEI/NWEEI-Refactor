using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IOrganizationRepo
    {
        // retrieval methods
        IQueryable<Organization> Organizations { get; }
        List<Organization> GetAllOrganizations();
        List<Organization> GetOrganizationsByTagID(int tagID);
        Organization GetOrganizationByID(int id);
    }
}
