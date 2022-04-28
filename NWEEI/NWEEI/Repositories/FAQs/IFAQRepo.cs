using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IFAQRepo
    {
        // retrieval methods
        IQueryable<FAQ> FAQs { get; }
        List<FAQ> GetAllFAQs();
        List<FAQ> GetFAQsByCategoryID(int categoryID);
        List<FAQ> GetFAQsBySearchQuery(string query);
        FAQ GetFAQByID(int id);
    }
}
