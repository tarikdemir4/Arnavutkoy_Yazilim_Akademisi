namespace KitaplıkProjesi;

internal class Program
{
    static void Main(string[] args)
    {
        /*
                        Kitaplık 5 adet kitap alma kapasitesine sahip olacak
                        Kitap bilgileri olarak İsim,Yazar,Sayfa bilgileri olucak
                        Bilgiler Dışarıdan Girilecek
                        5 kitap bilgisi girildikten sonra bütün kitaplar listelenecek


                     */

        string[,] kitaplar = new string[5, 3];

        Console.WriteLine("-------------------------------");
        Console.WriteLine("------ Benim Kitaplığım -------");
        Console.WriteLine("-------------------------------");
        Console.WriteLine("Kitap Bilgiarini Girmek\niçin Bir Tuşa Basınız");
        Console.ReadLine();
        Console.WriteLine("-------------------------------");
        for (int i = 0; i < kitaplar.GetLength(0); i++)
        {
            Console.WriteLine((i + 1) + ". Kitap Bilgileri Giriniz");
            Console.WriteLine("-------------------------------");
            Console.Write("Kitabın Adı     : ");
            kitaplar[i, 0] = Console.ReadLine();
            Console.Write("Kitabın Yazarı  : ");
            kitaplar[i, 1] = Console.ReadLine();
            Console.Write("Kitabın Sayfası : ");
            kitaplar[i, 2] = Console.ReadLine();
            Console.WriteLine("-------------------------------");

        }

        Console.WriteLine("-------------------------------");
        Console.WriteLine("Kitapları Listelemek İçin\nBir Tuşa Basınız");
        Console.ReadLine();
        Console.WriteLine("-------------------------------");
        Console.WriteLine("------ Benim Kitaplığım -------");
        Console.WriteLine("-------------------------------");

        for (int i = 0; i < kitaplar.GetLength(0); i++)
        {
            Console.WriteLine("Kitabın Adı     : " + kitaplar[i, 0] +
                            "\nKitabın Yazarı  : " + kitaplar[i, 1] +
                            "\nKitabın Sayfası : " + kitaplar[i, 2] +
                            "\n-------------------------------");
        }
    }
}

