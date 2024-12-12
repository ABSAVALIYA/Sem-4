using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Candidate
    {

        int Id;
        string Name;
        int Age;
        double Weight;
        double Height;



        //This function Get Candidate Details
        public void GetCandidateDetails()
        {
            Console.Write("Enter Your Id : ");
            Id = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Your Name : ");
            Name = Console.ReadLine();

            Console.Write("Enter Your Age : ");
            Age = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Your Weight : ");
            Weight = Convert.ToDouble(Console.ReadLine());

            Console.Write("Enter Your Height : ");
            Height = Convert.ToDouble(Console.ReadLine());
        }

        //This function Display Candidate details
        public void DisplayCandidateDetails()
        {
           
            Console.WriteLine("Candidate Id is : "+Id);
            Console.WriteLine("Candidate Name is : "+ Name);
            Console.WriteLine("Candidate Age is : "+ Age); 
            Console.WriteLine("Candidate Weight is : "+ Weight);
            Console.WriteLine("Candidate Height is : " + Height);
        }

    }
}
