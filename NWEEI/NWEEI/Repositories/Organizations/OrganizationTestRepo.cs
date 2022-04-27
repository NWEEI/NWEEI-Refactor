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
    }
}
