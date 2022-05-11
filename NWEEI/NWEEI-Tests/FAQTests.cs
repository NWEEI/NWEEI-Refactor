using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace NWEEI_Tests
{
    public class FAQTests
    {
        FAQTestRepo testRepo;
        FAQController controller;

        List<FAQ> faqs;
        FAQ f1, f2, f3, f4;
        Category c1, c2;

        [SetUp]
        public void Setup()
        {
            faqs = new List<FAQ>();

            // arrange controller with test repo
            testRepo = new FAQTestRepo();
            controller = new FAQController(testRepo);

            // arrange categories
            c1 = new Category
            {
                Name = "Test Category 1"
            };
            c2 = new Category
            {
                Name = "Test Category 2"
            };

            // arrange FAQs
            f1 = new FAQ
            {
                Question = "Test FAQ 1",
                Answer = "Test Answer 1",
                Category = c1,
                IsPublished = true,
                Featured = true
            };
            f2 = new FAQ
            {
                Question = "Test FAQ 2",
                Answer = "Test Answer 2",
                Category = c1,
                IsPublished = true,
                Featured = false
            };
            f3 = new FAQ
            {
                Question = "Test FAQ 3",
                Answer = "Test Answer 3",
                Category = c2,
                IsPublished = true,
                Featured = false
            };
            f4 = new FAQ
            {
                Question = "Test FAQ 4",
                Answer = "Test Answer 4",
                Category = c2,
                IsPublished = false,
                Featured = false
            };
        }

        [Test]
        // tests adding a new FAQ
        public void TestCreate()
        {
            // use controller method to add FAQ to repo
            controller.Create(f1).Wait();

            // retrieve FAQ from repo
            FAQ faq = testRepo.FAQs.ToList()[0];

            // check values
            Assert.IsNotNull(faq);
            Assert.AreEqual(0, faq.FAQID);
            Assert.AreEqual("Test FAQ 1", faq.Question);
            Assert.AreEqual("Test Category 1", faq.Category.Name);
        }

        [Test]
        // tests getting all FAQs
        public void TestIndex()
        {
            // add all FAQs to repo
            testRepo.AddFAQ(f1);
            testRepo.AddFAQ(f2);
            testRepo.AddFAQ(f3);
            testRepo.AddFAQ(f4);

            // get list of FAQs from Index method
            var viewResult = (ViewResult)controller.Index().Result;
            faqs = (List<FAQ>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(4, faqs.Count);
            Assert.AreEqual(faqs[0].Question, f1.Question);
            Assert.AreEqual(faqs[1].Question, f2.Question);
            Assert.AreEqual(faqs[2].Question, f3.Question);
            Assert.AreEqual(faqs[3].Question, f4.Question);
        }

        [Test]
        // tests getting a single FAQ by its id
        public void TestEdit()
        {
            // add an FAQ to repo
            testRepo.AddFAQ(f1);

            // pull that FAQ back out
            FAQ faq = testRepo.FAQs.ToList()[0];

            // edit its properties
            faq.Question = "New Question";
            faq.Answer = "New Answer";
            faq.Category = c2;
            faq.IsPublished = false;
            faq.Featured = false;

            // call update method with updated FAQ
            controller.Edit(faq.FAQID, faq);

            // pull FAQ out again
            FAQ updatedFAQ = testRepo.FAQs.ToList()[0];

            // check values
            Assert.AreEqual(updatedFAQ.Question, faq.Question);
            Assert.AreEqual(updatedFAQ.Answer, faq.Answer);
            Assert.AreEqual(updatedFAQ.Category, faq.Category);
            Assert.AreEqual(updatedFAQ.IsPublished, faq.IsPublished);
            Assert.AreEqual(updatedFAQ.Featured, faq.Featured);
        }

        [Test]
        // tests deleting an FAQ
        public void TestDelete()
        {
            // add an FAQ to repo
            testRepo.AddFAQ(f1);

            // pull that FAQ back out to get its id
            FAQ faq = testRepo.FAQs.ToList()[0];

            // call delete method (DeleteConfirmed) with id
            controller.DeleteConfirmed(faq.FAQID);

            // check number of FAQs in repo
            Assert.AreEqual(0, testRepo.FAQs.ToList().Count);
        }
    }
}
