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

        Organization CopyOrganization(Organization lhs, Organization rhs)
        {
            lhs.OrganizationID = rhs.OrganizationID;
            lhs.Name = rhs.Name;
            lhs.Description = rhs.Description;
            lhs.WebsiteURL = rhs.WebsiteURL;
            lhs.ImageURL = rhs.ImageURL;
            return lhs;
        }

        // arrange
        [SetUp]
        public void Setup()
        {
            // setup repo and controller
            organizationTestRepo = new();
            organizationController = new( organizationTestRepo );
            

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
            var viewResult = (ViewResult)organizationController.Index().Result;
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
            var viewResult = (ViewResult)organizationController.Index().Result;
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
        // act
            // setup an organization as a control for the test
            ControlOrganization = SetupOrganization( ControlOrganization, "control" );
            // add that test to the test repo
            organizationTestRepo.AddOrganization( ControlOrganization );
            // once added, get the id of that control organization
            var id = organizationTestRepo.GetAllOrganizations()[ 0 ].OrganizationID;
            // set the control to be the organization returned by the repo (effectively assigning the id)
            ControlOrganization = organizationTestRepo.GetAllOrganizations()[ 0 ];
            // setup an organization to test update functionality by copying the control organization
            ResultOrganization = CopyOrganization(ResultOrganization, ControlOrganization);
            // update the test organization
            ResultOrganization.Name += " Updated";
            ResultOrganization.Description += " Updated";
            ResultOrganization.ImageURL += " Updated";
            ResultOrganization.WebsiteURL += " Updated";
            // save the organization to the repo by calling the controller edit>post method
            organizationController.Edit( id, ControlOrganization );
        // assert

        }

            // Delete GET


            // Delete POST

     }
}
