﻿using Moving.Application.Searches;
using Moving.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace Moving.Application.Queries
{
    public interface IGetJobsQuery : IQuery<JobSearch, PagedResponse<JobDto>>
    {
    }
}
