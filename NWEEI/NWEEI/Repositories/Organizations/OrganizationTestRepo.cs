using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class OrganizationTestRepo : IOrganizationRepo
    {
        private List<Organization> organizations = new();
        private List<Tag> tags = new( );

        public IQueryable<Organization> Organizations => organizations.AsQueryable<Organization>();

        // add a new organization
        public void AddOrganization(Organization organization)
        {
            // attempt to retrieve existing organization
            Organization existingOrg = organizations.Find(o => o.Name == organization.Name);
            
            // don't add organization to list if it already exists
            if (existingOrg is not null) throw new Exception( "Organization already exists" );

            // simulate auto-incremented primary key and add organization to list
            organization.OrganizationID = organizations.Count;
            organizations.Add( organization );
        }

        // get a list of all organizations
        public List<Organization> GetAllOrganizations( ) => organizations.ToList( );

        public List<Organization> GetAllOrganizationsAZ()
        {
            List<Organization> orgs = organizations.OrderBy(o => o.Name).ToList();
            return orgs;
        }

        public List<Tag> GetAllTags( ) => tags.ToList( );

        public List<Organization> GetOrganizationsByTagID(int tagID) => throw new NotImplementedException();

        // get a specific organization by its id
        public Organization GetOrganizationByID( int id ) => organizations.Find( org => org.OrganizationID == id );

        // check to see if an organization exists
        public bool OrganizationExists( int id ) => Organizations.Any( e => e.OrganizationID == id );

        // update an organization
        public void UpdateOrganization(Organization organization)
        {
            // retrieve organization from list
            Organization existingOrg = organizations.Find(o => o.OrganizationID == organization.OrganizationID);

            // update its properties
            existingOrg.Name = organization.Name;
            existingOrg.Description = organization.Description;
            existingOrg.ImageURL = organization.ImageURL;
            existingOrg.WebsiteURL = organization.WebsiteURL;
        }

        // delete an organization
        public void DeleteOrganization(Organization organization) => organizations.Remove( organizations.Find( o => o.OrganizationID == organization.OrganizationID ) );
    }
}
