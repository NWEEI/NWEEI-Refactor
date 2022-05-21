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
    }
}
