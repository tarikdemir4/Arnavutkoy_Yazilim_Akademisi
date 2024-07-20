namespace HesapMakinesi;

internal class Program
{
    static void Main(string[] args)
    {
        //while dönüsü

        //Hesap Makinesi Uygulaması

        bool status = true;
        while (status)
        {
            Console.WriteLine("-- Hesap Makinesi --");
            Console.WriteLine("--------------------");

            Console.Write("Sayı 1 Giriniz: ");
            double sayi1;
            bool sayi1durum = double.TryParse(Console.ReadLine(), out sayi1);
            Console.Write("Sayı 2 Giriniz: ");
            double sayi2;
            bool sayi2durum = double.TryParse(Console.ReadLine(), out sayi2);

            if (sayi1durum && sayi2durum)
            {
                Console.Write("Operator Giriniz (+-*/): ");
                string oprt = Console.ReadLine();

                switch (oprt)
                {
                    case "+":
                        Console.WriteLine("Topalam Sonucu: " + (sayi1 + sayi2));
                        break;
                    case "-":
                        Console.WriteLine("Çıkartma Sonucu: " + (sayi1 - sayi2));
                        break;
                    case "*":
                        Console.WriteLine("Çarpma Sonucu: " + (sayi1 * sayi2));
                        break;
                    case "/":
                        Console.WriteLine("Bölme Sonucu: " + (sayi1 / sayi2));
                        break;
                    case "Kapat":
                        status = false; //bir diğer kullanımı status=!status;
                        break;
                    default:
                        Console.WriteLine("Tanımsız Değer Girildi. Tekrar Deneyiniz");
                        break;
                }

            }
            else
            {
                Console.WriteLine("Girilen sayısal değerlerde hata oluştu.\nTekrar Deneyiniz");
            }
            Console.ReadLine();
            Console.Clear();
        }
        Console.ReadLine();
    }
}
