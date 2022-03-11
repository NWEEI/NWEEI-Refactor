using System;

namespace NWEEI_V2.Models
{
    public class Registration
    {
        public string TrainingProgram { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Email { get; set; }

        public DateTime DateOfBirth { get; set; }

        public string Title { get; set; }

        public string Organization { get; set; }

        public string Address1 { get; set; }

        public string Address2 { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public int ZipCode { get; set; }

        public string Country { get; set; }

        public int Phone { get; set; }

        public int Fax { get; set; }

        public string Referral { get; set; }

        public string SpecialInstructions { get; set; }

        public string PaymentType { get; set; }
    }
}
