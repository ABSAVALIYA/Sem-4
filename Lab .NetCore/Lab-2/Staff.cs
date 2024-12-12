using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Staff
    {

       public string Name;
       public string Department;
       public string Designation;
       public int Experience;
       public int Salary;


        //This function Get Staff Details
        public void GetStaffDetails()
        {
            
            Console.Write("Enter Your Name : ");
            Name = Console.ReadLine();

            Console.Write("Enter Your Department : ");
            Department = Console.ReadLine();

            Console.Write("Enter Your Designation : ");
            Designation = Console.ReadLine();

            Console.Write("Enter your Expirence");
            Experience = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter your Salary");
            Salary = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("-------------------------------");

        }

        //This function Display Staff details
        public void DisplayStaffDetails()
        {

            Console.WriteLine("Staff Name is : " + Name);
            Console.WriteLine("Saff Salary is : " + Salary);
        }

    }
}
