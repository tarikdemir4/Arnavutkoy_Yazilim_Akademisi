namespace While;

internal class Program
{
    static void Main(string[] args)
    {
        //while dönüsü

        int sayi = 0;//Şarta ve attırma veya azaltma durumuna göre while kullanımı
        while (sayi < 5)
        {
            Console.WriteLine("Erhan");
            sayi++;
        }

        for (int i = 0; i < 5; i++)
        {
            Console.WriteLine("Erhan");
        }

        while (true)//while'ın true(sonsuz döngü) kullanımı
        {
            Console.WriteLine("Sosuz Döngü");
            string durum = Console.ReadLine();
            if (durum == "Kapat")
            {
                break;//döngüyü sonlandırma yani kırma işlemi
            }
        }

        bool status = true;
        int deger = 0;
        while (status)//while döngüsünün boolean bir değişken ile kullanımı
        {
            Console.WriteLine("Sonsuz Döngü 2");
            deger++;
            if (deger == 10)
            {
                status = false;
            }
        }
        Console.ReadLine();
    }
}
