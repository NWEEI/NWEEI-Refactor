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

        public Organization GetOrganizationByID(int id)
        {
            Organization organization = organizations.Find(org => org.OrganizationID == id);
            return organization;
        }

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
    }
}
