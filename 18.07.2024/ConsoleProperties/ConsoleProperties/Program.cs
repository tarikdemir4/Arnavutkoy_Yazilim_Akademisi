namespace ConsoleProperties
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Sleep Beklem-Uyutma modu
            Console.WriteLine("Erhan");
            Thread.Sleep(5000);//5 saniye bekle
            Console.WriteLine("Kaya");

            int i = 0;
            while (true)
            {
                Console.WriteLine(i);
                i++;
                Thread.Sleep(1000);
                Console.Clear();
            }
        }
    }
}