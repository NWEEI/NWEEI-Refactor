﻿namespace NWEEI.Models
{
    public class EmailAddress
    {
        public EmailAddress() { }
        public EmailAddress(string name, string address)
        {
            Name = name;
            Address = address;
        }
        public string Name { get; set; }
        public string Address { get; set; }
    }
}
