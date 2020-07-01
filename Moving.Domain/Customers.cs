using System;
using System.Collections.Generic;

namespace Moving.Domain
{
    public partial class Customers
    {
        public Customers()
        {
            Jobs = new HashSet<Jobs>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public DateTime CreatedDate { get; set; }

        public virtual ICollection<Jobs> Jobs { get; set; }
    }
}
