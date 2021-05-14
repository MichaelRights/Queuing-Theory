using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QueuingTheory.Models
{
    public class Worker
    {
        public bool busy { get; set; }
        public float serves { get; set; }
        public int served { get; set; }
        public void Served()
        {
            this.busy = false;
            this.serves = 0;
        }
    }
}
