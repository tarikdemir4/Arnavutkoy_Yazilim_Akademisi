using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Deneme.Data;
internal class DataContext
{
    public static List<Category> Categories = new List<Category>()
    {
        new Category(){Id=1,Name="Bilgisayar",Description="Bigisayar Kategorisi",IsStatus=true},
        new Category(){Id=2,Name="Telefon",Description="Telefon Kategorisi",IsStatus=true},
        new Category(){Id=3,Name="Tablet",Description="Tablet Kategorisi",IsStatus=false},
        new Category(){Id=4,Name="Televizyon",Description="Televizyon Kategorisi",IsStatus=true}
    };

    public static List<Product> Products = new List<Product>()
    {
        new Product(){Id=1,Name="Asus Bilgisayar",Stock=185,Price=35800,CategoryId=1},
        new Product(){Id=2,Name="Dell Bilgisayar",Stock=35,Price=42500,CategoryId=1},
        new Product(){Id=3,Name="Monster Oyun Bilgisayarı",Stock=18,Price=78750,CategoryId=1},
        new Product(){Id=4,Name="Macbook Pro m3",Stock=36,Price=82550,CategoryId=1},
        new Product(){Id=5,Name="Apple Ipad ",Stock=185,Price=35800,CategoryId=3},
        new Product(){Id=6,Name="Samsung Tab10",Stock=155,Price=12500,CategoryId=3},
        new Product(){Id=7,Name="Asus Gaming Tab",Stock=186,Price=46000,CategoryId=3},
        new Product(){Id=8,Name="Iphone X ",Stock=18,Price=45800,CategoryId=2},
        new Product(){Id=9,Name="Xiaomi K70 Pro ",Stock=12,Price=28000,CategoryId=2,IsStatus=false},
        new Product(){Id=10,Name="Nokia 6600 ",Stock=394,Price=25700,CategoryId=2},
        new Product(){Id=11,Name="Samsung S22  ",Stock=19,Price=35800,CategoryId=2},
        new Product(){Id=12,Name="Samsung Curved Tv  ",Stock=23,Price=47500,CategoryId=4},
        new Product(){Id=13,Name="Vestel OLED Tv   ",Stock=49,Price=65800,CategoryId=4},
        new Product(){Id=14,Name="Preimer Led Tv",Stock=29,Price=45800,CategoryId=4},
        new Product(){Id=15,Name="Vestel Buzdolabı  ",Stock=67,Price=3100,CategoryId=5},
        new Product(){Id=16,Name="Arcelık Camasır Makinesi  ",Stock=34,Price=35800,CategoryId=5},
        new Product(){Id=17,Name="Philips Camasır Makinesi  ",Stock=64,Price=45800,CategoryId=5}
    };

}
