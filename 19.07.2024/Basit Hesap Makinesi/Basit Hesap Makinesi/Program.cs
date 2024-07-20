namespace Basit_Hesap_Makinesi;



    internal class Program
    {
        static void Main(string[] args)
        {
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
                    Console.Write("Yapacağınız işleme basınız ");

                ConsoleKeyInfo key = Console.ReadKey();
                Console.WriteLine($"\nBasılan İşlem Değeri= {key.Key}");

                switch (key.Key)
                    {
                        case ConsoleKey.OemPlus:
                            Console.WriteLine("Toplam Sonucu: " + (sayi1 + sayi2));
                            break;
                        case ConsoleKey.OemMinus:
                            Console.WriteLine("Çıkartma Sonucu: " + (sayi1 - sayi2));
                            break;
                        case ConsoleKey.Multiply:
                            Console.WriteLine("Çarpma Sonucu: " + (sayi1 * sayi2));
                            break;
                        case ConsoleKey.Divide:
                            Console.WriteLine("Bölme Sonucu: " + (sayi1 / sayi2));
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

