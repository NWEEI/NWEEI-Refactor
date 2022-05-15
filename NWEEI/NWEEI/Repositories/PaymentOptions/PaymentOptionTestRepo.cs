using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class PaymentOptionTestRepo : IPaymentOptionRepo
    {
        private List<PaymentOption> paymentOptions = new( );

        public IQueryable<PaymentOption> PaymentOptions => paymentOptions
            .AsQueryable<PaymentOption>( );

        // add a new paymentOption
        public void AddPaymentOption(PaymentOption paymentOption)
        {
            // attempt to retrieve existing paymentOption
            PaymentOption existingPaymentOption = paymentOptions.Find(p => p.Option == paymentOption.Option);

            // dont add paymentOption to list if it already exists
            if (existingPaymentOption == null) throw new Exception("PaymentOption already exists");

            // simulate auto-incremented primary key and add article to list
            paymentOption.PaymentOptionID = paymentOptions.Count;
            paymentOptions.Add(paymentOption);
        }

        // get a list of all paymentOptions
        public List<PaymentOption> GetAllPaymentOptions() => PaymentOptions.ToList();

        // get a specific paymentOption by its id
        public PaymentOption GetPaymentOptionByID(int id) => paymentOptions
            .Find(p => p.PaymentOptionID == id);

        // update a paymentOption
        public void UpdatePaymentOption(PaymentOption paymentOption)
        {
            // retrieve paymentOption from list
            PaymentOption existingPaymentOption = paymentOptions.Find(p => p.PaymentOptionID == paymentOption.PaymentOptionID);

            // update its properties
            existingPaymentOption.Option = paymentOption.Option;
        }

        // delete a paymentOption
        public void DeletePaymentOption(PaymentOption paymentOption)
        {
            paymentOptions.Remove( paymentOptions
                .Find( p => p.PaymentOptionID == paymentOption.PaymentOptionID )
            );
        }
    }
}
