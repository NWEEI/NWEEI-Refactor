using System;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class Registration
    {
        public int RegistrationID { get; set; }

        public DateTime DateSubmitted { get; set; }

        public string TrainingProgram { get; set; }

        [Required(ErrorMessage = "Please enter your first name.")]
        [StringLength(50)]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Please enter your last name.")]
        [StringLength(50)]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Please enter your email address.")]
        [EmailAddress]
        public string Email { get; set; }

        [DataType(DataType.Date)]
        [Required(ErrorMessage = "Please enter your date of birth.")]
        public DateTime DateOfBirth { get; set; }

        public string Title { get; set; }

        public string Organization { get; set; }

        [Required(ErrorMessage = "Please enter your street address.")]
        [StringLength(30)]
        public string Address1 { get; set; }

        public string Address2 { get; set; }

        [Required(ErrorMessage = "Please enter your city.")]
        [StringLength(30)]
        public string City { get; set; }

        [Required(ErrorMessage = "Please enter your state.")]
        public string State { get; set; }

        [Required(ErrorMessage = "Please enter your zip code.")]
        [RegularExpression(@"^[0-9]{5}$", ErrorMessage = "Invalid Zip")]
        public string ZipCode { get; set; }

        public string Country { get; set; }

        [Phone]
        [Required(ErrorMessage = "Please enter your phone number.")]
        public string Phone { get; set; }

        [Phone]
        public string Fax { get; set; }

        public string Referral { get; set; }

        public string SpecialInstructions { get; set; }

        [Required(ErrorMessage = "Please select a payment type.")]
        public string PaymentType { get; set; }
    }
}
