using Moving.Application.Commands;
using Moving.Application.Exceptions;
using Moving.Domain;
using Moving.EfDataAccess;
using System;
using System.Collections.Generic;
using System.Text;

namespace Moving.Implementation.Commands
{
    public class EfDeleteJobCommand : IDeleteJobCommand
    {
        private readonly MovingContext _context;

        public EfDeleteJobCommand(MovingContext context)
        {
            this._context = context;
        }

        public int Id => 3;

        public string Name => "Delete Job";

        public void Execute(int request)
        {
            var customer = _context.Jobs.Find(request);

            if (customer == null)
            {
                throw new EntityNotFoundException(request, typeof(Customers));
            }

            _context.Jobs.Remove(customer);

            _context.SaveChanges();
        }
    }
}
