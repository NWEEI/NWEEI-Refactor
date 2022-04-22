using Microsoft.AspNetCore.Identity;
using NWEEI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NWEEI.ViewModels
{
    public class AppUserViewModel
    {
        public IEnumerable<AppUser> Users { get; set; }
        public IEnumerable<IdentityRole> Roles { get; set; }
    }
}
