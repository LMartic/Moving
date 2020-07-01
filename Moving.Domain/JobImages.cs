using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Moving.Domain
{
    [Table("JobImages")]
    public partial class JobImages
    {
        public int Id { get; set; }
        [ForeignKey(nameof(Job))]
        public int JobId { get; set; }
        public string ImagePath { get; set; }


        public virtual Jobs Job { get; set; }
    }
}
