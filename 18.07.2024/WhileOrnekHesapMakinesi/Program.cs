namespace WhileOrnekHesapMakinesi;

internal class Program
{
    static void Main(string[] args)
    {
        bool status = true;

        while (status)
        {
            Console.WriteLine("--Hesap Makinesine Hoş Geldiniz...--");
            Console.WriteLine("--------------------------------------");
            double sayi1;
            bool sayi1durum = double.TryParse(Console.ReadLine(), out sayi1);
            double sayi2;
            bool sayi2durum = double.TryParse(Console.ReadLine(), out sayi2);
            if (sayi1durum && sayi2durum)
            {
                Console.WriteLine("Operator Giriniz(+-* : ");
                string oprt = Console.ReadLine();
                switch (oprt)
                {
                    case "+":
                        Console.WriteLine("Toplama Sonucu: " + (sayi1 + sayi2));
                        break;
                    case "-":
                        Console.WriteLine("Toplama Sonucu: " + (sayi1 - sayi2));
                        break;
                    case "*":
                        Console.WriteLine("Toplama Sonucu: " + (sayi1 * sayi2));
                        break;
                    case "Kapat":
                        status = !status;
                        break;
                    default:
                        Console.WriteLine("Yanlış Tanımlama Yaptınız...Tekrar Deneyiniz Lütfen");
                        break;


                }
            }
            else
            {
                Console.WriteLine("Girilen sayısal değerlerde hata oluştu tekrar deneyiniz.");
            }
        }
    }
