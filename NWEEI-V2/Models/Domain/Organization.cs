using System;
using System.Collections.Generic;

namespace NWEEI_V2.Models.Domain
{
    public class Organization
    {
        public int OrganizationID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string ImageURL { get; set; }

        public string WebsiteURL { get; set; }

        public List<Tag> Tags { get; set; }
    }
}
