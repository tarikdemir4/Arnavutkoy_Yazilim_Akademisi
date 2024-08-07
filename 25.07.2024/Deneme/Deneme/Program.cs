using Deneme.Data;
using System;

class Program
{
    static void Main()
    {
        //LinQ Kullanımı
        var liste1 = DataContext.Categories.ToList(); //Bütün veriyi listeler...

        var liste2 = DataContext.Categories.Where(x => x.IsStatus).ToList(); //belli bir şarta göre listeyi getirir

        var liste3 = from category in DataContext.Categories select category;
        foreach (var item in liste3)
        {
            Console.WriteLine(item.Name);
        }

        //select ile birden fazla listeyi birleştirip veri çekme...


        var liste4 = from product in DataContext.Products
                     join category in DataContext.Categories
                     on product.CategoryId equals (category.Id)
                     select new
                     {
                         Id = product.Id,
                         Name = product.Name,
                         CatoryName = category.Name,
                         Price = product.Price,
                         Stock = product.Stock,
                         IsStatus = product.IsStatus,
                     };

        Console.WriteLine("-----------------------------");
        //foreach (var product in liste4)
        //{

        //    Console.WriteLine($"Id          : {product.Id} ");
        //    Console.WriteLine($"Name        : {product.Name} ");
        //    Console.WriteLine($"Category    : {product.CatoryName} ");
        //    Console.WriteLine($"Stock       : {product.Stock} ");
        //    Console.WriteLine($"Price       : {product.Price} ");
        //    Console.WriteLine("Status       : " + (product.IsStatus ? "Active" : "Passive"));
        //    Console.WriteLine("----------------------------------");
        //}



        Console.WriteLine("----------------------------------------");
        var tekil1 = liste4.FirstOrDefault(x => x.Id == 1);//tekil işlem



        Console.WriteLine($"Id          : {tekil1.Id} ");
        Console.WriteLine($"Name        : {tekil1.Name} ");
        Console.WriteLine($"Category    : {tekil1.CatoryName} ");
        Console.WriteLine($"Stock       : {tekil1.Stock} ");
        Console.WriteLine($"Price       : {tekil1.Price} ");
        Console.WriteLine("Status      :" + (tekil1.IsStatus ? " Active" : "Passive"));
        Console.WriteLine("----------------------------------");

        var tekil2 = liste4.First(x => x.Id == 2);
        Console.WriteLine($"Id          : {tekil2.Id} ");
        Console.WriteLine($"Name        : {tekil2.Name} ");
        Console.WriteLine($"Category    : {tekil2.CatoryName} ");
        Console.WriteLine($"Stock       : {tekil2.Stock} ");
        Console.WriteLine($"Price       : {tekil2.Price} ");
        Console.WriteLine("Status      : " + (tekil2.IsStatus ? "Active" : "Passive"));
        Console.WriteLine("----------------------------------");

        var tekil3 = liste4.LastOrDefault(x => x.CatoryName == "Telefon");

        Console.WriteLine($"Id          : {tekil3.Id} ");
        Console.WriteLine($"Name        : {tekil3.Name} ");
        Console.WriteLine($"Category    : {tekil3.CatoryName} ");
        Console.WriteLine($"Stock       : {tekil3.Stock} ");
        Console.WriteLine($"Price       : {tekil3.Price} ");
        Console.WriteLine("Status      : " + (tekil3.IsStatus ? "Active" : "Passive"));
        Console.WriteLine("----------------------------------");

        var tekil4 = liste4.Last(x => x.CatoryName == "Telefon");

        Console.WriteLine($"Id          : {tekil4.Id} ");
        Console.WriteLine($"Name        : {tekil4.Name} ");
        Console.WriteLine($"Category    : {tekil4.CatoryName} ");
        Console.WriteLine($"Stock       : {tekil4.Stock} ");
        Console.WriteLine($"Price       : {tekil4.Price} ");
        Console.WriteLine("Status      : " + (tekil4.IsStatus ? "Active" : "Passive"));
        Console.WriteLine("----------------------------------");

        var tekil5 = liste4.Where(x => x.CatoryName == "Telefon").FirstOrDefault();
        Console.WriteLine($"Id          : {tekil5.Id} ");
        Console.WriteLine($"Name        : {tekil5.Name} ");
        Console.WriteLine($"Category    : {tekil5.CatoryName} ");
        Console.WriteLine($"Stock       : {tekil5.Stock} ");
        Console.WriteLine($"Price       : {tekil5.Price} ");
        Console.WriteLine("Status      : " + (tekil5.IsStatus ? "Active" : "Passive"));
        Console.WriteLine("----------------------------------");

        var tekil6 = liste4.Where(x => x.CatoryName == "Bilgisayar").ToList().Take(1);
        foreach (var tekil in tekil6)
        {
            Console.WriteLine($"Id          : {tekil.Id} ");
            Console.WriteLine($"Name        : {tekil.Name} ");
            Console.WriteLine($"Category    : {tekil.CatoryName} ");
            Console.WriteLine($"Stock       : {tekil.Stock} ");
            Console.WriteLine($"Price       : {tekil.Price} ");
            Console.WriteLine("Status      : " + (tekil.IsStatus ? "Active" : "Passive"));
            Console.WriteLine("----------------------------------");
        }


        //Ürünler sayfası olacak ve her sayfada 6 ürün listelenecek
        //1. ilk sayfadayken ilk 6 ürün listelenecek
        //2. sonraki sayfalarda ise her sayfa değiştiğinde bir sonraki 6 ürün listelenecek

        int page = 3;
        int product = 9;
        if (page == 1)
        {
            var firstPage = DataContext.Products.Where(x => x.IsStatus == true).ToList().Take(product);
        }
        else
        {
            int nextPage = (page - 1) * product;
            var skipPage = DataContext.Products.Where(x => x.IsStatus == true).ToList().Skip(nextPage).Take(product);
        }

    }
}


