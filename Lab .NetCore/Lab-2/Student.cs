using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    internal class Student
    {

        double Enrollment_No;
        string Student_Name;
        int Semester;
        double SPI;
        double CPI;

        public Student(int enrollmentNo ,string Name ,int Sem, double spi, double cpi)
        { 
            Enrollment_No = enrollmentNo;
            Student_Name = Name;
            Semester = Sem;
            SPI = spi;
            CPI = cpi;
        }

        public void DisplayStudentDetails()
        {
            Console.WriteLine(Enrollment_No);
            Console.WriteLine(Student_Name);
            Console.WriteLine(Semester);
            Console.WriteLine(SPI);
            Console.WriteLine(CPI);
        }

    }
}
