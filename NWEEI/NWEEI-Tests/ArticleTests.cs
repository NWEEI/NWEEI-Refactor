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

namespace NWEEI_Tests
{
    public class ArticleTests
    {
        ArticleTestRepo testRepo;
        ArticleController controller;
        UserManager<AppUser> userManager;

        List<Article> articles;
        Article a1, a2, a3, a4;
        Category c1, c2;
        AppUser u1;

        IWebHostEnvironment _env;

        [SetUp]
        public void Setup()
        {
            articles = new List<Article>();

            // arrange controller with test repo
            testRepo = new ArticleTestRepo();
            controller = new ArticleController(testRepo, _env);

            // arrange user
            u1 = new AppUser
            {
                FirstName = "First",
                LastName = "Last",
                DateRegistered = DateTime.Now
            };

            // arrange categories
            c1 = new Category
            {
                Name = "Test Category 1"
            };
            c2 = new Category
            {
                Name = "Test Category 2"
            };

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
        }
    }
}
