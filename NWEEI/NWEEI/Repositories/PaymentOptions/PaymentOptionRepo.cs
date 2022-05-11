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

        public PaymentOptionRepo(NWEEIContext c)
        {
            context = c;
        }

        public IQueryable<PaymentOption> PaymentOptions
        {
            get
            {
                return context.PaymentOptions;
            }
        }

        // add a new paymentOption
        public void AddPaymentOption(PaymentOption paymentOption)
        {
            context.PaymentOptions.Add(paymentOption);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all paymentOptions
        public List<PaymentOption> GetAllPaymentOptions()
        {
            List<PaymentOption> paymentOptions = context.PaymentOptions.ToList();

            return paymentOptions;
        }

        // get a specific paymentOption by its id
        public PaymentOption GetPaymentOptionByID(int id)
        {
            PaymentOption paymentOption = context.PaymentOptions
                .Where(t => t.PaymentOptionID == id)
                .FirstOrDefault();

            return paymentOption;
        }

        #endregion

        // update a paymentOption
        public void UpdatePaymentOption(PaymentOption paymentOption)
        {
            context.PaymentOptions.Update(paymentOption);
            context.SaveChanges();
        }

        // delete a paymentOption
        public void DeletePaymentOption(PaymentOption paymentOption)
        {
            PaymentOption existingPaymentOption = context.PaymentOptions.Find(paymentOption.PaymentOptionID);
            context.PaymentOptions.Remove(existingPaymentOption);
            context.SaveChanges();
        }
    }
}
