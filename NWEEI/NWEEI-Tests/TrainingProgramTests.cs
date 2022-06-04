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
    public class TrainingProgramTests
    {
        TrainingProgramsController trainingProgramController;
        TrainingProgramTestRepo trainingProgramTestRepo;
        List<TrainingProgram> trainingPrograms, resultTrainingPrograms;
        TrainingProgram ControlTrainingProgram, ResultTrainingProgram;
        CustomTrainingOption c1, c2, c3;
        List<CustomTrainingOption> trainingOptions;
        TrainingDetail d1, d2, d3, d4;

        // trainingProgram test helper methods
        bool CompleteMemberEquality(TrainingProgram trainingProgram, TrainingProgram other) =>
            trainingProgram.Name == other.Name;

        TrainingProgram SetupTrainingProgram(TrainingProgram trainingProgram, string identifier) =>
           trainingProgram = new() { Name = "TrainingProgram Test Name " + identifier };

        static void CopyTrainingProgram(TrainingProgram lhs, TrainingProgram rhs) => lhs.Name = rhs.Name;

        // arrange
        [SetUp]
        public void Setup()
        {
            // setup repo & controller
            trainingProgramTestRepo = new();
            trainingProgramController = new(trainingProgramTestRepo);

            // setup trainingProgram objects and lists
            resultTrainingPrograms = new();
            trainingPrograms = new();
            for (int i = 0; i < trainingPrograms.Count; i++)
                trainingPrograms[i] = SetupTrainingProgram(trainingPrograms[i], (i + 1).ToString());

            // set up training details and custom training options
            d1 = new TrainingDetail
            {
                Detail = "Test detail 1"
            };
            d2 = new TrainingDetail
            {
                Detail = "Test detail 2"
            };
            d3 = new TrainingDetail
            {
                Detail = "Test detail 3"
            };
            d4 = new TrainingDetail
            {
                Detail = "Test detail 4"
            };

            c1 = new CustomTrainingOption
            {
                Name = "Custom Training Option 1",
                TrainingDetails = { d1, d2, d3, d4 }
            };
            c2 = new CustomTrainingOption
            {
                Name = "Custom Training Option 2",
                TrainingDetails = { d1, d2, d3 }
            };
            c3 = new CustomTrainingOption
            {
                Name = "Custom Training Option 3",
                TrainingDetails = { d1, d2 }
            };
        }

        // Index GET
        [Test]
        public void TestIndex()
        {
            // arrange
            foreach (TrainingProgram trainingProgram in trainingPrograms)
                trainingProgramTestRepo.AddTrainingProgram(trainingProgram);

            // act
            var viewResult = (ViewResult)trainingProgramController.Index();
            resultTrainingPrograms = (List<TrainingProgram>)viewResult.ViewData.Model;

            // assert
            for (int i = 0; i < trainingPrograms.Count; i++)
                Assert.IsTrue(CompleteMemberEquality(trainingPrograms[i], resultTrainingPrograms[i]));
        }

        // Details GET
        [Test]
        public void TestDetails()
        {
            // arrange
            foreach (TrainingProgram trainingProgram in trainingPrograms)
                trainingProgramTestRepo.AddTrainingProgram(trainingProgram);

            // act
            var viewResult = (ViewResult)trainingProgramController.Index();
            resultTrainingPrograms = (List<TrainingProgram>)viewResult.ViewData.Model;

            // assert
            Assert.AreEqual(trainingPrograms.Count, resultTrainingPrograms.Count);
            for (int i = 0; i < trainingPrograms.Count; i++)
                Assert.AreEqual(trainingPrograms[i].Name, resultTrainingPrograms[i].Name);
        }

        // Create GET
        [Test]
        public void TestCreate_GET()
        {
            // act
            ViewResult result = (ViewResult)trainingProgramController.Create();

            // assert
            Assert.IsInstanceOf<ViewResult>(result);
        }

        // Create POST
        [Test]
        public void TestCreate_POST()
        {
            //arrange
            ControlTrainingProgram = SetupTrainingProgram(ControlTrainingProgram, "control");

            // act
            trainingProgramController.Create(ControlTrainingProgram);

            // assert
            ResultTrainingProgram = trainingProgramTestRepo.GetAllTrainingPrograms()[0];
            Assert.IsTrue(CompleteMemberEquality(ControlTrainingProgram, ResultTrainingProgram));
        }

        // Edit GET
        [Test]
        public void TestEdit_GET()
        {
            // act
            ControlTrainingProgram = SetupTrainingProgram(ControlTrainingProgram, "control");
            trainingProgramTestRepo.AddTrainingProgram(ControlTrainingProgram);
            var id = trainingProgramTestRepo.GetAllTrainingPrograms()[0].TrainingProgramID;
            var result = trainingProgramController.Edit(id);

            // assert
            Assert.IsInstanceOf<IActionResult>(result);
        }

        // Edit POST
        [Test]
        public void TestEdit_POST()
        {
            //arrange
            // instantiate the result trainingProgram
            ResultTrainingProgram = SetupTrainingProgram(ResultTrainingProgram, "result");
            // add it to the repo
            trainingProgramTestRepo.AddTrainingProgram(ResultTrainingProgram);
            // once added, get the id of that control trainingProgram
            var id = trainingProgramTestRepo.GetAllTrainingPrograms()[0].TrainingProgramID;
            // set the result to be the trainingProgram returned by the repo (effectively assigning the id)
            ResultTrainingProgram = trainingProgramTestRepo.GetAllTrainingPrograms()[0];
            // instantiate a control for the test
            ControlTrainingProgram = SetupTrainingProgram(ResultTrainingProgram, "control");
            // Copy the values from the test trainingProgram over to the control trainingProgram, prior to editing
            CopyTrainingProgram(ControlTrainingProgram, ResultTrainingProgram);

            // act
            // update the test trainingProgram
            ResultTrainingProgram.Name += " Updated";
            // save the trainingProgram to the repo by calling the controller edit>post method
            trainingProgramController.Edit(id, ResultTrainingProgram);

            // assert
            Assert.AreNotEqual(trainingProgramTestRepo.GetAllTrainingPrograms()[0], ControlTrainingProgram);
        }

        // Delete GET
        [Test]
        public void TestDelete_GET()
        {
            //arrange
            // instantiate the result trainingProgram
            ResultTrainingProgram = SetupTrainingProgram(ResultTrainingProgram, "result");
            // add it to the repo
            trainingProgramTestRepo.AddTrainingProgram(ResultTrainingProgram);
            // once added, get the id of that control trainingProgram
            var id = trainingProgramTestRepo.GetAllTrainingPrograms()[0].TrainingProgramID;

            // act
            // use the collected id to get the delete>get view result of that trainingProgram
            ViewResult result = (ViewResult)trainingProgramController.Delete(id);

            // assert
            Assert.IsInstanceOf<ViewResult>(result);
        }

        // Delete POST
        [Test]
        public void TestDelete_POST()
        {
            //arrange
            // instantiate the result trainingProgram
            ResultTrainingProgram = SetupTrainingProgram(ResultTrainingProgram, "result");
            // add it to the repo
            trainingProgramTestRepo.AddTrainingProgram(ResultTrainingProgram);
            var id = trainingProgramTestRepo.GetAllTrainingPrograms()[0].TrainingProgramID;

            // act
            // call the delete>post method of the trainingProgram controller by passing in the collected id
            trainingProgramController.DeleteConfirmed(id);

            // assert
            // the trainingProgram should no longer be in the repo 
            Assert.IsNull(trainingProgramTestRepo.GetTrainingProgramByID(id));
        }


        #region CustomTrainingOption tests

        [Test]
        // tests getting all custom training options
        public void TestCustomTraining()
        {
            // add custom training options to repo
            trainingProgramTestRepo.AddCustomTrainingOption(c1);
            trainingProgramTestRepo.AddCustomTrainingOption(c2);
            trainingProgramTestRepo.AddCustomTrainingOption(c3);

            // use controller method to retrieve the list of training options
            var viewResult = (ViewResult)trainingProgramController.CustomTraining().Result;
            trainingOptions = (List<CustomTrainingOption>)viewResult.ViewData.Model;

            // check values
            Assert.AreEqual(3, trainingOptions.Count);
            Assert.AreEqual(4, trainingOptions[0].TrainingDetails.Count);
        }

        [Test]
        // tests getting a single custom training option
        public void TestCustomTrainingOption()
        {
            // add custom training options to repo
            trainingProgramTestRepo.AddCustomTrainingOption(c1);

            // get training back out to get its id
            CustomTrainingOption c = trainingProgramTestRepo.CustomTrainingOptions.ToList()[0];

            // use controller method to retrieve a single training option
            var viewResult = (ViewResult)trainingProgramController
                .CustomTrainingOption(c.CustomTrainingOptionID).Result;
            CustomTrainingOption trainingOption = (CustomTrainingOption)viewResult.ViewData.Model;

            // check values
            Assert.IsNotNull(trainingOption);
            Assert.AreEqual(c1.Name, trainingOption.Name);
            Assert.AreEqual(4, trainingOption.TrainingDetails.Count);
        }

        #endregion
    }
}
