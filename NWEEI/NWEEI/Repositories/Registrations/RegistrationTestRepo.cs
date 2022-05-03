using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class RegistrationTestRepo : IRegistrationRepo
    {
        private List<Registration> registrations = new List<Registration>();

        public IQueryable<Registration> Registrations
        {
            get
            {
                return registrations.AsQueryable<Registration>();
            }
        }

        // add a new registration
        public void AddRegistration(Registration registration)
        {
            // attempt to retrieve existing registration
            Registration existingRegistration = registrations
                .Find(r => r.FirstName == registration.FirstName && r.LastName == registration.LastName);

            // add registration to list if it doesn't already exist
            if (existingRegistration == null)
            {
                // simulate auto-incremented primary key and add registration to list
                registration.RegistrationID = registrations.Count;
                registrations.Add(registration);
            }
            else
            {
                throw new Exception("Registration already exists");
            }
        }

        // get a list of all registrations
        public List<Registration> GetAllRegistrations()
        {
            registrations = Registrations.ToList();

            return registrations;
        }

        // get a specific registration by its id
        public Registration GetRegistrationByID(int id)
        {
            Registration registration = registrations.Find(r => r.RegistrationID == id);
            return registration;
        }

        // update a registration
        public void UpdateRegistration(Registration registration)
        {
            // retrieve registration from list
            Registration existingReg = registrations.Find(r => r.RegistrationID == registration.RegistrationID);

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
    }
}
