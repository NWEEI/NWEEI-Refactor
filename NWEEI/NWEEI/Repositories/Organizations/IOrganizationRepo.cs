using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IOrganizationRepo
    {
        IQueryable<Organization> Organizations { get; }
        IQueryable<Tag> Tags { get; }

        // create
        void AddOrganization(Organization organization);

        // retrieve
        List<Organization> GetAllOrganizations();
        List<Organization> GetOrganizationsByTagID(int tagID);
        Organization GetOrganizationByID(int id);
        bool OrganizationExists( int id );

        // update
        void UpdateOrganization(Organization organization);

        // delete
        void DeleteOrganization(Organization organization);
    }
}
