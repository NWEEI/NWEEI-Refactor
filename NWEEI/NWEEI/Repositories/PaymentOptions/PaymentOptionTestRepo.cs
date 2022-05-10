using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class PaymentOptionTestRepo : IPaymentOptionRepo
    {
        private List<PaymentOption> paymentOptions = new List<PaymentOption>();

        public IQueryable<PaymentOption> PaymentOptions
        {
            get
            {
                return paymentOptions.AsQueryable<PaymentOption>();
            }
        }

        // add a new paymentOption
        public void AddPaymentOption(PaymentOption paymentOption)
        {
            // attempt to retrieve existing paymentOption
            PaymentOption existingPaymentOption = paymentOptions.Find(p => p.Option == paymentOption.Option);

            // add paymentOption to list if it doesn't already exist
            if (existingPaymentOption == null)
            {
                // simulate auto-incremented primary key and add article to list
                paymentOption.PaymentOptionID = paymentOptions.Count;
                paymentOptions.Add(paymentOption);
            }
            else
            {
                throw new Exception("PaymentOption already exists");
            }
        }

        // get a list of all paymentOptions
        public List<PaymentOption> GetAllPaymentOptions()
        {
            paymentOptions = PaymentOptions.ToList();

            return paymentOptions;
        }

        // get a specific paymentOption by its id
        public PaymentOption GetPaymentOptionByID(int id)
        {
            PaymentOption paymentOption = paymentOptions.Find(t => t.PaymentOptionID == id);
            return paymentOption;
        }

        // update a paymentOption
        public void UpdatePaymentOption(PaymentOption paymentOption)
        {
            // retrieve paymentOption from list
            PaymentOption existingPaymentOption = paymentOptions.Find(t => t.PaymentOptionID == paymentOption.PaymentOptionID);

            // update its properties
            existingPaymentOption.Option = paymentOption.Option;
        }

        // delete a paymentOption
        public void DeletePaymentOption(PaymentOption paymentOption)
        {
            PaymentOption existingPaymentOption = paymentOptions.Find(t => t.PaymentOptionID == paymentOption.PaymentOptionID);
            paymentOptions.Remove(existingPaymentOption);
        }
    }
}
