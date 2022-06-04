using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NWEEI.Models;
using MySql.Data.MySqlClient;
using NWEEI.Repositories;

namespace NWEEI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            ///SQLite
            //services.AddDbContext<NWEEIContext>(options => options.UseSqlite(Configuration.GetConnectionString("SQLiteConnection")));
            ///MySQL
            services.AddDbContext<NWEEIContext>(options => options.UseMySQL(Configuration.GetConnectionString("MySQLConnection")));

            services.AddDatabaseDeveloperPageExceptionFilter();

            // identity service
            services.AddDefaultIdentity<AppUser>(options => options.SignIn.RequireConfirmedAccount = false)
                .AddRoles<IdentityRole>()
                .AddEntityFrameworkStores<NWEEIContext>();

            // inject repositories into controllers
            services.AddTransient<IAppUserRepo, AppUserRepo>();
            services.AddTransient<IArticleRepo, ArticleRepo>();
            services.AddTransient<ICategoryRepo, CategoryRepo>();
            services.AddTransient<IFAQRepo, FAQRepo>();
            services.AddTransient<IOrganizationRepo, OrganizationRepo>();
            services.AddTransient<IRegistrationRepo, RegistrationRepo>();
            services.AddTransient<IPaymentOptionRepo, PaymentOptionRepo>();
            services.AddTransient<ITrainingProgramRepo, TrainingProgramRepo>();
            services.AddTransient<ITagRepo, TagRepo>();
            services.AddTransient<IResourceRepo, ResourceRepo>();

            services.AddTransient<IEmailService, DotNetEmailService>();
            services.Configure<MailSettings>(Configuration.GetSection("MailSettings"));
            //This is where to edit who gets the email for the contact form
            ///A better implementation would give admin the ability to choose the email that the contact form gets sent to.
            EmailAddress ContactFormRecipient = new EmailAddress
            {
                Address = "allisonjm@my.lanecc.edu",
                Name = "Josh Allison"
            };
            services.AddSingleton<EmailAddress>(ContactFormRecipient);

            services.AddRazorPages();
            services.AddControllersWithViews().AddRazorRuntimeCompilation();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseMigrationsEndPoint();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });

            var serviceProvider = app.ApplicationServices;


            /// SQLite
            // SqliteConnection tempConnection = new SqliteConnection(Configuration.GetConnectionString("SQLiteConnection"));
            /// MySQL
            MySqlConnection tempConnection = new (Configuration.GetConnectionString("MySQLConnection"));

            ///Uncomment to seed the database
            // seed legacy data
            //NWEEIContext.SeedLegacyData(tempConnection);

            // seed admin role
            UserManager<AppUser> userManager = serviceProvider.GetRequiredService<UserManager<AppUser>>();    // create a user-manager object
            RoleManager<IdentityRole> roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>(); // create a role-manager object
            NWEEIContext.CreateAdminUser(roleManager, userManager).Wait();
        }
    }
}
