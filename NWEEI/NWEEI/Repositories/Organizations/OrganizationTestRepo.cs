using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class OrganizationTestRepo : IOrganizationRepo
    {
        private List<Organization> organizations = new List<Organization>();

        public IQueryable<Organization> Organizations
        {
            get
            {
                return organizations.AsQueryable<Organization>();
            }
        }

        // add a new organization
        public void AddOrganization(Organization organization)
        {
            // attempt to retrieve existing organization
            Organization existingOrg = organizations.Find(o => o.Name == organization.Name);

            // add organization to list if it doesn't already exist
            if (existingOrg == null)
            {
                // simulate auto-incremented primary key and add organization to list
                organization.OrganizationID = organizations.Count;
                organizations.Add(organization);
            }
            else
            {
                throw new Exception("Organization already exists");
            }
        }

        // get a list of all organizations
        public List<Organization> GetAllOrganizations()
        {
            organizations = Organizations.ToList();

            return organizations;
        }

        // TODO: decide how to handle this - include tag methods within org repo
        // for retrieval by tagID?
        public List<Organization> GetOrganizationsByTagID(int tagID)
        {
            throw new NotImplementedException();
        }

        // get a specific organization by its id
        public Organization GetOrganizationByID(int id)
        {
            Organization organization = organizations.Find(org => org.OrganizationID == id);
            return organization;
        }

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

            // clear list of tags and set to new org's tags
            existingOrg.Tags.Clear();
            foreach (Tag t in organization.Tags)
            {
                existingOrg.Tags.Add(t);
            }
        }

        // delete an organization
        public void DeleteOrganization(Organization organization)
        {
            Organization existingOrg = organizations.Find(o => o.OrganizationID == organization.OrganizationID);
            organizations.Remove(existingOrg);
        }
    }
}
