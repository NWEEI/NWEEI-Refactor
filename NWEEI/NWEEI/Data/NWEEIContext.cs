using System;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using NWEEI.Models;

namespace NWEEI.Data
{
    public class NWEEIContext : IdentityDbContext<AppUser>
    {
        public NWEEIContext(DbContextOptions<NWEEIContext> options) : base(options) { }
        public DbSet<AppUser> AppUsers { get; set; }
        public DbSet<Article> Articles { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<FAQ> FAQs { get; set; }
        public DbSet<Organization> Organizations { get; set; }
        public DbSet<Registration> Registrations { get; set; }
        public DbSet<Tag> Tags { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder) // Seed data - Ready for initial Migration
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Category>().HasData(
                new Category
                {
                    CategoryID = 1,
                    Name = "Miscellaneous"
                }
            );
            modelBuilder.Entity<Article>().HasData(
                new Article
                {
                    ArticleID = 1,
                    Title = "What is Lorem Ipsum?",
                    DateCreated = DateTime.Now,
                    Views = 9001,
                    Featured = true,
                    IsPublished = true,
                    Body = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. "
                }
            );
        }

        public static async Task CreateAdminUser(RoleManager<IdentityRole> roleManager, UserManager<AppUser> userManager) // add admin account
        {
            string username = "admin";
            string password = "Sesame1!";
            string roleName = "Admin";
            string firstName = "Admin";
            string lastName = "User";
            string email = "admin@nweei.org";

            if (await roleManager.FindByNameAsync(roleName) == null)        // if role doesn't exist, 
            {
                await roleManager.CreateAsync(new IdentityRole(roleName));  // create it
            }

            if (await userManager.FindByNameAsync(username) == null) // if username doesn't exist, 
            {
                // create a user with the specified username
                AppUser user = new AppUser
                {
                    UserName = username,
                    FirstName = firstName,
                    LastName = lastName,
                    DateRegistered = DateTime.Now,
                    Email = email
                };

                var result = await userManager.CreateAsync(user, password); // attach the specified password
                if (result.Succeeded)
                {
                    await userManager.AddToRoleAsync(user, roleName); // attach the specified role
                }
            }
        }
    }
}