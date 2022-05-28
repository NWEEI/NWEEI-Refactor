using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class OrganizationRepo : IOrganizationRepo
    {
        private NWEEIContext context;

        public OrganizationRepo( NWEEIContext c ) => context = c;

        public IQueryable<Organization> Organizations => context.Organizations;

        // add a new organization
        public void AddOrganization(Organization organization)
        {
            context.Add(organization);
            context.SaveChanges();
        }

        // get a list of all organizations
        public List<Organization> GetAllOrganizations( ) => context.Organizations
            .OrderBy( o => o.Name ).ToList( );

        // get a list of all organizations ordered by name (a-z)
        public List<Organization> GetAllOrganizationsAZ()
        {
            List<Organization> orgs = context.Organizations.OrderBy(o => o.Name).ToList();
            return orgs;
        }

        // get a specific organization by its id
        public Organization GetOrganizationByID( int id ) => context.Organizations
            .FirstOrDefault( o => o.OrganizationID == id );

        // check to see if an organization exists
        public bool OrganizationExists( int id ) => Organizations.Any( o => o.OrganizationID == id );

        // update an organization
        public void UpdateOrganization(Organization organization)
        {
            context.Organizations.Update(organization);
            context.SaveChanges();
        }

        // delete an organization
        public void DeleteOrganization(Organization organization)
        {
            Organization existingOrg = context.Organizations.Find(organization.OrganizationID);
            context.Organizations.Remove(existingOrg);
            context.SaveChanges();
        }

    }
}
