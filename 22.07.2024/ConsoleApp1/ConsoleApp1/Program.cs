using System.Collections;
using System.Data.SqlClient;
using System;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SqlConnection db = new SqlConnection(@"Data Source=TARDEMPC\SQLEXPRESS;Initial Catalog=DemirBank;Integrated Security=True");


            try
            {
                db.Open();
                Console.WriteLine("Veritabanına Bağlandı");
                db.Close();

                ArrayList account = new ArrayList();
                ArrayList customer = new ArrayList();//çoğul
                string musteri = "";//tekil


                Console.WriteLine("Lütfen bir rakam seiçiniz. \n1-Account \n2-Customer");
                string secim = Console.ReadLine();
                switch (secim)
                {
                    case "1":
                        db.Open();
                        string sorgu2 = "select*from Account";

                        SqlCommand sql2 = new SqlCommand(sorgu2, db);
                        SqlDataReader reader2 = sql2.ExecuteReader();//tekil sorgularda kullanılır çoğunlukla
                        
                        while (reader2.Read())//çok satırlık veri okunuyor mu?
                        {
                            string deger2 = reader2[0].ToString() + " " + reader2["Balance"] + " " + reader2["Name"];

                            account.Add(deger2);
                        }

                        foreach (string deger2
                            in account)
                        {
                            Console.WriteLine(deger2);
                        }
                        db.Close();
                        Console.ReadLine();

                        break;
                    case "2":
                        db.Open();
                        string sorgu = "select * from Customer";

                        SqlCommand sql = new SqlCommand(sorgu, db);
                        SqlDataReader reader = sql.ExecuteReader();//tekil sorgularda kullanılır çoğunlukla

                        while (reader.Read())//çok satırlık veri okunuyor mu?
                        {
                            string deger = reader[0].ToString() + " " + reader["Name"] + " " + reader["Surname"];

                            customer.Add(deger);
                        }

                        foreach (string deger in customer)
                        {
                            Console.WriteLine(deger);
                        }
                        db.Close();
                        Console.ReadLine();

                        break;
                }

                //db.Open();
                //string sorgu = "select * from Customer where Id=1";

                //SqlCommand sql = new SqlCommand(sorgu, db);
                //SqlDataReader reader = sql.ExecuteReader();//tekil sorgularda kullanılır çoğunlukla

                //if(reader.Read())//Tek satırlık veri okunuyor mu?
                //{
                //    musteri = reader[5].ToString()+" "+ reader["Name"]+" " + reader["Surname"];
                //}

                //Console.WriteLine(musteri);
                //db.Close();


            }
            catch (Exception ex)
            {
                Console.WriteLine("Bağlantı Hatası");
                Console.WriteLine(ex.Message);
            }
            Console.ReadLine();
        }
    }
}
