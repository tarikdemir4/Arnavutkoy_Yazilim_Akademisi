using FirstWebProject.Models.AbstractModels;

namespace FirstWebProject.Models;

public class Category:CommonProp
{
    public List<Product>? Products { get; set; }
}
