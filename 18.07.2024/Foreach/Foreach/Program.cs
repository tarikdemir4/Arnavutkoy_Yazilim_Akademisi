namespace Foreach;

internal class Program
{
    static void Main(string[] args)
    {
        //foreach döngüsü kullanımı
        string[] isimler = { "Ahmet", "Melek", "Fatma", "Tarık" };

        foreach (string isim in isimler)
        {
            Console.WriteLine(isim);
        }
        int[] sayilar = { 1, 2, 3, 8, 7, 2, 4 };

        foreach (int sayi in sayilar)
        {
            Console.WriteLine(sayi);
        }


        Console.ReadLine();
    }
}
