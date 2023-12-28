using Microsoft.EntityFrameworkCore;
using WebAppAss14.Models;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<CourseManagementContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("CourseConStr")));
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
