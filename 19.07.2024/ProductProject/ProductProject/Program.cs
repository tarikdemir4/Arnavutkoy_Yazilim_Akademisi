namespace ProductManagementConsoleProject
{
    internal class Program
    {
        static string[,] productList = new string[10, 3];

        static void Main(string[] args)
        {
            //metodlar ile crud işlemi
            Menu();
        }

        static void Menu()
        {
            bool status = true;
            while (status)
            {
                Console.Clear();

                Console.WriteLine("--------------------------------------");
                Console.WriteLine("----- Product Management System ------");
                Console.WriteLine("--------------------------------------\n");
                Console.WriteLine("           Select Proccess            ");
                Console.WriteLine("--------------------------------------");
                Console.WriteLine("1  - Product List");
                Console.WriteLine("2  - Add Product");
                Console.WriteLine("3  - Update Product");
                Console.WriteLine("4  - Delete Product");
                Console.WriteLine("0  - Exit System");
                Console.Write("Select Proccess: ");
                int selection;
                bool selectionStatus = int.TryParse(Console.ReadLine(), out selection);

                if (selectionStatus)
                {
                    Console.Clear();
                    switch (selection)
                    {
                        case 1:
                            ProductList(3);
                            break;
                        case 2:
                            AddProduct();
                            break;
                        case 3:
                            UpdateProduct();
                            break;
                        case 4:
                            DeleteProduct();
                            break;
                        case 0:
                            status = false;
                            Console.WriteLine("System Exiting...");
                            Console.ReadLine();
                            break;
                    }
                }
                else
                {
                    Console.WriteLine("Selected Function Not Found");
                    Console.ReadLine();
                }
            }
        }

        static void ProductList(int satir)
        {
            //productList[0, 0] = "Elma";
            //productList[0, 1] = "15";
            //productList[0, 2] = "30";
            Console.WriteLine("--------------------------------------");
            Console.WriteLine("----------- Product List -------------");
            Console.WriteLine("--------------------------------------\n");
            int productRow = 0;
            foreach (int i in Enumerable.Range(0, productList.GetLength(0)))
            {
                if (!String.IsNullOrWhiteSpace(productList[i, 0]))
                {
                    Console.SetCursorPosition(0, satir + productRow);
                    Console.Write("Id: " + (i + 1));
                    Console.SetCursorPosition(10, satir + productRow);
                    Console.Write("Name: " + productList[i, 0]);
                    Console.SetCursorPosition(30, satir + productRow);
                    Console.Write("Stock: " + productList[i, 1]);
                    Console.SetCursorPosition(45, satir + productRow);
                    Console.WriteLine("Price: " + productList[i, 2]);
                    productRow++;
                }

            }

            Console.ReadLine();
        }

        static void AddProduct()
        {
            Console.WriteLine("--------------------------------------");
            Console.WriteLine("------------ Add Product -------------");
            Console.WriteLine("--------------------------------------\n");
            int productCount = 0;
            foreach (int i in Enumerable.Range(0, productList.GetLength(0)))
            {
                if (String.IsNullOrWhiteSpace(productList[i, 0]))
                {
                    Console.Write("Product Name  : ");
                    productList[i, 0] = Console.ReadLine();
                    Console.Write("Product Stock : ");
                    productList[i, 1] = Console.ReadLine();
                    Console.Write("Product Price : ");
                    productList[i, 2] = Console.ReadLine();

                    Console.WriteLine("\nProduct Added Successfull");
                    Console.ReadLine();
                    break;
                }
                else
                {
                    productCount++;
                    if (productCount == 10)
                    {
                        Console.WriteLine("Produt List is Full");
                        Console.ReadLine();
                    }
                }
            }

        }

        static void DeleteProduct()
        {
            Console.WriteLine("--------------------------------------");
            Console.WriteLine("----------- Delete Product -----------");
            Console.WriteLine("--------------------------------------\n");

            Console.WriteLine("**************************************");
            ProductList(8);
            Console.Write("Select Product Id: ");
            int id = 0;
            bool idStatus = int.TryParse(Console.ReadLine(), out id);
            if (idStatus)
            {
                bool isProduct = false;
                id -= 1;

                foreach (int i in Enumerable.Range(0, productList.GetLength(0)))
                {
                    if (!String.IsNullOrWhiteSpace(productList[i, 0]))
                    {
                        if (i == id)
                        {
                            productList[i, 0] = " ";
                            productList[i, 1] = " ";
                            productList[i, 2] = " ";
                            isProduct = true;
                            break;
                        }
                    }
                }
                Console.WriteLine(isProduct ?
                    "Product Deleted Successfull" :
                    "Not Found Product");
                Console.ReadLine();
            }
            else
            {
                Console.WriteLine("Tanımsız Değer Girildi Tekrar Deneyiniz");
                Console.ReadLine();
                Console.Clear();
                DeleteProduct();
            }
        }
        static void UpdateProduct()
        {
            Console.WriteLine("--------------------------------------");
            Console.WriteLine("----------- Update Product -----------");
            Console.WriteLine("--------------------------------------\n");

            Console.WriteLine("**************************************");
            ProductList(8);
            Console.Write("Select Product Id: ");
            int id = 0;
            bool idStatus = int.TryParse(Console.ReadLine(), out id);
            if (idStatus)
            {
                bool isProduct = false;
                id -= 1;

                foreach (int i in Enumerable.Range(0, productList.GetLength(0)))
                {
                    if (!String.IsNullOrWhiteSpace(productList[i, 0]))
                    {
                        if (i == id)
                        {
                            Console.Clear();
                            Console.WriteLine("--------------------------------------");
                            Console.WriteLine("----------- Product Detail -----------");
                            Console.WriteLine("--------------------------------------\n");

                            Console.WriteLine("Product Name  : " + productList[id, 0]);
                            Console.WriteLine("Product Stock : " + productList[id, 1]);
                            Console.WriteLine("Product Price : " + productList[id, 2]);

                            Console.WriteLine("--------------------------------------");
                            Console.WriteLine($" New Product Data ({productList[id, 0]}) ");
                            Console.WriteLine("--------------------------------------\n");

                            Console.Write("Product Name  : ");
                            productList[id, 0] = Console.ReadLine();
                            Console.Write("Product Stock : ");
                            productList[id, 1] = Console.ReadLine();
                            Console.Write("Product Price : ");
                            productList[id, 2] = Console.ReadLine();

                            isProduct = true;
                            break;
                        }
                    }
                }
                Console.WriteLine(isProduct ?
                    "Product Update Successfull" :
                    "Not Found Product");
                Console.ReadLine();
            }
            else
            {
                Console.WriteLine("Tanımsız Değer Girildi Tekrar Deneyiniz");
                Console.ReadLine();
                Console.Clear();
                DeleteProduct();
            }
        }



    }
}