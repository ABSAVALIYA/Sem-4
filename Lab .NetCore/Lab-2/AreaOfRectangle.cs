using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class AreaOfRectangle
    {
        double Lenth;
        double Heigth;

        public AreaOfRectangle(double l, double h)
        {
            Lenth = l;
            Heigth = h;
        }

        public double FindArea()
        {
            return Lenth * Heigth;
        }

    }
}
