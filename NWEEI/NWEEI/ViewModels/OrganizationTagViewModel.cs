using System.Collections.Generic;
using NWEEI.Models;

namespace NWEEI.ViewModels
{
    public class OrganizationTagViewModel
    {
        public List<Tag> Tags { get; set; }
        public List<Tag> TagKeys { get; set; }
        public List<Tag> CurrentTags { get; set; }
        public List<bool> SelectedTags { get; set; }
        public int NumTags { get; set; }
        public int NewTagID { get; set; }

        public Organization CurrentOrganization { get; set; }
    }
}
