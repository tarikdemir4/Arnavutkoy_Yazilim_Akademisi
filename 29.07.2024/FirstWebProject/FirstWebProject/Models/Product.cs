using FirstWebProject.Models.AbstractModels;

namespace FirstWebProject.Models;

public class Product:CommonProp
{
    public int Stock { get; set; }
    public int Price { get; set; }
    public int CategoryId { get; set; }
    public Category? Category { get; set; }


}
