using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class RegistrationTestRepo : IRegistrationRepo
    {
        private List<Registration> registrations = new( );

        public IQueryable<Registration> Registrations => registrations
            .AsQueryable<Registration>( );

        // add a new registration
        public void AddRegistration( Registration registration )
        {
            // attempt to retrieve existing registration
            Registration existingRegistration = registrations
                .Find( r =>
                    r.FirstName == registration.FirstName &&
                    r.LastName == registration.LastName );

            // dont add registration to list if it already exists
            if ( existingRegistration is not null ) throw new Exception( "Registration already exists" );

            // simulate auto-incremented primary key and add registration to list
            registration.RegistrationID = registrations.Count;
            registrations.Add( registration );
        }

        // send registration confirmation email
        public void SendRegistrationConfirmation(IEmailService emailService, Registration registration, string toAddress, string toAddressAlias) =>
            throw new NotImplementedException();

        // get a list of all registrations
        public List<Registration> GetAllRegistrations( ) => Registrations
            .OrderByDescending( r => r.DateSubmitted )
            .ToList( );

        // get a specific registration by its id
        public Registration GetRegistrationByID( int id ) => registrations
            .Find( r => r.RegistrationID == id );

        // update a registration
        public void UpdateRegistration( Registration registration )
        {
            // retrieve registration from list
            Registration existingReg = registrations.Find( r => r.RegistrationID == registration.RegistrationID );

            // update its properties
            existingReg.TrainingProgram = registration.TrainingProgram;
            existingReg.FirstName = registration.FirstName;
            existingReg.LastName = registration.LastName;
            existingReg.Email = registration.Email;
            existingReg.DateOfBirth = registration.DateOfBirth;
            existingReg.Title = registration.Title;
            existingReg.Organization = registration.Organization;
            existingReg.Address1 = registration.Address1;
            existingReg.Address2 = registration.Address2;
            existingReg.City = registration.City;
            existingReg.State = registration.State;
            existingReg.ZipCode = registration.ZipCode;
            existingReg.Country = registration.Country;
            existingReg.Phone = registration.Phone;
            existingReg.Fax = registration.Fax;
            existingReg.Referral = registration.Referral;
            existingReg.SpecialInstructions = registration.SpecialInstructions;
            existingReg.PaymentType = registration.PaymentType;
        }

        // delete a registration
        public void DeleteRegistration( Registration registration ) => registrations
            .Remove( registrations
                .Find( r => r.RegistrationID == registration.RegistrationID ) );

        // see if a registration exists 
        public bool RegistrationExists( int id ) => registrations
            .Any( r => r.RegistrationID == id );
    }
}
