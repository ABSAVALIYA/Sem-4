using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    internal class ExampleOfOverloding
    {
        public int SumOfInt(int a, int b)
        {
            return a + b;
        }
        public float SumOfFloat(float a, float b)
        {
            return a + b;
        }
    }
}
