using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    internal class BankAccount
    {

        //Create a BankAccount class having constructor accepting initialBalance and
        //accountHolderName.Also create Deposite() and withdraw() overloaded
        //methods by which user can deposit/withdraw amount using different types
        //of parameters(ex.cash, check)

        string name;
        double balance;
        
        public BankAccount(string n, double b)
        {
            name = n;
            balance = b;
        }
        public double DepositeByCash(double x)
        {
            return balance + x;
        }
        public double WithdrawByCash(double x)
        {
            return balance - x;
        }
        public double DepositeByCheck(double x)
        {
            return balance + x;
        }
        public double WithdrawByCheck(double x)
        {
            return balance - x;
        }
    }
}
