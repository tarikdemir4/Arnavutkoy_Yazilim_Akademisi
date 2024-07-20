namespace BasitGirisİslemi;

internal class Program
{
    static void Main(string[] args)
    {
        //while dönüsü

        //While Basit Giriş Kontrolü

        string email = "erhan@kaya.com";
        string password = "12345";

        while (true)
        {
            Console.Clear();
            Console.WriteLine("Giriş Yapabilmek İçin Lütfen  Email ve Şifreyi Giriniz");
            Console.Write("Email    : ");
            string inputEmail = Console.ReadLine();

            Console.Write("Password : ");
            string inputPassword = Console.ReadLine();

            if (!email.Equals(inputEmail) || !password.Equals(inputPassword))
            {
                Console.WriteLine("Email Yada Şifre Hatalı.");
                Console.ReadLine();
                continue;
            }
            //continue while döngüsünün başına gider ve ordan göngüye devam eder

            Console.WriteLine("Hoşgeldiniz");
            Console.ReadLine();
            break;
            //döngü içerisinde kullanılırsa döngüyü bulunduğu yerden sonlandırır
        }
    }
}
