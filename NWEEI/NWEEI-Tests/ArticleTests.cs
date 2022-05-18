//using System;
//using NWEEI.Repositories;
//using NWEEI.Controllers;
//using NUnit.Framework;
//using NWEEI.Models;
//using System.Linq;
//using System.Collections.Generic;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.AspNetCore.Identity;
//using Microsoft.AspNetCore.Hosting;

//namespace NWEEI_Tests
//{
//    public class ArticleTests
//    {
//        ArticleTestRepo testRepo;
//        ArticleController controller;
//        UserManager<AppUser> userManager;

//        List<Article> articles;
//        Article a1, a2, a3, a4;
//        Category c1, c2;
//        AppUser u1;

//        string htmlCode;

//        IWebHostEnvironment _env;

//        [SetUp]
//        public void Setup()
//        {
//            articles = new List<Article>();
//            htmlCode = "<p>Test HTML for article body</p>";

//            // arrange controller with test repo
//            testRepo = new ArticleTestRepo();
//            controller = new ArticleController(testRepo, _env);

//            // arrange user
//            u1 = new AppUser
//            {
//                FirstName = "First",
//                LastName = "Last",
//                DateRegistered = DateTime.Now
//            };

//            // arrange categories
//            c1 = new Category
//            {
//                Name = "Test Category 1"
//            };
//            c2 = new Category
//            {
//                Name = "Test Category 2"
//            };

//            // arrange articles
//            a1 = new Article
//            {
//                Title = "Test Article 1",
//                Body = "Test Article Body 1",
//                DateCreated = DateTime.Now,
//                Author = u1,
//                Category = c1,
//                IsPublished = true,
//                PublishDate = DateTime.Now,
//                Featured = true,
//                Views = 100
//            };
//            a2 = new Article
//            {
//                Title = "Test Article 2",
//                Body = "Test Article Body 2",
//                DateCreated = DateTime.Now,
//                Author = u1,
//                Category = c1,
//                IsPublished = true,
//                PublishDate = DateTime.Now,
//                Featured = true,
//                Views = 100
//            };
//            a3 = new Article
//            {
//                Title = "Test Article 3",
//                Body = "Test Article Body 3",
//                DateCreated = DateTime.Now,
//                Author = u1,
//                Category = c2,
//                IsPublished = true,
//                PublishDate = DateTime.Now,
//                Featured = true,
//                Views = 100
//            };
//            a4 = new Article
//            {
//                Title = "Test Article 4",
//                Body = "Test Article Body 4",
//                DateCreated = DateTime.Now,
//                Author = u1,
//                Category = c2,
//                IsPublished = true,
//                PublishDate = DateTime.Now,
//                Featured = true,
//                Views = 100
//            };
//        }

//        [Test]
//        // tests creating a new article
//        public void TestCreate()
//        {
//            // use controller method to add article to repo
//            controller.Create(a1, htmlCode).Wait();

//            // retrieve article from repo
//            Article article = testRepo.Articles.ToList()[0];

//            // check values
//            Assert.IsNotNull(article);
//            Assert.AreEqual(0, article.ArticleID);
//            Assert.AreEqual(htmlCode, article.Body);  // article body should match the htmlCode string, not initialized value
//            Assert.AreEqual(a1.DateCreated, article.DateCreated);
//            Assert.AreEqual(a1.Author, article.Author);
//            Assert.AreEqual(a1.Category, article.Category);
//            Assert.AreEqual(a1.IsPublished, article.IsPublished);
//            Assert.AreEqual(a1.PublishDate, article.PublishDate);
//            Assert.AreEqual(a1.Featured, article.Featured);
//            Assert.AreEqual(a1.Views, article.Views);
//        }

//        [Test]
//        // tests getting all articles
//        public void TestManage()
//        {
//            // add all articles to repo
//            testRepo.AddArticle(a1);
//            testRepo.AddArticle(a2);
//            testRepo.AddArticle(a3);
//            testRepo.AddArticle(a4);

//            // get list of articles from Manage method
//            var viewResult = (ViewResult)controller.Manage().Result;
//            articles = (List<Article>)viewResult.ViewData.Model;

//            // check values
//            Assert.AreEqual(4, articles.Count);
//            Assert.AreEqual(a1.Title, articles[0].Title);
//            Assert.AreEqual(a2.Title, articles[1].Title);
//            Assert.AreEqual(a3.Title, articles[2].Title);
//            Assert.AreEqual(a4.Title, articles[3].Title);
//        }

//        [Test]
//        // tests getting a single article
//        public void TestDetails()
//        {
//            // add an article to repo
//            testRepo.AddArticle(a1);

//            // pull that article back out to get its id
//            Article article = testRepo.Articles.ToList()[0];

//            // use controller method to retrieve the article by its id
//            var viewResult = (ViewResult)controller.Details(article.ArticleID).Result;
//            Article newArticle = (Article)viewResult.ViewData.Model;

//            // check values
//            Assert.IsNotNull(newArticle);
//            Assert.AreEqual(a1.ArticleID, newArticle.ArticleID);
//            Assert.AreEqual(a1.Author, newArticle.Author);
//            Assert.AreEqual(a1.Body, newArticle.Body);
//        }

//        [Test]
//        // tests editing article
//        public void TestEdit()
//        {
//            // add an article to repo
//            testRepo.AddArticle(a1);

//            // pull that article back out
//            Article article = testRepo.Articles.ToList()[0];

//            // edit its properties
//            article.Title = "New Title";
//            article.Category = c2;
//            article.IsPublished = false;
//            article.Featured = false;
//            htmlCode = "<p>New article body</p>";

//            // call update method with updated article
//            controller.Edit(article.ArticleID, article, htmlCode);

//            // pull article out again
//            Article updatedArticle = testRepo.Articles.ToList()[0];

//            // check values
//            Assert.AreEqual(article.ArticleID, updatedArticle.ArticleID);
//            Assert.AreEqual(article.Title, updatedArticle.Title);
//            Assert.AreEqual(article.Body, updatedArticle.Body);
//            Assert.AreEqual(article.Category, updatedArticle.Category);
//            Assert.AreEqual(article.IsPublished, updatedArticle.IsPublished);
//            Assert.AreEqual(article.Featured, updatedArticle.Featured);
//        }

//        [Test]
//        // tests deleting an article
//        public void TestDelete()
//        {
//            // add an article to repo
//            testRepo.AddArticle(a1);

//            // pull that article back out to get its id
//            Article article = testRepo.Articles.ToList()[0];

//            // call delete method (DeleteConfirmed) with id
//            controller.DeleteConfirmed(article.ArticleID);

//            // check number of articles in repo
//            Assert.AreEqual(0, testRepo.Articles.ToList().Count);
//        }
//    }
//}
