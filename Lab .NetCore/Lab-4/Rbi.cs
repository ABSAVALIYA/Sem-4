using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    internal class Rbi
    {
        public virtual double CalculateInterest(double p, double r, double t)
        {
            return (p * r * t) / 100;
        }
    }
        class HDFC : Rbi
        {
            public override double CalculateInterest(double p, double r, double t)
            {
                return (p * r * t) / 100;
            }
        }
        class SBI : Rbi
        {
            public override double CalculateInterest(double p, double r, double t)
            {
                return (p * r * t) / 100;
            }
        }
        class ICICI : Rbi
        {
            public override double CalculateInterest(double p, double r, double t)
            {
                return (p * r * t) / 100;
            }
        }

    
    
}
