using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface IPaymentOptionRepo
    {
        IQueryable<PaymentOption> PaymentOptions { get; }

        // create
        void AddPaymentOption(PaymentOption paymentOption);

        // retrieve
        List<PaymentOption> GetAllPaymentOptions();
        PaymentOption GetPaymentOptionByID(int id);

        // update
        void UpdatePaymentOption(PaymentOption paymentOption);

        // delete
        void DeletePaymentOption(PaymentOption paymentOption);
    }
}
