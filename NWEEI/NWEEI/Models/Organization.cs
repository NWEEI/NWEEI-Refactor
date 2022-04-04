using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class Organization
    {
        private List<Tag> tags = new List<Tag>();

        public int OrganizationID { get; set; }

        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Description is required.")]
        public string Description { get; set; }

        public string ImageURL { get; set; }

        [Required(ErrorMessage = "Website is required.")]
        public string WebsiteURL { get; set; }

        [Required(ErrorMessage = "At least one tag is required.")]
        public List<Tag> Tags { get { return tags; } }
    }
}
