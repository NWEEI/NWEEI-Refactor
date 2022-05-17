using NWEEI.Repositories;
using NWEEI.Controllers;
using NUnit.Framework;
using NWEEI.Models;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System;

namespace NWEEI_Tests
{
    public class OrganizationTests
    {
        OrganizationController organizationController;
        OrganizationTestRepo organizationTestRepo;
        List<Organization> organizations, resultOrganizations;
        Organization ControlOrganization, TestOrganization1, TestOrganization2, TestOrganization3, ResultOrganization;
        List<Tag> tags;
        Tag tag1, tag2, tag3;

        // organization test helper methods
        bool CompleteMemberEquality( Organization organization, Organization other ) => 
                organization.Name == other.Name &&
                organization.Description == other.Description &&
                organization.WebsiteURL == other.WebsiteURL &&
                organization.ImageURL == other.ImageURL;

        Organization SetupOrganization(Organization organization, string identifier)
        {
            organization = new();
            organization.Name = "Organization Test Name " + identifier;
            organization.Description = "Organization Test Description " + identifier;
            organization.ImageURL = "Organization Test ImageURL " + identifier;
            organization.WebsiteURL = "Organization Test WebsiteURL " + identifier;
            return organization;
        }

        static void CopyOrganization(Organization lhs, Organization rhs)
        {
            lhs.OrganizationID = rhs.OrganizationID;
            lhs.Name = rhs.Name;
            lhs.Description = rhs.Description;
            lhs.WebsiteURL = rhs.WebsiteURL;
            lhs.ImageURL = rhs.ImageURL;
        }

        // arrange
        [SetUp]
        public void Setup()
        {
            // setup repo and controller
            organizationTestRepo = new();
            TagTestRepo tagRepo = new( );
            organizationController = new( organizationTestRepo, tagRepo );
            

            //setup tag objects and list
            tags = new() { tag1, tag2, tag3, };
            for ( int i = 0 ; i < tags.Count ; i++ )
                tags[ i ] = new(){ Name = "Tag Test Name " + ( i + 1 ).ToString()};

            // setup organization objects and lists
            resultOrganizations = new( );
            organizations = new() { TestOrganization1, TestOrganization2, TestOrganization3 };
            for ( int i = 0 ; i < organizations.Count ; i++ )
                organizations[ i ] = SetupOrganization( organizations[ i ], ( i + 1 ).ToString() );
        }

        // Index GET
        [Test]
        public void TestIndex()
        {
            // arrange
            foreach ( Organization organization in organizations )
                organizationTestRepo.AddOrganization( organization );

            // act
            var viewResult = (ViewResult)organizationController.Index();
            resultOrganizations = (List<Organization>)viewResult.ViewData.Model;

            // assert
            for ( int i = 0 ; i < organizations.Count ; i++ )
                Assert.IsTrue( CompleteMemberEquality( organizations[i], resultOrganizations[ i ] ) );
        }

        // Details GET
        [Test]
        public void TestDetails()
        {
            // arrange
            foreach ( Organization organization in organizations )
                organizationTestRepo.AddOrganization( organization );

            // act
            var viewResult = (ViewResult)organizationController.Index();
            resultOrganizations = (List<Organization>)viewResult.ViewData.Model;

            // assert
            Assert.AreEqual( organizations.Count, resultOrganizations.Count );
            for ( int i = 0 ; i < organizations.Count ; i++ )
                Assert.AreEqual( organizations[ i ].Name, resultOrganizations[ i ].Name );
        }
        
        // Create GET
        [Test]
        public void TestCreate_GET()
        {
            // act
            ViewResult result = (ViewResult)organizationController.Create();

            // assert
            Assert.IsInstanceOf<ViewResult>( result );
        }
        
        // Create POST
        [Test]
        public void TestCreate_POST()
        {
            //arrange
            ControlOrganization = SetupOrganization( ControlOrganization, "control" );

            // act
            organizationController.Create( ControlOrganization );

            // assert
            ResultOrganization = organizationTestRepo.GetAllOrganizations()[ 0 ];
            Assert.IsTrue( CompleteMemberEquality( ControlOrganization, ResultOrganization ) );
        }

        // Edit GET
        [Test]
        public void TestEdit_GET()
        {
            // act
            ControlOrganization = SetupOrganization( ControlOrganization, "control" );
            organizationTestRepo.AddOrganization( ControlOrganization );
            var id = organizationTestRepo.GetAllOrganizations()[ 0 ].OrganizationID;
            var result = organizationController.Edit( id );

            // assert
            Assert.IsInstanceOf<IActionResult>( result );
        }

        // Edit POST
        [Test]
        public void TestEdit_POST()
        {
            //arrange
            // instantiate the result organization
            ResultOrganization = SetupOrganization( ResultOrganization, "result" );
            // add it to the repo
            organizationTestRepo.AddOrganization( ResultOrganization );
            // once added, get the id of that control organization
            var id = organizationTestRepo.GetAllOrganizations()[ 0 ].OrganizationID;
            // set the result to be the organization returned by the repo (effectively assigning the id)
            ResultOrganization = organizationTestRepo.GetAllOrganizations()[ 0 ];
            // instantiate a control for the test
            ControlOrganization = SetupOrganization( ResultOrganization, "control" );
            // Copy the values from the test organization over to the control organization, prior to editing
            CopyOrganization( ControlOrganization, ResultOrganization );

            // act
            // update the test organization
            ResultOrganization.Name += " Updated";
            ResultOrganization.Description += " Updated";
            ResultOrganization.ImageURL += " Updated";
            ResultOrganization.WebsiteURL += " Updated";
            // save the organization to the repo by calling the controller edit>post method
            organizationController.Edit( id, ResultOrganization );

            // assert
            Assert.AreNotEqual( organizationTestRepo.GetAllOrganizations()[ 0 ], ControlOrganization );
        }

        // Delete GET
        [Test]
        public void TestDelete_GET()
        {
            //arrange
            // instantiate the result organization
            ResultOrganization = SetupOrganization( ResultOrganization, "result" );
            // add it to the repo
            organizationTestRepo.AddOrganization( ResultOrganization );
            // once added, get the id of that control organization
            var id = organizationTestRepo.GetAllOrganizations()[ 0 ].OrganizationID;

            // act
            // use the collected id to get the delete>get view result of that organization
            ViewResult result = (ViewResult)organizationController.Delete(id);

            // assert
            Assert.IsInstanceOf<ViewResult>( result );
        }

        // Delete POST
        [Test]
        public void TestDelete_POST()
        {
            //arrange
            // instantiate the result organization
            ResultOrganization = SetupOrganization( ResultOrganization, "result" );
            // add it to the repo
            organizationTestRepo.AddOrganization( ResultOrganization );
            var id = organizationTestRepo.GetAllOrganizations()[ 0 ].OrganizationID;

            // act
            // call the delete>post method of the organization controller by passing in the collected id
            organizationController.DeleteConfirmed( id );

            // assert
            // the organization should no longer be in the repo 
            Assert.IsNull( organizationTestRepo.GetOrganizationByID( id ) );
        }
     }
}
