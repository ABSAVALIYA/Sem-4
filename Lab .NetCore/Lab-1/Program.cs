using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Schema;

namespace Lab_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Program-1
            //1. Write a program to print your name, address, contact number & city.

            //Here writeline is use for print and readline use for take input from user

            //Console.WriteLine(" Enter Your Name : ");
            //Console.ReadLine();
            //Console.WriteLine("------------------------");
            //Console.WriteLine(" Enter Your Address : ");
            //Console.ReadLine();
            //Console.WriteLine("------------------------");
            //Console.WriteLine(" Enter Your Contact Number : ");
            //Console.ReadLine();
            //Console.WriteLine("------------------------");
            //Console.WriteLine(" Enter Your city : ");
            //Console.ReadLine();
            //Console.WriteLine("------------------------");

            //Program-2
            //Write a program to get two numbers from user and print those two numbers

            //Console.WriteLine("Enter Value of X : ");
            //int x = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter Value of Y : ")
            //int y = Convert.ToInt32(Console.ReadLine());

            //Console.WriteLine("Value of X is "+x);
            //Console.WriteLine("Value of Y is "+ y);


            //Program-3
            //Write program to prompt a user to input his / her name and country name
            //and then output will be shown as given: Hello<yourname> from country
            //<countryname>

            //Console.Write(" Enter Your Name : ");
            //string name = Console.ReadLine();
            //Console.Write(" Enter Your country : ");
            //string country = Console.ReadLine();

            //Console.WriteLine("Hello " +name+ " from country " + country);

            //program-4
            //4. Write a program to calculate the size of the area in square-feet based on
            //Specified length and width.

            //Console.Write("Enter Length in feet : ");
            //int x = Convert.ToInt32(Console.ReadLine());
            //Console.Write("Enter width in feet : ");
            //int y = Convert.ToInt32(Console.ReadLine());

            //int area = x * y;

            //Console.Write(area + " ft");


            //program-5
            //5. Write a program to calculate area of Square, Rectangle and Circle.


            //Console.WriteLine("1 = Square");
            //Console.WriteLine("2 = Rectangle");
            //Console.WriteLine("3 = circle");

            //int x = Convert.ToInt32(Console.ReadLine());


            //if (x == 1)
            //{
            //    // For find Area of Square
            //    Console.Write("Enter Value of length : ");
            //    double l = Convert.ToDouble(Console.ReadLine());

            //    double area = l*l;

            //    Console.WriteLine("Area Of Square is " + area);

            //}
            //else if (x == 2) 
            //{
            //    // For find Area of Rectangle
            //    Console.Write("Enter Value of length : ");
            //    double l = Convert.ToDouble(Console.ReadLine());

            //    Console.Write("Enter Value of width : ");
            //    double w = Convert.ToDouble(Console.ReadLine());
            //    double area = l * w;

            //    Console.WriteLine("Area Of Square is " + area);
            //}
            //else if(x == 3) 
            //{
            //    // For find Area of Circle
            //    Console.Write("Enter Value of Redius : ");
            //    double r = Convert.ToDouble(Console.ReadLine());

            //    double area = 3.14*r*r;

            //    Console.WriteLine("Area Of Square is " + area);
            //}
            //else
            //{
            //    Console.WriteLine("Enter Valide Choice");
            //}

            //program-6 
            //6. Write a program to calculate Celsius to Fahrenheit and vice-versa using
            //function.

            //Console.WriteLine("1 = your Temprature is in Celsius");
            //Console.WriteLine("2 = your Temprature is in Fahrenheit");

            //int x = Convert.ToInt32(Console.ReadLine());

            //if (x == 1)
            //{
            //    Console.Write("Enter Celsius : ");
            //    double c = Convert.ToDouble(Console.ReadLine());
            //    double f = Ferenhit(c);

            //    Console.WriteLine(f + "F");
            //}
            //else if (x == 2)
            //{
            //    Console.Write("Enter  Fahrenheit: ");
            //    double f = Convert.ToDouble(Console.ReadLine());
            //    double c = Celsius(f);

            //    Console.WriteLine(c + "C");

            //}
            //Program-7
            //7. Write a program to find out Simple Interest using function. (I = PRN/100) 
            //      Console.Write("Enter value of  P : ");
            //      double P = Convert.ToDouble(Console.ReadLine());

            //    Console.Write("Enter value of  R : ");
            //    double R = Convert.ToDouble(Console.ReadLine());

            //    Console.Write("Enter value of  N : ");
            //    double N = Convert.ToDouble(Console.ReadLine());


            //    double I = SimpleIntrest(P, R, N);

            //    Console.WriteLine("Simple Intrest Is : "+ I );

            //Program-8
            //8. Write a program to create a Simple Calculator for two numbers (Addition,
            //Multiplication, Subtraction, Division) [Also using if…else &Switch Case]

            //Console.Write("Enter Value Of X : ");
            //double X = Convert.ToDouble(Console.ReadLine());
            //Console.Write("Enter Value Of Y : ");
            //double Y = Convert.ToDouble(Console.ReadLine());

            //Console.WriteLine("1 = Addition /n" +
            //                  "2 = Subtraction /n" +
            //                  "3 = Multiplication /n" +
            //                  "4 = Division");
            //int a = Convert.ToInt32(Console.ReadLine());

            //switch (a)
            //{
            //    case 1:
            //        //Addition
            //        Console.WriteLine(X+Y);
            //        break;
            //    case 2:
            //        //Subtarction
            //        Console.WriteLine(X-Y);
            //        break;
            //    case 3:
            //        //Multiplication
            //        Console.WriteLine(X*Y);
            //        break;
            //    case 4:
            //        //Division                  
            //        Console.WriteLine(X/Y);
            //        break;
            //    default:
            //        Console.WriteLine("Enter valid opration");
            //        break;
            //}

            //Program-9
            //9. Write a program to Swapping without using third variable.

            //Console.Write("Enter Value Of X : ");
            //double X = Convert.ToDouble(Console.ReadLine());
            //Console.Write("Enter Value Of Y : ");
            //double Y = Convert.ToDouble(Console.ReadLine());

            //Console.WriteLine("Value Of X Before : " + X);
            //Console.WriteLine("Value Of Y Before : " + Y);

            //X = X + Y;
            //Y = X - Y;
            //X = X - Y;

            //Console.WriteLine("Value Of X After : " + X);
            //Console.WriteLine("Value Of Y After : " + Y);


            //Program-10
            //10.Write a program to find maximum numbers from given 3 numbers using
            //ternary operator


            //Console.WriteLine("Enter Value of X : ");
            //int x = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter Value of Y : ");
            //int y = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter Value of Z : ");
            //int z = Convert.ToInt32(Console.ReadLine());


            //int max = (x > y) ? (x > z ? x : z) : (y > z ? y : z);


            //Console.WriteLine(max);

        }
        //public static double SimpleIntrest(double P, double R, double N) { 
        //    return ((P * R * N)/100);
        //}

        //Function for Conver Fahrenheit to Celsius
        //public static double Celsius (double f)
        //{
        //    return ((f-32)*5/9);
        //}


        ////Function For Celsius to Fahrenheit
        //public static double Ferenhit(double c)
        //{
        //    return ((c * 9) / 5) + 32;
        //}
    }
}
