using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LostnFound.DataLayer.PocoClasses
{
    public class Conversation
    {
        public int Conv_ID { get; set; }
        public int User1 { get; set; }
        public int User2 { get; set; }
        public string IP { get; set; }
        public DateTime StartedOn { get; set; }
    }
}
