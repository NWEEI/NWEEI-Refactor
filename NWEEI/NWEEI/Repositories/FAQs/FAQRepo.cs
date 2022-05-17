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

        public List<Category> GetFAQCategories()
        {
            // get all categories with FAQs
            List<Category> faqCategories = context.Categories
                .Include(c => c.FAQs)
                .Where(c => c.FAQs.Any())
                .ToList();

            return faqCategories;
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

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            List<Category> categories = context.Categories
                .Include(c => c.FAQs)
                .ToList();

            return categories;
        }
    }
}
