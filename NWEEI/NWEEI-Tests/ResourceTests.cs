using System;
using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Hosting;
using NWEEI.ViewModels;
using NWEEI.Controllers.Navigation;

namespace NWEEI_Tests
{
    public class ResourceTests
    {
        ResourceTestRepo testRepo;
        ResourcesController controller;
        OrganizationTestRepo orgRepo;

        List<Article> articles;
        Article a1, a2, a3, a4, a5, a6, a7;
        List<FAQ> faqs;
        Category c1, c2, c3, c4;

        [SetUp]
        public void Setup()
        {
            articles = new List<Article>();
            faqs = new List<FAQ>();

            // arrange controller with test repo
            testRepo = new ResourceTestRepo();
            controller = new ResourcesController(testRepo, orgRepo);

            // arrange categories based on news-related categories:
            // "NWEEI News Articles" (categoryID 7)
            // "Short News Snippets" (categoryID 4)
            // "News" (categoryID 21)
            // "News" (categoryID 51)
            c1 = new Category
            {
                CategoryID = 7,
                Name = "NWEEI News Articles"
            };
            c2 = new Category
            {
                CategoryID = 4,
                Name = "Short News Snippets"
            };
            c3 = new Category
            {
                CategoryID = 21,
                Name = "News"
            };
            c4 = new Category
            {
                CategoryID = 51,
                Name = "News"
            };


            // arrange articles
            a1 = new Article
            {
                Title = "Test Article 1",
                Body = "Test Article Body 1",
                DateCreated = new DateTime(1111, 1, 1),
                Category = c1,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            testRepo.AddArticle(a1);
            a2 = new Article
            {
                Title = "Test Article 2",
                Body = "Test Article Body 2",
                DateCreated = new DateTime(2222, 2, 2),
                Category = c1,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = false,
                Views = 100
            };
            testRepo.AddArticle(a2);
            a3 = new Article
            {
                Title = "Test Article 3",
                Body = "Test Article Body 3",
                DateCreated = new DateTime(3333, 3, 3),
                Category = c2,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            testRepo.AddArticle(a3);
            a4 = new Article
            {
                Title = "Test Article 4",
                Body = "Test Article Body 4",
                DateCreated = new DateTime(4444, 4, 4),
                Category = c2,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            testRepo.AddArticle(a4);
            a5 = new Article
            {
                Title = "Test Article 5",
                Body = "Test Article Body 5",
                DateCreated = new DateTime(5555, 5, 5),
                Category = c3,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = false,
                Views = 100
            };
            testRepo.AddArticle(a5);
            a6 = new Article
            {
                Title = "Test Article 6",
                Body = "Test Article Body 6",
                DateCreated = new DateTime(6666, 6, 6),
                Category = c4,
                IsPublished = true,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            testRepo.AddArticle(a6);
            a7 = new Article
            {
                Title = "Test Article 7",
                Body = "Test Article Body 7",
                DateCreated = new DateTime(7777, 7, 7),
                Category = c4,
                IsPublished = false,
                PublishDate = DateTime.Now,
                Featured = true,
                Views = 100
            };
            testRepo.AddArticle(a7);
        }

        [Test]
        // test getting all published articles from nweei news category
        public void TestNWEEINews()
        {
            // use controller method to get NWEEI News articles
            var viewResult = (ViewResult)controller.NWEEINews().Result;
            articles = (List<Article>)viewResult.ViewData.Model;

            // check results
            // should have 2 published articles, 1 of which is featured and should be first in list
            Assert.AreEqual(2, articles.Count);
            Assert.AreEqual(true, articles[0].Featured);
            Assert.AreEqual("NWEEI News Articles", articles[0].Category.Name);
        }

        [Test]
        // test getting all published articles from nweei news category
        public void TestIndustryNews()
        {
            // use controller method to get NWEEI News articles
            var viewResult = (ViewResult)controller.IndustryNews().Result;
            articles = (List<Article>)viewResult.ViewData.Model;

            // check results
            // should have 4 published articles, 3 of which are featured and should be first in list
            // categoryIDs should be 4, 21, 51
            Assert.AreEqual(4, articles.Count);
            Assert.AreEqual(true, articles[2].Featured);
            Assert.AreEqual(false, articles[3].Featured);
            Assert.AreEqual(2, articles.Where(a => a.Category.CategoryID == 4).Count());    // c2
            Assert.AreEqual(1, articles.Where(a => a.Category.CategoryID == 21).Count());   // c3
            Assert.AreEqual(1, articles.Where(a => a.Category.CategoryID == 51).Count());   // c4
        }

        [Test]
        // test getting all featured published articles from nweei news category
        public void TestFeaturedNWEEINews()
        {
            // use repo method to get featured NWEEI News articles
            articles = testRepo.GetFeaturedNWEEINewsArticles();

            // check results
            // should have 1 featured, published article
            Assert.AreEqual(1, articles.Count);
            Assert.AreEqual(true, articles[0].Featured);
        }

        [Test]
        // test getting all featured published articles from nweei news category
        public void TestFeaturedIndustryNews()
        {
            // use repo method to get featured Industry News articles
            articles = testRepo.GetFeaturedIndustryNewsArticles();

            // check results
            // should have 3 featured, published articles
            Assert.AreEqual(3, articles.Count);
            Assert.AreEqual(true, articles[0].Featured);
            Assert.AreEqual(true, articles[1].Featured);
            Assert.AreEqual(true, articles[2].Featured);
        }
    }
}
