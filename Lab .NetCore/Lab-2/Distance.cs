using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Distance
    {
        public double dist1;
        public double dist2;
        public double dist3;

        public Distance(double dist1, double dist2)
        {
            this.dist1 = dist1;
            this.dist2 = dist2;
        }
        public double SumOfDistance()
        {
            return dist1 + dist2;
        }
    }
}
