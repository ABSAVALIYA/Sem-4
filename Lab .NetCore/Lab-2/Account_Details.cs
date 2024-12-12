using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Account_Details
    {
        public double p;
        public double r;
        public double t;

        public void GetDetails()
        {

            Console.Write("Enter value of P :");
            p = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter value of R :");
            r = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter value of T :");
            t = Convert.ToDouble(Console.ReadLine());
        }
    }
    class Intrest : Account_Details
    {
        public double CalculateIntrest()
        {
            return (p * r * t)/100 ;
        }
    }
}
