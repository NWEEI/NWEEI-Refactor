using System;
using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using Microsoft.AspNetCore.Identity;

namespace NWEEI_Tests
{
    public class FAQTests
    {
        FAQTestRepo testRepo;
        FAQController controller;
        UserManager<AppUser> userManager;

        FAQ f1, f2, f3, f4;
        Category c1, c2;
        AppUser u1;

        [SetUp]
        public void Setup()
        {
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

            // arrange user
            u1 = new AppUser
            {
                FirstName = "First",
                LastName = "Name",
                DateRegistered = DateTime.Now
            };
        }
    }
}
