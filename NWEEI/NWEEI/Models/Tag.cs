using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class Tag
    {
        public int TagID { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Organization> Organizations { get; set; }
    }
}
