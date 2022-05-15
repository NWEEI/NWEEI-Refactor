using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class PaymentOptionRepo : IPaymentOptionRepo
    {
        private NWEEIContext context;

        public PaymentOptionRepo( NWEEIContext c ) => context = c;

        public IQueryable<PaymentOption> PaymentOptions => context.PaymentOptions;

        // add a new paymentOption
        public void AddPaymentOption(PaymentOption paymentOption)
        {
            context.PaymentOptions.Add(paymentOption);
            context.SaveChanges();
        }

        // get a list of all paymentOptions
        public List<PaymentOption> GetAllPaymentOptions() => context.PaymentOptions.ToList();

        // get a specific paymentOption by its id
        public PaymentOption GetPaymentOptionByID(int id) => context.PaymentOptions
                .Where(t => t.PaymentOptionID == id)
                .FirstOrDefault();

        // update a paymentOption
        public void UpdatePaymentOption(PaymentOption paymentOption)
        {
            context.PaymentOptions.Update(paymentOption);
            context.SaveChanges();
        }

        // delete a paymentOption
        public void DeletePaymentOption(PaymentOption paymentOption)
        {
            context.PaymentOptions.Remove( context.PaymentOptions
                .Find( paymentOption.PaymentOptionID )
            );
            context.SaveChanges();
        }
    }
}
