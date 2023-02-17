using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            using (var db = new Model3Container())
            {
                // Create and save a new Student
                Console.Write("bsmallah");
                Console.Write("Enter a name for a new Student: ");
                var firstName = Console.ReadLine();
                var student = new Student
                {
                    Id = 1,
                    Name = firstName
                };

                db.Students.Add(student);
                db.SaveChanges();

                var query = from b in db.Students
                            orderby b.Name
                            select b;
                Console.WriteLine("All student in the database:");

                foreach (var item in query)
                {
                    Console.WriteLine(item.Name);
                }
                Console.WriteLine("Press any key to exit...");
                Console.ReadKey();
            }
        }
    }
}

        
