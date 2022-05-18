using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NWEEI.Models
{
    public class Organization
    {
        private List<Tag> tags = new List<Tag>();

        public int OrganizationID { get; set; }

        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }
        public string Description { get; set; }

        public string ImageURL { get; set; }

        [Required(ErrorMessage = "Website is required.")]
        public string WebsiteURL { get; set; }

        [NotMapped]
        public List<Tag> Tags { get { return tags; } }

        public virtual ICollection<Tag> TagKeys { get; set; }
    }
}
