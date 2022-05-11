using System;
using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace NWEEI_Tests
{
    public class CategoryTests
    {
        CategoryTestRepo testRepo;
        CategoryController controller;

        List<Category> categories;
        Category c1, c2, c3, c4;

        [SetUp]
        public void Setup()
        {
            categories = new List<Category>();

            // arrange controller with test repo
            testRepo = new CategoryTestRepo();
            controller = new CategoryController(testRepo);

            // arrange categories
            c1 = new Category
            {
                Name = "Test Category 1"
            };
            c2 = new Category
            {
                Name = "Test Category 2"
            };
            c3 = new Category
            {
                Name = "Test Category 3"
            };
            c4 = new Category
            {
                Name = "Test Category 4"
            };
        }

        [Test]
        // tests adding a new category
        public void TestCreate()
        {
            // use controller method to add category to repo
            controller.Create(c1).Wait();

            // retrieve category from repo
            Category category = testRepo.Categories.ToList()[0];

            // check values
            Assert.IsNotNull(category);
            Assert.AreEqual(0, category.CategoryID);
            Assert.AreEqual(c1.Name, category.Name);
        }

        [Test]
        // tests getting all categories
        public void TestIndex()
        {
            // add all categories to repo
            testRepo.AddCategory(c1);
            testRepo.AddCategory(c2);
            testRepo.AddCategory(c3);
            testRepo.AddCategory(c4);

            // get list of categories from Index method
            var viewResult = (ViewResult)controller.Index().Result;
            categories = (List<Category>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(4, categories.Count);
            Assert.AreEqual(categories[0].Name, c1.Name);
            Assert.AreEqual(categories[1].Name, c2.Name);
            Assert.AreEqual(categories[2].Name, c3.Name);
            Assert.AreEqual(categories[3].Name, c4.Name);
        }

        [Test]
        // tests getting a single category
        public void TestDetails()
        {
            // add a category to repo
            testRepo.AddCategory(c1);

            // pull that category back out to get its id
            Category category = testRepo.Categories.ToList()[0];

            // use controller method to retrieve the category by its id
            var viewResult = (ViewResult)controller.Details(category.CategoryID).Result;
            Category newCategory = (Category)viewResult.ViewData.Model;

            // check values
            Assert.IsNotNull(newCategory);
            Assert.AreEqual(c1.CategoryID, newCategory.CategoryID);
            Assert.AreEqual(c1.Name, newCategory.Name);
        }

        [Test]
        // tests getting a single category by its id
        public void TestEdit()
        {
            // add a category to repo
            testRepo.AddCategory(c1);

            // pull that category back out
            Category category = testRepo.Categories.ToList()[0];

            // edit its name
            category.Name = "New Name";

            // call update method with updated category
            controller.Edit(category.CategoryID, category);

            // pull category out again
            Category updatedCategory = testRepo.Categories.ToList()[0];

            // check name value
            Assert.AreEqual(category.Name, updatedCategory.Name);
        }

        [Test]
        // tests deleting a category
        public void TestDelete()
        {
            // add a category to repo
            testRepo.AddCategory(c1);

            // pull that category back out to get its id
            Category category = testRepo.Categories.ToList()[0];

            // call delete method (DeleteConfirmed) with id
            controller.DeleteConfirmed(category.CategoryID);

            // check number of categories in repo
            Assert.AreEqual(0, testRepo.Categories.ToList().Count);
        }
    }
}
