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
        private List<Category> categories = new List<Category>();

        public IQueryable<FAQ> FAQs
        {
            get
            {
                return faqs.AsQueryable<FAQ>().Include(f => f.Category);
            }
        }

        // add a new FAQ
        public void AddFAQ(FAQ faq)
        {
            // attempt to retrieve existing FAQ
            FAQ existingFAQ = faqs.Find(f => f.Question == faq.Question);

            // add FAQ to list if it doesn't already exist
            if (existingFAQ == null)
            {
                // simulate auto-incremented primary key and add FAQ to list
                faq.FAQID = faqs.Count;
                faqs.Add(faq);
            }
            else
            {
                throw new Exception("FAQ already exists");
            }
        }

        // get a list of all FAQs
        public List<FAQ> GetAllFAQs()
        {
            faqs = FAQs.ToList();

            return faqs;
        }

        // get a list of published FAQs
        public List<FAQ> GetPublishedFAQs()
        {
            List<FAQ> faqs = FAQs
                .Where(faq => faq.IsPublished == true)
                .Include(faq => faq.Category)
                .ToList();

            return faqs;
        }

        // get a list of FAQs by category
        public List<FAQ> GetFAQsByCategoryID(int categoryID)
        {
            List<FAQ> faqsByCategory = faqs
                .Where(faq => faq.Category.CategoryID == categoryID)
                .ToList();

            return faqsByCategory;
        }

        // get a list of published FAQs by category
        public List<FAQ> GetPublishedFAQsByCategoryID(int categoryID)
        {
            List<FAQ> faqs = FAQs
                .Include(faq => faq.Category)
                .Where(faq => faq.Category.CategoryID == categoryID)
                .Where(faq => faq.IsPublished == true)
                .ToList();

            return faqs;
        }

        // TODO: write GetFAQCategories method and unit test
        // get a list of categories that have FAQs
        public List<Category> GetFAQCategories()
        {
            throw new NotImplementedException();
        }

        // get a specific FAQ by its id
        public FAQ GetFAQByID(int id)
        {
            FAQ faq = faqs.Find(f => f.FAQID == id);
            return faq;
        }

        // update a FAQ
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

        // delete a FAQ
        public void DeleteFAQ(FAQ faq)
        {
            FAQ existingFAQ = faqs.Find(f => f.FAQID == faq.FAQID);
            faqs.Remove(existingFAQ);
        }


        public IQueryable<Category> Categories
        {
            get
            {
                return categories.AsQueryable<Category>();
            }
        }

        // get a list of all categories
        public List<Category> GetAllCategories()
        {
            categories = Categories.ToList();

            return categories;
        }
    }
}
