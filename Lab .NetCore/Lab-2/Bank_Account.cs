using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Lab_2
{
    internal class Bank_Account
    {

        int Account_No;
        string Email;
        string User_Name;
        string Account_Type;
        double Account_Balance;


        //This function Get Staff Details
        public void GetAccountDetails()
        {
            Console.Write("Enter your Account Number : ");
            Account_No = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Your User  Name : ");
            User_Name = Console.ReadLine();

            Console.Write("Enter Your Email : ");
            Email = Console.ReadLine();

            Console.Write("Enter Your Account Type : ");
            Account_Type = Console.ReadLine();

            Console.Write("Enter your Account Balance");
            Account_Balance = Convert.ToInt32(Console.ReadLine());

            

            Console.WriteLine("-------------------------------");

        }

        //This function Display Candidate details
        public void DisplayAccountDetails()
        {

            Console.WriteLine("Account NUmber is : " + Account_No);
            Console.WriteLine("User Name is : " + User_Name);
            Console.WriteLine("Email is : " + Email);
            Console.WriteLine("Account Type  is : " + Account_Type);
            Console.WriteLine("Account Balnce is : " + Account_Balance);
        }
    }
}
