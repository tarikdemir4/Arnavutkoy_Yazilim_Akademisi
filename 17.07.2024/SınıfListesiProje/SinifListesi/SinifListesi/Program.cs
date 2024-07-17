namespace SinifListesi
{
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

            for (int i = 0; i < ozellikler.Length; i++)
            {
                Console.Write((i + 1) + ". Özelliğin Adını Giriniz: ");
                ozellikler[i] = Console.ReadLine();
            }

            for (int i = 0; i < ogrenci; i++)
            {
                Console.WriteLine("\nÖğrenci " + (i + 1) + " 'in Bilgilerini Giriniz:");
                for (int k = 0; k < ozellik; k++)
                {
                    Console.Write(ozellikler[k] + ": ");
                    sinif[i, k] = Console.ReadLine();
                }
            }

            Console.WriteLine("\n------ Sınıf Listesi ------\n");

            for (int i = 0; i < ogrenci; i++)
            {
                Console.Write((i + 1) + ". Öğrenci Bilgileri: ");
                for (int j = 0; j < ozellik; j++)
                {
                    Console.Write(sinif[i, j] + "\t");
                }
                Console.WriteLine();
            }

            Console.ReadLine();
        }
    }
}
