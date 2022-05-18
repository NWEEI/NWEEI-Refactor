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

        public IQueryable<Organization> Organizations => context.Organizations
                    .Include( organization => organization.TagKeys );

        public IQueryable<Tag> Tags => context.Tags;

        // add a new organization
        public void AddOrganization(Organization organization)
        {
            context.Add(organization);
            context.SaveChanges();
        }

        // get a list of all organizations
        public List<Organization> GetAllOrganizations( ) => context.Organizations
            .Include(o => o.TagKeys)
            .OrderBy( o => o.Name ).ToList( );
        public List<Tag> GetAllTags( ) => context.Tags.OrderBy( tag => tag.Name ).ToList( );

        // TODO: decide how to handle this - include tag methods within org repo
        // for retrieval by tagID?
        public List<Organization> GetOrganizationsByTagID( int tagID ) => throw new NotImplementedException();

        // get a specific organization by its id
        public Organization GetOrganizationByID( int id ) => context.Organizations
            .Include(o => o.TagKeys)
            .FirstOrDefault( o => o.OrganizationID == id );

        // get a specific tag by its id
        public Tag GetTagByID( int id ) => context.Tags.FirstOrDefault( t => t.TagID == id )
            ;

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
