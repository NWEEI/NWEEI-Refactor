using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IFAQRepo
    {
        IQueryable<FAQ> FAQs { get; }

        // create
        void AddFAQ(FAQ faq);

        // retrieve
        List<FAQ> GetAllFAQs();
        List<FAQ> GetFAQsByCategoryID(int categoryID);
        List<FAQ> GetFAQsBySearchQuery(string query);
        FAQ GetFAQByID(int id);

        // update
        void UpdateFAQ(FAQ faq);

        // delete
        void DeleteFAQ(FAQ faq);
    }
}
