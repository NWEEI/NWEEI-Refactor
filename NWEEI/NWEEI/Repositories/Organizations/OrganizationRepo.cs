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

        public OrganizationRepo(NWEEIContext c)
        {
            context = c;
        }


        #region retrieval methods

        public IQueryable<Organization> Organizations
        {
            get
            {
                return context.Organizations
                    .Include(org => org.Tags);
            }
        }
        
        public List<Organization> GetAllOrganizations()
        {
            List<Organization> organizations = context.Organizations
                .OrderBy(org => org.Name)
                .Include(org => org.Tags)
                .ToList();

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
            Organization organization = context.Organizations
                .Include(org => org.Tags)
                .Where(org => org.OrganizationID == id)
                .FirstOrDefault();

            return organization;
        }

        #endregion
    }
}
