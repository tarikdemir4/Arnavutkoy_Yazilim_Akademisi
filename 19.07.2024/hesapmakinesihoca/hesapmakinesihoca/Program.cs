namespace hesapmakinesihoca;

internal class Program
{
    static void Main(string[] args)
    {
        string inputNumber1 = "";
        string inputNumber2 = "";
        string oprt = "";
        double sonuc = 0;
        while (true)
        {
            ConsoleKeyInfo key = Console.ReadKey(true);

            if (key.Key == ConsoleKey.Add ||
                key.Key == ConsoleKey.Subtract ||
                key.Key == ConsoleKey.Divide ||
                key.Key == ConsoleKey.Multiply ||
                key.Key == ConsoleKey.Escape)
            {
                oprt = key.KeyChar.ToString();

                if (key.Key == ConsoleKey.Escape) Environment.Exit(0);//Programı bitirir

                Console.Clear();
                Console.WriteLine(inputNumber1 + oprt);
                while (true)
                {
                    ConsoleKeyInfo key2 = Console.ReadKey(true);

                    if (key2.Key == ConsoleKey.Enter)
                    {
                        switch (oprt)
                        {
                            case "+":
                                sonuc = (double.Parse(inputNumber1) + (double.Parse(inputNumber2)));
                                Console.WriteLine("Toplama Sonucu= " + sonuc);
                                break;
                            case "-":
                                sonuc = (double.Parse(inputNumber1) - (double.Parse(inputNumber2)));
                                Console.WriteLine("Çıkarma Sonucu= " + sonuc);
                                break;
                            case "*":
                                sonuc = (double.Parse(inputNumber1) * (double.Parse(inputNumber2)));
                                Console.WriteLine("Çarpma Sonucu= " + sonuc);
                                break;
                            case "/":
                                sonuc = (double.Parse(inputNumber1) / (double.Parse(inputNumber2)));
                                Console.WriteLine("Bölme Sonucu= " + sonuc);
                                break;
                            default:
                                break;
                        }
                        inputNumber1 = sonuc.ToString();
                        inputNumber2 = "";
                        break;
                    }
                    else
                    {
                        inputNumber2 += key2.KeyChar;
                        Console.Clear();
                        Console.WriteLine(inputNumber1 + oprt + inputNumber2);
                    }

                }
            }
            else
            {

                inputNumber1 += key.KeyChar;
                Console.Clear();
                Console.WriteLine(inputNumber1);
            }
        }
    }
}
