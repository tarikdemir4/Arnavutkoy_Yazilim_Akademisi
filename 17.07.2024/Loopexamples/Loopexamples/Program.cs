namespace Loopexamples;

internal class Program
{
    static void Main(string[] args)
    {

        ////Döngüler:For Döngüsü,Foreach Döngüsü,While Döngüsü,Do While Döngüsü


        ////For Döngüsü:Başlangıç değeri olan ve bu başlangıç değerini şart ile kontrol eden yapıda eğer durum sağlanıyorsa döngü devam eder ve scope (süslü parantez) içerisinde  olan kodları çalıştırır ve işlem bittikten sonra i++ ile 1 artarak devam eder.Verdiğimiz şart Sağlanana kadar devam eder şart sağlanmazsa scope dışına çıkar devam eder.
        ////for (int i = 0; i < 5; i++)
        ////{
        ////    Console.WriteLine(i);
        ////}

        ////İç içe for Yapısı 

        ////tek boyutlu dizi ile for kullanımı
        //string[] isimler = { "Erhan", "Muzaffer", "Tarık", "Büşra", "İrem", "Akif" };
        //for (int i = 0; i < isimler.Length; i++)
        //{
        //    Console.WriteLine(isimler[i]);
        //}

        //Console.WriteLine("--------------------------------------");

        ////İç içe Döngü
        //for (int i = 0; i < 3; i++)
        //{
        //    Console.WriteLine((i + 1) + "-Erhan");
        //    for (int j = 0; j < 5; j++)
        //    {
        //        Console.WriteLine("\t" + (j + 1) + "-Çikolata");
        //        for (int k = 0; k < 5; k++)
        //        {
        //            Console.WriteLine("\t\t\t" + (k + 1) + "-sever");
        //        }
        //    }
        //}
        //Console.WriteLine("-----------------------------------------------");
        for (int i = 0; i < 5; i++)
        {
            for(int k = 5; k>i; k--)
            {
               
                Console.Write(" *");
            }
            Console.WriteLine();
        }
        Console.WriteLine("----------------");

        for (int i = 0; i < 5; i++)
        {
            for( int k = 0; k <5-i; k++)
            {
                Console.Write(" *");
            }
            Console.WriteLine("");
        }

        Console.WriteLine("----------------");

        for (int i = 0; i < 5; i++)
        {
            
            for (int t = 0; t < i; t++)
            {
                Console.Write(" ");
            }
            for (int k = 0; k < 5-i ; k++)
            {

                Console.Write(" *");

            }
            Console.WriteLine("");
        }

        Console.WriteLine("--------------------------------");
        for (int i = 0; i < 5; i++)
        {

            for (int t = 0; t < i-7; t++)
            {
                Console.Write(" ");
            }
            for (int k = 0; k < 5 - i; k++)
            {

                Console.Write(" *");

            }
            Console.WriteLine("");
        }




        Console.ReadLine();
    }
}
