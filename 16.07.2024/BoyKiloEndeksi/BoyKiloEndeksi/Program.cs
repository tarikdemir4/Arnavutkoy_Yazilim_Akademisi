using System;

class Program
{
    static void Main()
    {
        Console.Write("Kilonuzu Giriniz(kg): ");
        double kilo = Convert.ToDouble(Console.ReadLine());
        Console.Write("Boyunuzu Giriniz(cm): ");
        double boy = Convert.ToDouble(Console.ReadLine()) / 100; 
        Console.Write("Cinsiyetinizi Giriniz(erkek/kadın): ");
        string cinsiyet = Console.ReadLine();
        Console.Write("Yaşınızı Giriniz: ");
        int yas = Convert.ToInt32(Console.ReadLine());

        double index = kilo / (boy * boy);

        switch (cinsiyet)
        {
            
            case "kadın":
                index = index * 1.05;
                break;
            case "erkek":
                index = index * 1.0
                    ;
                break;
            default:
                Console.WriteLine("Geçersiz cinsiyet girdiniz.");
                return;
        }

        index *= ((yas / 10 * 0.01) + 1);

        if (index < 18.5)
        {
            Console.WriteLine("Zayıf");
        }
        else if (index < 24.9)
        {
            Console.WriteLine("Normal");
        }
        else if (index < 29.9)
        {
            Console.WriteLine("Kilolu");
        }
        else if (index < 34.9)
        {
            Console.WriteLine("Aşırı Kilolu");
        }
        else if (index >= 35)
        {
            Console.WriteLine("Obez");
        }

        Console.WriteLine("Index: " + index);
    }
}
