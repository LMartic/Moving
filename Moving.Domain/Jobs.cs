using System;
using System.Collections.Generic;

namespace Moving.Domain
{
    public partial class Jobs
    {
        public Jobs()
        {
            JobImages = new HashSet<JobImages>();
        }
        public int Id { get; set; }
        public int NumberOfMovers { get; set; }
        public int NumberOfTrucks { get; set; }
        public decimal PricePerHour { get; set; }
        public decimal Deposit { get; set; }
        public int MinimumHours { get; set; }
        public DateTime CreatedDate { get; set; }
        public int JobTypeId { get; set; }
        public DateTime MoveDate { get; set; }
        public int CreatedByUserId { get; set; }
        public int JobStatusId { get; set; }
        public int CustomerId { get; set; }
        public bool Pickup { get; set; }
        public bool Delivery { get; set; }

        public virtual Users CreatedByUser { get; set; }
        public virtual Customers Customer { get; set; }
        public virtual JobStatuses JobStatus { get; set; }
        public virtual JobTypes JobType { get; set; }
        public virtual ICollection<JobImages> JobImages { get; set; }
    }
}
