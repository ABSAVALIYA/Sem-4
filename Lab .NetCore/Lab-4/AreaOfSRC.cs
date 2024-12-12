using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    internal class AreaOfSRC
    {

        public double AreaOfSquare(double l)
        {
            return l * l;
        }
        public double AreaOfRectangle(double l, double h)
        {
            return l * h;
        }
        public double AreaOfCircle(double r)
        {
            return 3.14 * r * r;
        }
    }
}
