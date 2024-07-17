namespace LoopExamples
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //For Döngüsü Çalışması

            //Yıldız Çalışması

            //*****

            //Console.WriteLine("*****");
            //Console.Write("*");
            //Console.Write("*");
            //Console.Write("*");
            //Console.Write("*");
            //Console.Write("*");

            for (int i = 0; i < 5; i++)
            {
                Console.Write("*");
            }
            Console.WriteLine("");
            Console.WriteLine("----------------");
            /*
                *
                *
                *
                *
                *
            */


            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("*");
            }
            Console.WriteLine("");
            Console.WriteLine("----------------");
            /*  5x5
                *****
                *****
                *****
                *****
                *****
            */

            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            /*
                *****
                ****
                ***
                **
                *
            */
            Console.WriteLine("");
            Console.WriteLine("----------------");


            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 5 - i; j++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            Console.WriteLine("");
            Console.WriteLine("----------------");

            /*
                *
                **
                ***
                ****
                *****  
            */

            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 1 + i; j++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            Console.WriteLine("");
            Console.WriteLine("----------------");

            /*
                *****
                 ****
                  ***
                   **
                    *
            */


            for (int i = 0; i < 5; i++)
            {
                for (int k = 0; k < i; k++)
                {
                    Console.Write(" ");
                }
                for (int j = 0; j < 5 - i; j++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }


            Console.WriteLine("");
            Console.WriteLine("----------------");

            /*
                    *
                   **
                  ***
                 ****
                *****
            */

            for (int i = 0; i < 5; i++)
            {
                for (int k = 0; k < 4 - i; k++)
                {
                    Console.Write(" ");
                }
                for (int j = 0; j < 1 + i; j++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }

            Console.WriteLine("");
            Console.WriteLine("----------------");

            /*
                    *
                   ***
                  *****
                 *******
                *********
             */

            for (int i = 0; i < 5; i++)
            {
                for (int k = 0; k < 4 - i; k++)
                {
                    Console.Write(" ");
                }
                for (int l = 0; l < (i * 2) + 1; l++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }

            Console.ReadLine();
        }
    }
}