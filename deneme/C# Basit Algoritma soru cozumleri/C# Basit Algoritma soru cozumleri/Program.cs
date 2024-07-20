namespace C__Basit_Algoritma_soru_cozumleri;

internal class Program
{
    static void Main(string[] args)
    {
        #region İki Sayının Toplamını veren Algoritma
        /*  
         //1.Çözüm
         int sayi1 = 10;
         int sayi2 = 20; 
         Console.WriteLine(sayi1 + sayi2);


         //2.Çözüm 
         Console.WriteLine("Toplama işlemine hoşgeldiniz. Lütfen Toplamasını yapmak istediğiniz sayıları giriniz.");

         Console.Write("1.Sayıyı giriniz: ");
         int sayi3 = int.Parse(Console.ReadLine());

         Console.Write("2.Sayıyı giriniz: ");
         int sayi4=Convert.ToInt32(Console.ReadLine());

         int toplam = sayi4 + sayi3;
         Console.WriteLine("Toplama Sonucu: "+toplam);


         Console.ReadLine();
        */
        #endregion



        #region Kullanıcının Girdiği 2 sayının karelerninin toplamını veren uygulama
        /*
        Console.WriteLine("Hoşgeldiniz...");
        Console.Write("Lütfen 1.değeri giriniz: ");
        int sayi1=int.Parse(Console.ReadLine());
        Console.Write("Lütfen 2.sayıyı giriniz: ");
        int sayi2=Convert.ToInt32(Console.ReadLine());
        double islem = (sayi1 * sayi1) + (sayi2 * sayi2);
        Console.WriteLine("Sonuç: "+islem);
        Console.ReadLine();*/
        #endregion



        #region 1'den 10'a kadar olan sayıların küplerinin toplamını bulan uygulama
        /*
        double sonuc=0;
        double sonuc2 = 0;
        //  1.Yol
        for (int i = 1; i < 12; i++)
        {
            sonuc += (i * i * i);

            Console.WriteLine(sonuc);
        }

        //  2.Yol
        for (int i = 1; i < 11; i++)
        {
            sonuc2 += Math.Pow(i, 3);
            Console.WriteLine(sonuc2);
        }

        //3.Yol
        int sayac = 1;
        double toplamSonucu = 0;
        while (sayac<11)
        {
            toplamSonucu += Math.Pow(sayac, 3);

            Console.WriteLine(toplamSonucu);
            sayac++;
        }
        */

        #endregion



        #region Doğum tarihi girilen kullanıcının yaşının bulunması
        /*
        Console.Write("Yaş Hesaplama Uygulamasına Hoşgeldiniz... Lütfen Doğum Tarihinizi Giriniz:");
       DateTime tarih=Convert.ToDateTime( Console.ReadLine());
       DateTime anlıktarih = DateTime.Now;
       TimeSpan sonuc =( anlıktarih - tarih);
        Console.WriteLine("Yaşınız: "+sonuc.Days/365);
           */
        #endregion


        #region girilen sayının faktoriyelini bulan uygulama
        /*
        //1.Yol
        Console.Write("Faktoriyel hesaplama hoşgeldiniz.Lütfen faktoriyelini bulmak istediğiniz sayıyı giriniz: ");
        int sonuc = 1;
        int girilenDeger = int.Parse(Console.ReadLine());
        for (int i = 1; i <= girilenDeger; i++)
        {
            sonuc *= i;
        }

        Console.WriteLine(sonuc);
        Console.ReadLine();
        
        //2.Yol

        Console.Write("Faktoriyel hesaplama hoşgeldiniz.Lütfen faktoriyelini bulmak istediğiniz sayıyı giriniz: ");
        string problem = "";
        int sonucc = 1;
        int deger = int.Parse(Console.ReadLine());
        int i = 1;
        sonucc = 1;
        while (i <= deger)

        {
            sonucc *= i;
            if (i != deger)
            {
                problem += $"{i} X ";
            }
            else
            {
                problem += $"{i} ={sonucc}";

            }

            i++;
        }

        Console.WriteLine(problem);
        */


        #endregion


        #region Pozitif Sayılarda çarpma işlemini toplama kullanarak bulan uygulama
        /*

        Console.WriteLine("Hoşgeldiniz.Lütfen Çarpma işlemi yapacağınız sayıları giriniz...");
        Console.Write("1.Sayı:");
        int sayi1=int.Parse(Console.ReadLine());
        Console.Write("2.Sayı: ");
        int sayi2=Convert.ToInt32(Console.ReadLine());
        int sonuc = 0;
        for (int i = 0; i < sayi2; i++)
        {
            sonuc += sayi1;
            Console.WriteLine(sonuc);
        }
        int i = 1;
        while (true)
        {

            if (sayi2 <i) break;
            sonuc += sayi1;
            i++;

            Console.WriteLine(sonuc);
        };
        */

        #endregion


        #region Pozitif sayılarda bölme işlemini çıkartma yaparak bulan uygulama
        /*
        Console.WriteLine("Bölme uygulamasına hoşgeldiniz");
        Console.Write("Bölünen Sayıyı giriniz: ");
        int sayi1 = int.Parse(Console.ReadLine());
        Console.Write("Bölen Sayıyı giriniz: ");
        int sayi2 = Convert.ToInt32(Console.ReadLine());
        int sonuc = 0;
        int kalan = 0;
        int _sayi1 = sayi1;
        for (int i = 1; i < _sayi1; i++)
        {
            sayi1 -= sayi2;
            sonuc++;
            if (sayi1 < sayi2)
            {
                kalan = sayi1;
                break;
            };
        }

        Console.WriteLine($"Sonuç:" + $"{_sayi1}/{sayi2}={sonuc}");
        Console.WriteLine("Kalan: " + kalan);

        
        */
        #endregion


        #region Girilen Pozitif sayının kaç basamaklı oldugğunu bulan uygulama
        Console.Write("Hoşgeldiniz.Lütfen Sayıyı giriniz: ");
        long sayi=long.Parse(Console.ReadLine());
        int kalan = 1;
        for (int i = 0; i < sayi; i++)
        {

            if (sayi < 10) break;
            sayi =sayi / 10;
            kalan++;
        }
        Console.WriteLine(kalan);
        #endregion








    }
}
