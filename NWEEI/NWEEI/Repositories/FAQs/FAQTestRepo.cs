using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class FAQTestRepo : IFAQRepo
    {
        private List<FAQ> faqs = new List<FAQ>();

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return faqs.AsQueryable<FAQ>();
            }
        }

        public List<FAQ> GetAllFAQs()
        {
            faqs = FAQs.ToList();

            return faqs;
        }

        public List<FAQ> GetFAQsByCategoryID(int categoryID)
        {
            List<FAQ> faqsByCategory = faqs
                .Where(faq => faq.Category.CategoryID == categoryID)
                .ToList();

            return faqsByCategory;
        }

        // TODO: build out search functionality
        public List<FAQ> GetFAQsBySearchQuery(string query)
        {
            throw new NotImplementedException();
        }

        public FAQ GetFAQByID(int id)
        {
            FAQ faq = faqs.Find(f => f.FAQID == id);
            return faq;
        }

        public void UpdateFAQ(FAQ faq)
        {
            // retrieve faq from list
            FAQ existingFAQ = faqs.Find(f => f.FAQID == faq.FAQID);

            // update its properties
            existingFAQ.Question = faq.Question;
            existingFAQ.Answer = faq.Answer;
            existingFAQ.Category = faq.Category;
            existingFAQ.IsPublished = faq.IsPublished;
            existingFAQ.Featured = faq.Featured;
        }
    }
}
