namespace SinifProjesi;

internal class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("------------------------------------------------------------------------------------------------------");
        Console.WriteLine("Sınıf Uygulamasına Hoş Geldiniz... \nDevam etmek için lütfen bir tuşa basınız...");
        Console.WriteLine("------------------------------------------------------------------------------------------------------");
        Console.ReadLine();

        Console.Write("Sınıfta kaç kişi olacağını giriniz: ");
        int ogrenci = Convert.ToInt32(Console.ReadLine());

        Console.Write("Öğrencilerinize kaç özellik gireceğinizi giriniz: ");
        int ozellik = Convert.ToInt32(Console.ReadLine());

        string[,] sinif = new string[ogrenci, ozellik];
        string[] ozellikler = new string[ozellik];
        int i = 0;
        bool status = true;
        while (i < ozellik)
        {
            Console.WriteLine((i + 1) + ". Özelliği Giriniz: ");

            ozellikler[i] = Console.ReadLine();
            i++;

        }

        int l = 0;

        while (l < ogrenci)
        {

            Console.WriteLine("\nÖğrenci " + (l + 1) + " 'in Bilgilerini Giriniz:");
            int k = 0;

            while (k < ozellikler.Length)
            {

                Console.Write(ozellikler[k] + ": ");
                sinif[l, k] = Console.ReadLine();
                k++;
            }
            l++;
        }
        int ogrencii = sinif.GetLength(0);
        int ozellikk = sinif.GetLength(1);
        Console.WriteLine("\n------ Sınıf Listesi ------\n");

        foreach (int m in Enumerable.Range(0, ogrencii))
        {
            foreach (int j in Enumerable.Range(0, ozellikk))
            {
                Console.Write(sinif[m, j] + " /");
            }
            Console.WriteLine();
        }


    }
}
