namespace DoWhile;

internal class Program
{
    static void Main(string[] args)
    {
        //do while dönüsü

        int i = 4;
        while (i == 5)
        {
            Console.WriteLine("Erhan");
        }

        int sayi = 5;
        do
        {
            Console.WriteLine("Giriş Kontrolü");

            //önce do scope içerindeki değerler 1 kere çalıştırılır
            //eğer while şartı sağlanır ise döngü devam eder
            //sağlanmaz ise sadece 1 kere işlem biter
        }
        while (sayi < 1);
    }
}
//değerleri while ile sonucları foreach ile tamamlayacagız.
