using System;
using System.Collections.Generic;

namespace Moving.Domain
{
    public partial class Users
    {
        public Users()
        {
            Jobs = new HashSet<Jobs>();
            UserRoles = new HashSet<UserRoles>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public DateTime CreatedDate { get; set; }

        public virtual ICollection<Jobs> Jobs { get; set; }
        public virtual ICollection<UserRoles> UserRoles { get; set; }
    }
}
