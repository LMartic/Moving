using AutoMapper;
using Moving.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace Moving.Implementation.Profiles
{
    public class JobProfile : Profile
    {
        public JobProfile()
        {
            CreateMap<Domain.JobImages, JobImageDto>();
            CreateMap<Domain.Jobs, JobDto>()
                .ForMember(destination => destination.JobImages, opts => opts.MapFrom(source => source.JobImages));
        }
    }
}
