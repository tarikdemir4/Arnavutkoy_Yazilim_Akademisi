namespace MyFirstConsoleApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Hello, World!");//Ekrana çıktı verir. console.writeline ve console.write ikiside çıktı verir ekrana.
            Console.Write("Merhaba C#");
            Console.WriteLine("Tarık /nDEMİR"); // /n ise kendisinden sonra gördüğü bütün yazıları aşağıya yazdırır.
            Console.Write("Tarık DEMİR");
            //Write komutu yanyana yazdırı fakat writeline komutu kendisinden sonra gelen yazıları aşağı yazdırır.

            Console.ReadLine(); // Yazdığımız kodları ekranda bekletmeye yarar. 
        }
    }
}

