namespace Örnek;


    internal class Program
    {
        static void Main(string[] args)
        {
            ConsoleColor[] renkler =
            {
                ConsoleColor.Red,
                ConsoleColor.Yellow,
                ConsoleColor.Green,
                ConsoleColor.Cyan,
                ConsoleColor.Magenta
            };
            Random random = new Random();

            //setcursorposition
            while (true)
            {

                Console.ForegroundColor = renkler[random.Next(0, renkler.Length)];
                Console.SetCursorPosition(random.Next(0, 100), random.Next(0, 20));
                Console.WriteLine("ɣ");
            }

        }
    }
