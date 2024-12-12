using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Furniture
    {
        public string material;
        public double price;
    }
    class Table : Furniture
    {
        public double heigth;
        public double surface_Area;

        public void GetData()
        {
            Console.Write("Enter Material Name : ");
            material = Console.ReadLine();
            Console.Write("Enter Price : ");
            price = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter Heigth : ");
            heigth = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter Surface Area : ");
            surface_Area = Convert.ToDouble(Console.ReadLine());
        }
        public void DetailsData() {
            Console.WriteLine($"Material Name is {material}");
            Console.WriteLine($"price is {price}");
            Console.WriteLine($"Heigth is {heigth}");
            Console.WriteLine($"Surface Area is {surface_Area}");
        }

    }
}
