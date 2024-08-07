using FirstWebProject.Data;
using Microsoft.AspNetCore.Mvc;

namespace FirstWebProject.Controllers;
public class CategoryController1 : Controller
{
    private readonly DataContext database;
    public CategoryController1(DataContext db)
    {
        database= db; ;
    }
    

    public IActionResult Index()
    {
        var categoryList = database.Categories.Where(x=>x.IsDelete).ToList();
        return View(categoryList);
    }
    public IActionResult Detail(int? id )
    {
        var categoryListById = database.Categories.Find(id);
        if (id==null)
        {
            return NotFound();

        }

        return View(categoryListById);
    }

    [HttpGet]
    public IActionResult Create()
    {
        return View();
    }
}
