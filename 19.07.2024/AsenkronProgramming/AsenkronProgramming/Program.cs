namespace AsenkronProgramming;

internal class Program
{
    static void Main(string[] args)
    {
        int userScore = 0;
        int computerScore = 0;
        int roundsPlayed = 0;
        DateTime startTime = DateTime.Now;

        Random random = new Random();

        while (userScore < 10 && computerScore < 10)
        {
            Console.WriteLine("Taş (1), Kağıt (2), Makas (3) seçeneklerinden birini seçin:");
            string userInput = Console.ReadLine();

            int userChoice;
            if (!int.TryParse(userInput, out userChoice) || userChoice < 1 || userChoice > 3)
            {
                Console.WriteLine("Geçersiz seçim! Lütfen 1, 2 veya 3 girin.");
                continue;
            }

            int computerChoice = random.Next(1, 4);
            Console.WriteLine($"Bilgisayarın seçimi: {(computerChoice == 1 ? "Taş" : computerChoice == 2 ? "Kağıt" : "Makas")}");

            if (userChoice == computerChoice)
            {
                Console.WriteLine("Berabere!");
            }
            else if ((userChoice == 1 && computerChoice == 3) ||
                     (userChoice == 2 && computerChoice == 1) ||
                     (userChoice == 3 && computerChoice == 2))
            {
                Console.WriteLine("Siz kazandınız!");
                userScore++;
            }
            else
            {
                Console.WriteLine("Bilgisayar kazandı!");
                computerScore++;
            }

            roundsPlayed++;
            Console.WriteLine($"Skor: Siz {userScore} - {computerScore} Bilgisayar");
        }

        DateTime endTime = DateTime.Now;
        TimeSpan gameDuration = endTime - startTime;

        Console.WriteLine(userScore == 10 ? "Tebrikler! Siz kazandınız!" : "Bilgisayar kazandı!");
        Console.WriteLine($"Oyun süresi: {gameDuration.TotalSeconds} saniye");
        Console.WriteLine($"Oynanan el sayısı: {roundsPlayed}");
    }
    static void Game()
    {
        Console.WriteLine("---------------------------------------");
        Console.WriteLine("Taş Kağıt Makas Oyununa Hoş Geldiniz...");
        Console.WriteLine("---------------------------------------");
        Console.WriteLine("Devam Etmek İçin Lütfen Bir Tuşa Basınız");
        Console.ReadLine();
        Console.Write("İsminizi Giriniz:");
        string isim = Console.ReadLine();
        Console.WriteLine("Hoş Geldiniz: " + isim);

        int kullanıcıSkor = 0;
        int bilgisayarSoker = 0;
        int toplamOynananSayı = 0;

        while (kullanıcıSkor<10 && bilgisayarSoker<10)
        {

            Console.WriteLine("1-Taş");
            Console.WriteLine("2-Kağıt");
            Console.WriteLine("3-Makas");

            Console.WriteLine("Lütfen bir değer seçiniz: ");
            string secilendeger = Console.ReadLine();

            int denemedeger;
            if (int.TryParse(secilendeger, out denemedeger) || denemedeger > 3 || denemedeger < 1)
            {
                Console.WriteLine("Geçersiz İşlem lütfen tekrar deneyiniz");
                continue;
            }
            else 
            {

            }
        }
        Console.WriteLine("Kazanan"+kullanıcıSkor);

    }
}