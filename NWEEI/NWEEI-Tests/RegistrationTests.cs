using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Http;
using NWEEI.Data;
using Org.BouncyCastle.Ocsp;
using static System.Net.WebRequestMethods;

namespace NWEEI_Tests
{
    public class RegistrationTests
    {
        List<Registration> registrations, resultRegistrations;
        RegistrationTestRepo registrationTestRepo;
        RegistrationController registrationController;
        Registration ControlRegistration, ResultRegistration;

        // registration test helper methods
        static bool CompleteMemberEquality( Registration lhs, Registration rhs ) =>
                lhs.TrainingProgram == rhs.TrainingProgram &&
                lhs.FirstName == rhs.FirstName &&
                lhs.LastName == rhs.LastName &&
                lhs.Email == rhs.Email &&
                lhs.Title == rhs.Title &&
                lhs.Organization == rhs.Organization &&
                lhs.Address1 == rhs.Address1 &&
                lhs.Address2 == rhs.Address2 &&
                lhs.City == rhs.City &&
                lhs.State == rhs.State &&
                lhs.ZipCode == rhs.ZipCode &&
                lhs.Country == rhs.Country &&
                lhs.Phone == rhs.Phone &&
                lhs.Fax == rhs.Fax &&
                lhs.Referral == rhs.Referral &&
                lhs.SpecialInstructions == rhs.SpecialInstructions &&
                lhs.PaymentType == rhs.PaymentType;

        static Registration SetupRegistration( Registration registration, string identifier )
        {
            registration = new( );
            registration.TrainingProgram = "Registration Test TrainingProgram" + identifier;
            registration.FirstName = "Registration Test FirstName " + identifier;
            registration.LastName = "Registration Test LastName " + identifier;
            registration.Email = "Registration Test Email " + identifier;
            registration.Title = "Registration Test Title " + identifier;
            registration.Organization = "Registration Test Organization " + identifier;
            registration.Address1 = "Registration Test Address1 " + identifier;
            registration.Address2 = "Registration Test Address2 " + identifier;
            registration.City = "Registration Test City " + identifier;
            registration.State = "Registration Test State " + identifier;
            registration.ZipCode = "Registration Test ZipCode " + identifier;
            registration.Country = "Registration Test Country " + identifier;
            registration.Phone = "Registration Test Phone " + identifier;
            registration.Fax = "Registration Test Fax " + identifier;
            registration.Referral = "Registration Test Referral " + identifier;
            registration.SpecialInstructions = "Registration Test SpecialInstructions " + identifier;
            registration.PaymentType = "Registration Test PaymentType " + identifier;
            return registration;
        }

        static void CopyRegistration( Registration lhs, Registration rhs )
        {
            lhs.TrainingProgram = rhs.TrainingProgram;
            lhs.FirstName = rhs.FirstName;
            lhs.LastName = rhs.LastName;
            lhs.Email = rhs.Email;
            lhs.Title = rhs.Title;
            lhs.Organization = rhs.Organization;
            lhs.Address1 = rhs.Address1;
            lhs.Address2 = rhs.Address2;
            lhs.City = rhs.City;
            lhs.State = rhs.State;
            lhs.ZipCode = rhs.ZipCode;
            lhs.Country = rhs.Country;
            lhs.Phone = rhs.Phone;
            lhs.Fax = rhs.Fax;
            lhs.Referral = rhs.Referral;
            lhs.SpecialInstructions = rhs.SpecialInstructions;
            lhs.PaymentType = rhs.PaymentType;
        }

        // arrange
        [SetUp]
        public void Setup( )
        {
            // setup repos and controller
            registrationTestRepo = new( );
            PaymentOptionTestRepo paymentOptionTestRepo = new( );
            TrainingProgramTestRepo trainingProgramTestRepo = new( );

            registrationController = new( registrationTestRepo, paymentOptionTestRepo, trainingProgramTestRepo );

            // setup registration lists
            registrations = new( );
            for ( int i = 0 ; i < registrations.Count ; i++ )
                registrations [ i ] = SetupRegistration( registrations [ i ], ( i + 1 ).ToString( ) );

        }

        // Index GET
        [Test]
        public void TestIndex( )
        {
            // arrange
            foreach ( Registration registration in registrations )
                registrationTestRepo.AddRegistration( registration );

            // act
            var viewResult = ( ViewResult ) registrationController.Index( );
            resultRegistrations = ( List<Registration> ) viewResult.ViewData.Model;

            // assert
            for ( int i = 0 ; i < registrations.Count ; i++ )
                Assert.IsTrue( CompleteMemberEquality( registrations [ i ], resultRegistrations [ i ] ) );
        }

