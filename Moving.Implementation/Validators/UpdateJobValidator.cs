using FluentValidation;
using Microsoft.EntityFrameworkCore.Internal;
using Moving.Application.DataTransfer;
using Moving.EfDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moving.Implementation.Validators
{
    public class UpdateJobValidator : AbstractValidator<JobDto>
    {

        public UpdateJobValidator(MovingContext context)
        {
            RuleFor(x => x.Id).NotEmpty();
            RuleFor(x => x.MoveDate).NotEmpty();
            RuleFor(x => x.JobTypeId).NotEmpty()
                .Must(x => context.JobTypes.Any(user => user.Id == x))
                .WithMessage("Job Type does not exist");
            RuleFor(x => x.MinimumHours).NotEmpty();
            RuleFor(x => x.NumberOfMovers).NotEmpty();
            RuleFor(x => x.NumberOfTrucks).NotEmpty();
            RuleFor(x => x.PricePerHour).NotEmpty();
            RuleFor(x => x.CustomerId).NotEmpty()
                .Must(x => context.Customers.Any(user => user.Id == x))
                .WithMessage("Customer does not exist");
        }
    }
}
