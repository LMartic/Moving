using System;
using System.Collections.Generic;

namespace Moving.Domain
{
    public partial class Permissions
    {
        public Permissions()
        {
            RolePermissions = new HashSet<RolePermissions>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public virtual ICollection<RolePermissions> RolePermissions { get; set; }
    }
}