        // Details GET
        [Test]
        public void TestDetails( )
        {
            // arrange
            foreach ( Registration registration in registrations )
                registrationTestRepo.AddRegistration( registration );

            // act
            var viewResult = ( ViewResult ) registrationController.Index( );
            resultRegistrations = ( List<Registration> ) viewResult.ViewData.Model;

            // assert
            Assert.AreEqual( registrations.Count, resultRegistrations.Count );
            for ( int i = 0 ; i < registrations.Count ; i++ )
                Assert.AreEqual( registrations [ i ].TrainingProgram, resultRegistrations [ i ].TrainingProgram );
        }

        // Create GET
        [Test]
        public void TestCreate_GET( )
        {
            // act
            ViewResult result = ( ViewResult ) registrationController.Create( );

            // assert
            Assert.IsInstanceOf<ViewResult>( result );
        }

        // Create POST
        [Test]
        public void TestCreate_POST( )
        {
            //arrange
            ControlRegistration = SetupRegistration( ControlRegistration, "control" );

            // act
            registrationController.Create( ControlRegistration );

            // assert
            ResultRegistration = registrationTestRepo.GetAllRegistrations( ) [ 0 ];
            Assert.IsTrue( CompleteMemberEquality( ControlRegistration, ResultRegistration ) );
        }

        // Edit GET
        [Test]
        public void TestEdit_GET( )
        {
            // act
            ControlRegistration = SetupRegistration( ControlRegistration, "control" );
            registrationTestRepo.AddRegistration( ControlRegistration );
            var id = registrationTestRepo.GetAllRegistrations( ) [ 0 ].RegistrationID;
            var result = registrationController.Edit( id );

            // assert
            Assert.IsInstanceOf<IActionResult>( result );
        }

        // Edit POST
        [Test]
        public void TestEdit_POST( )
        {
            //arrange
            // instantiate the result registration
            ResultRegistration = SetupRegistration( ResultRegistration, "result" );
            // add it to the repo
            registrationTestRepo.AddRegistration( ResultRegistration );
            // once added, get the id of that control registration
            var id = registrationTestRepo.GetAllRegistrations( ) [ 0 ].RegistrationID;
            // set the result to be the registration returned by the repo (effectively assigning the id)
            ResultRegistration = registrationTestRepo.GetAllRegistrations( ) [ 0 ];
            // instantiate a control for the test
            ControlRegistration = SetupRegistration( ResultRegistration, "control" );
            // Copy the values from the test registration over to the control registration, prior to editing
            CopyRegistration( ControlRegistration, ResultRegistration );

            // act
            // update the test registration
            ResultRegistration = SetupRegistration( ResultRegistration, "Updated" );
            // save the registration to the repo by calling the controller edit>post method
            registrationController.Edit( id, ResultRegistration );

            // assert
            Assert.AreNotEqual( registrationTestRepo.GetAllRegistrations( ) [ 0 ], ControlRegistration );
        }

        // Delete GET
        [Test]
        public void TestDelete_GET( )
        {
            //arrange
            // instantiate the result registration
            ResultRegistration = SetupRegistration( ResultRegistration, "result" );
            // add it to the repo
            registrationTestRepo.AddRegistration( ResultRegistration );
            // once added, get the id of that control registration
            var id = registrationTestRepo.GetAllRegistrations( ) [ 0 ].RegistrationID;

            // act
            // use the collected id to get the delete>get view result of that registration
            ViewResult result = ( ViewResult ) registrationController.Delete( id );

            // assert
            Assert.IsInstanceOf<ViewResult>( result );
        }

        // Delete POST
        [Test]
        public void TestDelete_POST( )
        {
            //arrange
            // instantiate the result registration
            ResultRegistration = SetupRegistration( ResultRegistration, "result" );
            // add it to the repo
            registrationTestRepo.AddRegistration( ResultRegistration );
            var id = registrationTestRepo.GetAllRegistrations( ) [ 0 ].RegistrationID;

            // act
            // call the delete>post method of the registration controller by passing in the collected id
            registrationController.DeleteConfirmed( id );

            // assert
            // the registration should no longer be in the repo 
            Assert.IsNull( registrationTestRepo.GetRegistrationByID( id ) );
        }
    }
}
