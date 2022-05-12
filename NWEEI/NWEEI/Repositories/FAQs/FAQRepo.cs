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

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return context.FAQs.Include(faq => faq.Category);
            }
        }

        // add a new FAQ
        public void AddFAQ(FAQ faq)
        {
            context.FAQs.Add(faq);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all FAQs
        public List<FAQ> GetAllFAQs()
        {
            List<FAQ> faqs = context.FAQs
                .Include(faq => faq.Category)
                .ToList();

            return faqs;
        }

        // get a list of FAQs by category
        public List<FAQ> GetFAQsByCategoryID(int categoryID)
        {
            List<FAQ> faqs = context.FAQs
                .Include(faq => faq.Category)
                .Where(faq => faq.Category.CategoryID == categoryID)
                .ToList();

            return faqs;
        }

        // TODO: refactor as async. pretty slow currently
        // get a list of lists of all FAQs grouped by category
        public List<List<FAQ>> GetFAQsByCategories()
        {
            // list of lists: each sub-list contains all FAQs in a category 
            List<List<FAQ>> faqsByCategory = new List<List<FAQ>>();

            // get all categories
            List<Category> categories = context.Categories.ToList();

            // loop through all categories and store their corresponding FAQs in individual lists
            foreach (Category c in categories)
            {
                List<FAQ> faqs = new List<FAQ>();

                // call GetFAQsByCategoryID. if result is > 0, add it to faqsByCategory
                faqs = GetFAQsByCategoryID(c.CategoryID);

                if (faqs.Count > 0)
                {
                    faqsByCategory.Add(faqs);
                }
            }

            return faqsByCategory;
            
        }

        // TODO: build out search functionality
        public List<FAQ> GetFAQsBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }

        // get a specific FAQ by its id
        public FAQ GetFAQByID(int id)
        {
            FAQ faq = context.FAQs
                .Include(f => f.Category)
                .Where(f => f.FAQID == id)
                .FirstOrDefault();

            return faq;
        }

        #endregion

        // update a FAQ
        public void UpdateFAQ(FAQ faq)
        {
            context.FAQs.Update(faq);
            context.SaveChanges();
        }

        // delete a FAQ
        public void DeleteFAQ(FAQ faq)
        {
            FAQ existingFAQ = context.FAQs.Find(faq.FAQID);
            context.FAQs.Remove(existingFAQ);
            context.SaveChanges();
        }
    }
}
