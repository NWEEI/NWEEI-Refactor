using System.Collections.Generic;
using NWEEI.Models;

namespace NWEEI.ViewModels
{
    public class OrganizationTagViewModel
    {
        public List<Tag> Tags { get; set; }
        public Dictionary<Tag, bool> CurrentTags { get; set; }
        public int NewTagID { get; set; }


        public Organization CurrentOrganization { get; set; }
    }
}
