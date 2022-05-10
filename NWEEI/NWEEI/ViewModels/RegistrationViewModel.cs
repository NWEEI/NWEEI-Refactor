using NWEEI.Models;
using System.Collections.Generic;

namespace NWEEI.ViewModels
{
    public class RegistrationViewModel
    {
        public int RegistrationID { get; set; }
        public List<PaymentOption> PaymentOptions { get; set; }
    }
}
