using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace team_proj
{
    public class Garage_ListViewItem
    {
        public string Name { set; get; }
        public double Balance { set; get; }
        public Garage_ListViewItem(string Name, double Balance)
        {
            this.Name = Name;
            this.Balance = Balance;
        }
    }
}
