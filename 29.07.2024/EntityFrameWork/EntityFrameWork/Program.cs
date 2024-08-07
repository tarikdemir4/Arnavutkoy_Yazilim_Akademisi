using EntityFrameWork.Data;
using EntityFrameWork.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace EntityFrameWork;

internal class Program
{
    static void Main(string[] args)
    {
        var serviceProvider = ConfigureServices();
        var context = serviceProvider.GetRequiredService<DataContext>();
        context.Database.EnsureCreated();
        Category category = new Category()
        {
            Name = "Bilgisayar"
        };
        context.Categories.Add(category);

        context.Categories.Add(new Category { Name = "Telefon" });
        context.SaveChanges();
    }
    private static ServiceProvider ConfigureServices()
    {
        var configuration = new ConfigurationBuilder()
            .SetBasePath(AppContext.BaseDirectory)
            .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
            .Build();

        var services = new ServiceCollection();
        services.AddDbContext<DbContext>(options => options.UseSqlServer(configuration.GetConnectionString("VeriTabaniBaglantisi")));
        return services.BuildServiceProvider();
    }
}
