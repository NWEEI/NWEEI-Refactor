using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class FAQRepo : IFAQRepo
    {
        private NWEEIContext context;

        public FAQRepo(NWEEIContext c)
        {
            context = c;
        }


        #region retrieval methods

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return context.FAQs.Include(faq => faq.Category);
            }
        }

        public List<FAQ> GetAllFAQs()
        {
            List<FAQ> faqs = context.FAQs
                .Include(faq => faq.Category)
                .ToList();

            return faqs;
        }

        public List<FAQ> GetFAQsByCategoryID(int categoryID)
        {
            List<FAQ> faqs = context.FAQs
                .Include(faq => faq.Category)
                .Where(faq => faq.Category.CategoryID == categoryID)
                .ToList();

            return faqs;
        }

        // TODO: build out search functionality
        public List<FAQ> GetFAQsBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }

        public FAQ GetFAQByID(int id)
        {
            FAQ faq = context.FAQs
                .Include(f => f.Category)
                .Where(f => f.FAQID == id)
                .FirstOrDefault();

            return faq;
        }

        #endregion

        public void UpdateFAQ(FAQ faq)
        {
            context.FAQs.Update(faq);
            context.SaveChanges();
        }
    }
}
