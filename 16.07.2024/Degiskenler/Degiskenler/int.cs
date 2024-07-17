namespace Degiskenler
{
    internal class @int
    {
        static void Main(string[] args)
        {
            //Değişkenler

            /*
                Sayısal Değişkenler
                Sözel Değişkenler
                Durum Değişkeni

             */

            //Sayısal Değişkenler

            //int - tam sayı değişkeni


            //[Type] [Name]=[Value];
            int sayi = 15;

            //örnek
            int deger1 = 22;
            int deger2 = 23;
            int sonuc = 0;

            sonuc = deger1 + deger2;
            Console.WriteLine(sonuc);


            //long - tam sayı değişkeni

            long deger3 = 28;

            //byte - sbyte - short - ushort - int - uint - long - ulong tam sayı değişkenleri


            //Kesirli Değişkenler

            //Double

            double deger4 = 25.5;
            double deger5 = 25.9d;

            //float

            float deger6 = 38.9f;

            //Decimal
            decimal deger7 = 18.3m;

            //Durum Değişkeni

            bool durum = true;//bool değişkeni sadece true ve false değeri alır

            int status = durum ? 1 : 0;
            //sql'e bool (bit) değerini gönderirken 1 veya 0 olarak değeri çevirip gönderiyoruz

          


            Console.ReadLine();//Tek Yazıldığında ekranda bekleme yapar
        }
    }
}
