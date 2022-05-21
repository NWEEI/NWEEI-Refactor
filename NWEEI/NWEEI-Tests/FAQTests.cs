using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using NUnit.Framework;
using NWEEI.Controllers;
using NWEEI.Models;
using NWEEI.Repositories;
using NWEEI.ViewModels;

namespace NWEEI_Tests
{
    public class FAQTests
    {
        FAQController controller;
        FAQTestRepo testRepo;
        List<FAQ> faqs;
        FAQ f1, f2, f3, f4;

        CategoryTestRepo categoryRepo;
        Category c1, c2;

        CategorySelectorViewModel viewModel;

        [SetUp]
        public void Setup()
        {
            faqs = new List<FAQ>();

            // arrange controller with test repo
            testRepo = new FAQTestRepo();
            controller = new FAQController(testRepo);

            // arrange categories
            categoryRepo = new CategoryTestRepo();
            c1 = new Category
            {
                Name = "Test Category 1"
            };
            c2 = new Category
            {
                Name = "Test Category 2"
            };
            categoryRepo.AddCategory(c1);
            categoryRepo.AddCategory(c2);

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

            // arrange view model
            viewModel = new CategorySelectorViewModel
            {
                Categories = categoryRepo.GetAllCategories(),
                CurrentFAQ = f1
            };
        }

        [Test]
        // tests adding a new FAQ
        public void TestCreate()
        {
            // use controller method to add FAQ to repo
            controller.Create(viewModel).Wait();

            // retrieve FAQ from repo
            FAQ faq = testRepo.FAQs.ToList()[0];

            // check values
            Assert.IsNotNull(faq);
            Assert.AreEqual(0, faq.FAQID);
            Assert.AreEqual(viewModel.CurrentFAQ.Question, faq.Question);
            Assert.AreEqual(viewModel.CurrentFAQ.Category.Name, faq.Category.Name);
        }

        [Test]
        // tests getting all FAQs
        public void TestManage()
        {
            // add all FAQs to repo
            testRepo.AddFAQ(f1);
            testRepo.AddFAQ(f2);
            testRepo.AddFAQ(f3);
            testRepo.AddFAQ(f4);

            // get list of FAQs from Index method
            var viewResult = (ViewResult)controller.Manage().Result;
            faqs = (List<FAQ>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(4, faqs.Count);
            Assert.AreEqual(faqs[0].Question, f1.Question);
            Assert.AreEqual(faqs[1].Question, f2.Question);
            Assert.AreEqual(faqs[2].Question, f3.Question);
            Assert.AreEqual(faqs[3].Question, f4.Question);
        }

        [Test]
        // tests getting all FAQs in a category
        public void TestByCategory()
        {
            // add all FAQs to repo
            testRepo.AddFAQ(f1);
            testRepo.AddFAQ(f2);
            testRepo.AddFAQ(f3);
            testRepo.AddFAQ(f4);

            // get list of FAQs from Index method
            var viewResult = (ViewResult)controller.ByCategory(0).Result;
            faqs = (List<FAQ>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(2, faqs.Count);
            Assert.AreEqual("Test Category 1", f1.Category.Name);
        }

        [Test]
        // tests getting a single FAQ
        public void TestDetails()
        {
            // add an FAQ to repo
            testRepo.AddFAQ(f1);

            // pull that FAQ back out to get its id
            FAQ faq = testRepo.FAQs.ToList()[0];

            // use controller method to retrieve the FAQ by its id
            var viewResult = (ViewResult)controller.Details(faq.FAQID).Result;
            FAQ newFAQ = (FAQ)viewResult.ViewData.Model;

            // check values
            Assert.IsNotNull(newFAQ);
            Assert.AreEqual(f1.FAQID, newFAQ.FAQID);
            Assert.AreEqual(f1.Question, newFAQ.Question);
            Assert.AreEqual(f1.Answer, newFAQ.Answer);
            Assert.AreEqual(f1.Category.Name, newFAQ.Category.Name);
            Assert.AreEqual(f1.IsPublished, newFAQ.IsPublished);
            Assert.AreEqual(f1.Featured, newFAQ.Featured);
        }

        [Test]
        // tests getting a single FAQ by its id
        public void TestEdit()
        {
            // add an FAQ to repo
            testRepo.AddFAQ(f1);

            // pull that FAQ back out and assign it to viewModel
            viewModel.CurrentFAQ = testRepo.FAQs.ToList()[0];

            // edit its properties
            viewModel.CurrentFAQ.Question = "New Question";
            viewModel.CurrentFAQ.Answer = "New Answer";
            viewModel.CurrentFAQ.Category = c2;
            viewModel.CurrentFAQ.IsPublished = false;
            viewModel.CurrentFAQ.Featured = false;

            // call update method with updated FAQ
            controller.Edit(viewModel.CurrentFAQ.FAQID, viewModel);

            // pull FAQ out again
            FAQ updatedFAQ = testRepo.FAQs.ToList()[0];

            // check values
            Assert.AreEqual(viewModel.CurrentFAQ.Question, updatedFAQ.Question);
            Assert.AreEqual(viewModel.CurrentFAQ.Answer, updatedFAQ.Answer);
            Assert.AreEqual(viewModel.CurrentFAQ.Category, updatedFAQ.Category);
            Assert.AreEqual(viewModel.CurrentFAQ.IsPublished, updatedFAQ.IsPublished);
            Assert.AreEqual(viewModel.CurrentFAQ.Featured, updatedFAQ.Featured);
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