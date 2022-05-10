using System;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using NWEEI.Models;
using Microsoft.Data.Sqlite;
using System.IO;
using MySql.Data.MySqlClient;

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
        public DbSet<PaymentOption> PaymentOptions { get; set; }
        public DbSet<Tag> Tags { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder) => base.OnModelCreating(modelBuilder);

        public static async Task CreateAdminUser(RoleManager<IdentityRole> roleManager, UserManager<AppUser> userManager) // add admin account
        {
            string
                username = "admin@nweei.org",
                password = "Sesame1!",
                firstName = "Admin",
                lastName = "User",
                email = "admin@nweei.org";
            bool emailConfirmed = true;

            // seed member role
            string roleName = "Member";
            if (await roleManager.FindByNameAsync(roleName) == null)        // if role doesn't exist, 
                await roleManager.CreateAsync(new IdentityRole(roleName));  // create it

            // seed editor role
            roleName = "Editor";
            if (await roleManager.FindByNameAsync(roleName) == null)        // if role doesn't exist, 
                await roleManager.CreateAsync(new IdentityRole(roleName));  // create it

            // seed admin role
            roleName = "Admin";
            if (await roleManager.FindByNameAsync(roleName) == null)        // if role doesn't exist, 
                await roleManager.CreateAsync(new IdentityRole(roleName));  // create it

            if (await userManager.FindByNameAsync(username) == null) // if username doesn't exist, 
            {
                // create a user with the specified username
                AppUser user = new AppUser
                {
                    UserName = username,
                    FirstName = firstName,
                    LastName = lastName,
                    DateRegistered = DateTime.Now,
                    Email = email,
                    EmailConfirmed = emailConfirmed
                };

                var result = await userManager.CreateAsync(user, password); // attach the specified password
                if (result.Succeeded)
                {
                    await userManager.AddToRoleAsync(user, roleName); // attach the specified role
                }
            }
        }

        public static void SeedLegacyData(MySqlConnection tempConnection)
        {
            /// This method is ripe for dehydration.

            // using as guides:
            // https://stackoverflow.com/questions/58413440/including-sql-files-when-generating-migrations-in-ef-core-asp-net
            // https://stackoverflow.com/questions/62147487/running-sql-script-using-c-sharp-code-asp-net-core


            // prepare sql scripts using sql files in LegacyData folder
            // articles, categories, FAQs, organizations, registrations, tags
            string Path = "./Data/LegacyData/";
            bool usingMySql = true;
            Path = usingMySql ? Path + "MySQL/" : Path;

            FileInfo categoriesSql = new FileInfo(Path + "Categories.sql");
            string categoriesScript = categoriesSql.OpenText().ReadToEnd();

            FileInfo articlesSql = new FileInfo(Path + "Articles.sql");
            string articlesScript = articlesSql.OpenText().ReadToEnd();

            FileInfo faqsSql = new FileInfo(Path + "FAQs.sql");
            string faqsScript = faqsSql.OpenText().ReadToEnd();

            FileInfo organizationsSql = new FileInfo(Path + "Organizations.sql");
            string organizationsScript = organizationsSql.OpenText().ReadToEnd();

            FileInfo registrationsSql = new FileInfo(Path + "Registrations.sql");
            string registrationsScript = registrationsSql.OpenText().ReadToEnd();

            FileInfo tagsSql = new FileInfo(Path + "Tags.sql");
            string tagsScript = tagsSql.OpenText().ReadToEnd();


            // execute scripts
            tempConnection.Open();

            // SqliteCommand categoriesCmd = new (categoriesScript, tempConnection);
            MySqlCommand categoriesCmd = new (categoriesScript, tempConnection);
            categoriesCmd.ExecuteNonQuery();

            // SqliteCommand articlesCmd = new (articlesScript, tempConnection);
            MySqlCommand articlesCmd = new (articlesScript, tempConnection);
            articlesCmd.ExecuteNonQuery();

            // SqliteCommand faqsCmd = new (faqsScript, tempConnection);
            MySqlCommand faqsCmd = new (faqsScript, tempConnection);
            faqsCmd.ExecuteNonQuery();

            // SqliteCommand organizationsCmd = new (organizationsScript, tempConnection);
            MySqlCommand organizationsCmd = new (organizationsScript, tempConnection);
            organizationsCmd.ExecuteNonQuery();

            // SqliteCommand registrationsCmd = new (registrationsScript, tempConnection);
            MySqlCommand registrationsCmd = new (registrationsScript, tempConnection);
            registrationsCmd.ExecuteNonQuery();

            // SqliteCommand tagsCmd = new (tagsScript, tempConnection);
            MySqlCommand tagsCmd = new (tagsScript, tempConnection);
            tagsCmd.ExecuteNonQuery();

            tempConnection.Close();

        }
    }
}