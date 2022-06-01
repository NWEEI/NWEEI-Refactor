using System;
using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using NWEEI.ViewModels;

namespace NWEEI_Tests
{
    public class ArticleTests
    {
        ArticleTestRepo testRepo;
        ArticleController controller;
        List<Article> articles;
        Article a1, a2, a3, a4;

        CategoryTestRepo categoryRepo;
        Category c1, c2;
        AppUser u1;

        CategorySelectorViewModel viewModel;
        string htmlCode;

        IWebHostEnvironment _env;

        [SetUp]
        public void Setup()
        {
            articles = new List<Article>();
            htmlCode = "<p>Test HTML for article body</p>";

            // arrange controller with test repo
            testRepo = new ArticleTestRepo();
            controller = new ArticleController(testRepo, categoryRepo, _env);

            // arrange user
            u1 = new AppUser
            {
                FirstName = "First",
                LastName = "Last",
                DateRegistered = DateTime.Now
            };

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

            // arrange articles
            a1 = new Article
            {
                Title = "Test Article 1",
                Body = "Test Article Body 1",
                DateCreated = DateTime.Now,
                Author = u1,
                Category = c1,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            a2 = new Article
            {
                Title = "Test Article 2",
                Body = "Test Article Body 2",
                DateCreated = DateTime.Now,
                Author = u1,
                Category = c1,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            a3 = new Article
            {
                Title = "Test Article 3",
                Body = "Test Article Body 3",
                DateCreated = DateTime.Now,
                Author = u1,
                Category = c2,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            a4 = new Article
            {
                Title = "Test Article 4",
                Body = "Test Article Body 4",
                DateCreated = DateTime.Now,
                Author = u1,
                Category = c2,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };

            // arrange view model
            viewModel = new CategorySelectorViewModel
            {
                Categories = categoryRepo.GetAllCategories(),
                CurrentArticle = a1
            };
        }

        [Test]
        // tests creating a new article
        public void TestCreate()
        {
            // use controller method to add article to repo
            controller.Create(viewModel, htmlCode).Wait();

            // retrieve article from repo
            Article article = testRepo.Articles.ToList()[0];

            // check values
            Assert.IsNotNull(article);
            Assert.AreEqual(0, article.ArticleID);
            Assert.AreEqual(htmlCode, article.Body);  // article body should match the htmlCode string, not initialized value
            Assert.AreEqual(a1.Author, article.Author);
            Assert.AreEqual(a1.Category, article.Category);
            Assert.AreEqual(a1.IsPublished, article.IsPublished);
            Assert.AreEqual(a1.Featured, article.Featured);
            Assert.AreEqual(a1.Views, article.Views);
        }

        [Test]
        // tests getting all articles
        public void TestManage()
        {
            // add all articles to repo
            testRepo.AddArticle(a1);
            testRepo.AddArticle(a2);
            testRepo.AddArticle(a3);
            testRepo.AddArticle(a4);

            // get list of articles from Manage method
            var viewResult = (ViewResult)controller.Manage().Result;
            articles = (List<Article>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(4, articles.Count);
            Assert.AreEqual(a1.Title, articles[0].Title);
            Assert.AreEqual(a2.Title, articles[1].Title);
            Assert.AreEqual(a3.Title, articles[2].Title);
            Assert.AreEqual(a4.Title, articles[3].Title);
        }

        [Test]
        // tests getting a single article
        public void TestDetails()
        {
            // add an article to repo
            testRepo.AddArticle(a1);

            // pull that article back out to get its id
            Article article = testRepo.Articles.ToList()[0];

            // use controller method to retrieve the article by its id
            var viewResult = (ViewResult)controller.Details(article.ArticleID).Result;
            Article newArticle = (Article)viewResult.ViewData.Model;

            // check values
            Assert.IsNotNull(newArticle);
            Assert.AreEqual(a1.ArticleID, newArticle.ArticleID);
            Assert.AreEqual(a1.Author, newArticle.Author);
            Assert.AreEqual(a1.Body, newArticle.Body);

            // check view counter - should be 101
            Assert.AreEqual(101, newArticle.Views);
        }

        [Test]
        // tests editing article
        public void TestEdit()
        {
            // add an article to repo
            testRepo.AddArticle(a1);

            // pull that article back out and assign it to viewModel
            viewModel.CurrentArticle = testRepo.Articles.ToList()[0];

            // edit its properties
            viewModel.CurrentArticle.Title = "New Title";
            viewModel.CurrentArticle.Category = c2;
            viewModel.CurrentArticle.IsPublished = false;
            viewModel.CurrentArticle.Featured = false;
            htmlCode = "<p>New article body</p>";

            // call update method with updated article
            controller.Edit(viewModel.CurrentArticle.ArticleID, viewModel, htmlCode);

            // pull article out again
            Article updatedArticle = testRepo.Articles.ToList()[0];

            // check values
            Assert.AreEqual(viewModel.CurrentArticle.ArticleID, updatedArticle.ArticleID);
            Assert.AreEqual(viewModel.CurrentArticle.Title, updatedArticle.Title);
            Assert.AreEqual(viewModel.CurrentArticle.Body, updatedArticle.Body);
            Assert.AreEqual(viewModel.CurrentArticle.Category, updatedArticle.Category);
            Assert.AreEqual(viewModel.CurrentArticle.IsPublished, updatedArticle.IsPublished);
            Assert.AreEqual(viewModel.CurrentArticle.Featured, updatedArticle.Featured);
        }

        [Test]
        // tests deleting an article
        public void TestDelete()
        {
            // add an article to repo
            testRepo.AddArticle(a1);

            // pull that article back out to get its id
            Article article = testRepo.Articles.ToList()[0];

            // call delete method (DeleteConfirmed) with id
            controller.DeleteConfirmed(article.ArticleID);

            // check number of articles in repo
            Assert.AreEqual(0, testRepo.Articles.ToList().Count);
        }
    }
}