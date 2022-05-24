using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IOrganizationRepo
    {
        IQueryable<Organization> Organizations { get; }

        // create
        void AddOrganization(Organization organization);

        // retrieve
        List<Organization> GetAllOrganizations( );
        List<Organization> GetAllOrganizationsAZ();
        Organization GetOrganizationByID(int id);

        // nullcheck
        bool OrganizationExists( int id );

        // update
        void UpdateOrganization(Organization organization);

        // delete
        void DeleteOrganization(Organization organization);
    }
}
