using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Salary
    {
        public double Basic;
        public double TA;
        public double DA;
        public double HRA;

        public Salary(double B, double ta , double da = 100 , double hra = 100) 
        { 
            Basic = B;
            TA = ta;
            DA = da;
            HRA = hra;    
        }
        public double CalculateTotalSalary()
        {
            //Write proper Equation For acurate Slary
            return Basic + TA + DA + HRA;
        }

    }
}
