using System;
using System.Collections.Generic;
using System.Text;

namespace Moving.Application.DataTransfer
{
    public class JobDto
    {
        public JobDto()
        {
            JobImages = new List<JobImageDto>();
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
        public List<JobImageDto> JobImages { get; set; }
    }
}
