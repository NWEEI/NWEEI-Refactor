using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System;
using NWEEI.ViewModels;

namespace NWEEI_Tests
{
    public class PaymentOptionTests
    {
        PaymentOptionsController paymentOptionController;
        PaymentOptionTestRepo paymentOptionTestRepo;
        List<PaymentOption> paymentOptions, resultPaymentOptions;
        PaymentOption ControlPaymentOption, ResultPaymentOption;

        // paymentOption test helper methods
        bool CompleteMemberEquality(PaymentOption paymentOption, PaymentOption other) =>
            paymentOption.Option == other.Option;

        PaymentOption SetupPaymentOption(PaymentOption paymentOption, string identifier) =>
           paymentOption = new() { Option = "PaymentOption Test Option " + identifier };

        static void CopyPaymentOption(PaymentOption lhs, PaymentOption rhs) => lhs.Option = rhs.Option;

        // arrange
        [SetUp]
        public void Setup()
        {
            // setup repo & controller
            paymentOptionTestRepo = new();
            paymentOptionController = new(paymentOptionTestRepo);

            // setup paymentOption objects and lists
            resultPaymentOptions = new();
            paymentOptions = new();
            for (int i = 0; i < paymentOptions.Count; i++)
                paymentOptions[i] = SetupPaymentOption(paymentOptions[i], (i + 1).ToString());
        }

        // Index GET
        [Test]
        public void TestIndex()
        {
            // arrange
            foreach (PaymentOption paymentOption in paymentOptions)
                paymentOptionTestRepo.AddPaymentOption(paymentOption);

            // act
            var viewResult = (ViewResult)paymentOptionController.Index();
            resultPaymentOptions = (List<PaymentOption>)viewResult.ViewData.Model;

            // assert
            for (int i = 0; i < paymentOptions.Count; i++)
                Assert.IsTrue(CompleteMemberEquality(paymentOptions[i], resultPaymentOptions[i]));
        }

        // Details GET
        [Test]
        public void TestDetails()
        {
            // arrange
            foreach (PaymentOption paymentOption in paymentOptions)
                paymentOptionTestRepo.AddPaymentOption(paymentOption);

            // act
            var viewResult = (ViewResult)paymentOptionController.Index();
            resultPaymentOptions = (List<PaymentOption>)viewResult.ViewData.Model;

            // assert
            Assert.AreEqual(paymentOptions.Count, resultPaymentOptions.Count);
            for (int i = 0; i < paymentOptions.Count; i++)
                Assert.AreEqual(paymentOptions[i].Option, resultPaymentOptions[i].Option);
        }

        // Create GET
        [Test]
        public void TestCreate_GET()
        {
            // act
            ViewResult result = (ViewResult)paymentOptionController.Create();

            // assert
            Assert.IsInstanceOf<ViewResult>(result);
        }

        // Create POST
        [Test]
        public void TestCreate_POST()
        {
            //arrange
            ControlPaymentOption = SetupPaymentOption(ControlPaymentOption, "control");

            // act
            paymentOptionController.Create(ControlPaymentOption);

            // assert
            ResultPaymentOption = paymentOptionTestRepo.GetAllPaymentOptions()[0];
            Assert.IsTrue(CompleteMemberEquality(ControlPaymentOption, ResultPaymentOption));
        }

        // Edit GET
        [Test]
        public void TestEdit_GET()
        {
            // act
            ControlPaymentOption = SetupPaymentOption(ControlPaymentOption, "control");
            paymentOptionTestRepo.AddPaymentOption(ControlPaymentOption);
            var id = paymentOptionTestRepo.GetAllPaymentOptions()[0].PaymentOptionID;
            var result = paymentOptionController.Edit(id);

            // assert
            Assert.IsInstanceOf<IActionResult>(result);
        }

        // Edit POST
        [Test]
        public void TestEdit_POST()
        {
            //arrange
            // instantiate the result paymentOption
            ResultPaymentOption = SetupPaymentOption(ResultPaymentOption, "result");
            // add it to the repo
            paymentOptionTestRepo.AddPaymentOption(ResultPaymentOption);
            // once added, get the id of that control paymentOption
            var id = paymentOptionTestRepo.GetAllPaymentOptions()[0].PaymentOptionID;
            // set the result to be the paymentOption returned by the repo (effectively assigning the id)
            ResultPaymentOption = paymentOptionTestRepo.GetAllPaymentOptions()[0];
            // instantiate a control for the test
            ControlPaymentOption = SetupPaymentOption(ResultPaymentOption, "control");
            // Copy the values from the test paymentOption over to the control paymentOption, prior to editing
            CopyPaymentOption(ControlPaymentOption, ResultPaymentOption);

            // act
            // update the test paymentOption
            ResultPaymentOption.Option += " Updated";
            // save the paymentOption to the repo by calling the controller edit>post method
            paymentOptionController.Edit(id, ResultPaymentOption);

            // assert
            Assert.AreNotEqual(paymentOptionTestRepo.GetAllPaymentOptions()[0], ControlPaymentOption);
        }

        // Delete GET
        [Test]
        public void TestDelete_GET()
        {
            //arrange
            // instantiate the result paymentOption
            ResultPaymentOption = SetupPaymentOption(ResultPaymentOption, "result");
            // add it to the repo
            paymentOptionTestRepo.AddPaymentOption(ResultPaymentOption);
            // once added, get the id of that control paymentOption
            var id = paymentOptionTestRepo.GetAllPaymentOptions()[0].PaymentOptionID;

            // act
            // use the collected id to get the delete>get view result of that paymentOption
            ViewResult result = (ViewResult)paymentOptionController.Delete(id);

            // assert
            Assert.IsInstanceOf<ViewResult>(result);
        }

        // Delete POST
        [Test]
        public void TestDelete_POST()
        {
            //arrange
            // instantiate the result paymentOption
            ResultPaymentOption = SetupPaymentOption(ResultPaymentOption, "result");
            // add it to the repo
            paymentOptionTestRepo.AddPaymentOption(ResultPaymentOption);
            var id = paymentOptionTestRepo.GetAllPaymentOptions()[0].PaymentOptionID;

            // act
            // call the delete>post method of the paymentOption controller by passing in the collected id
            paymentOptionController.DeleteConfirmed(id);

            // assert
            // the paymentOption should no longer be in the repo 
            Assert.IsNull(paymentOptionTestRepo.GetPaymentOptionByID(id));
        }
    }
}
