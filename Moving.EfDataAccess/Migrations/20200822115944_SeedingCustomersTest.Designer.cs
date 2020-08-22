﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Moving.EfDataAccess;

namespace Moving.EfDataAccess.Migrations
{
    [DbContext(typeof(MovingContext))]
    [Migration("20200822115944_SeedingCustomersTest")]
    partial class SeedingCustomersTest
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Moving.Domain.Customers", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("varchar(250)")
                        .HasMaxLength(250)
                        .IsUnicode(false);

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("varchar(100)")
                        .HasMaxLength(100)
                        .IsUnicode(false);

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("varchar(100)")
                        .HasMaxLength(100)
                        .IsUnicode(false);

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Phone")
                        .HasColumnType("varchar(100)")
                        .HasMaxLength(100)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("Customers");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(6767),
                            Email = "mikey@gmail.com",
                            FirstName = "Mike",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "38166415304"
                        },
                        new
                        {
                            Id = 2,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9467),
                            Email = "low@gmail.com",
                            FirstName = "LazarA",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "321321321"
                        },
                        new
                        {
                            Id = 3,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9555),
                            Email = "john@gmail.com",
                            FirstName = "John",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "3838388585"
                        },
                        new
                        {
                            Id = 4,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9564),
                            Email = "adam@gmail.com",
                            FirstName = "Adam",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "9859859585"
                        },
                        new
                        {
                            Id = 5,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9571),
                            Email = "jack@gmail.com",
                            FirstName = "Jack",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "0128377344"
                        },
                        new
                        {
                            Id = 6,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9577),
                            Email = "josh@gmail.com",
                            FirstName = "Josh",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "9128709845"
                        },
                        new
                        {
                            Id = 7,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9584),
                            Email = "jenny@gmail.com",
                            FirstName = "Jenny",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "9558290385"
                        },
                        new
                        {
                            Id = 8,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9590),
                            Email = "ana@gmail.com",
                            FirstName = "Anna",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "7520935743"
                        },
                        new
                        {
                            Id = 9,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9596),
                            Email = "suzanne@gmail.com",
                            FirstName = "Suzanne",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "398529358"
                        },
                        new
                        {
                            Id = 10,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9602),
                            Email = "amy@gmail.com",
                            FirstName = "Amy",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "75209355743"
                        },
                        new
                        {
                            Id = 11,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9608),
                            Email = "bruce@gmail.com",
                            FirstName = "Bruce",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "752096535743"
                        },
                        new
                        {
                            Id = 12,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9614),
                            Email = "ron@gmail.com",
                            FirstName = "Ron",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "8166415304"
                        },
                        new
                        {
                            Id = 13,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(9621),
                            Email = "jimmy@gmail.com",
                            FirstName = "Jimmy",
                            IsActive = false,
                            IsDeleted = false,
                            LastName = "Young",
                            Phone = "41284195"
                        });
                });

            modelBuilder.Entity("Moving.Domain.JobImages", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("ImagePath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("JobId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("JobId");

                    b.ToTable("JobImages");
                });

            modelBuilder.Entity("Moving.Domain.JobReviews", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(MAX)");

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("JobId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("JobId");

                    b.HasIndex("UserId");

                    b.ToTable("JobReviews");
                });

            modelBuilder.Entity("Moving.Domain.JobStatuses", b =>
                {
                    b.Property<int>("Id")
                        .HasColumnType("int");

                    b.Property<string>("JobStatus")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("JobStatuses");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            JobStatus = "In Progress"
                        },
                        new
                        {
                            Id = 2,
                            JobStatus = "Completed"
                        });
                });

            modelBuilder.Entity("Moving.Domain.JobTypes", b =>
                {
                    b.Property<int>("Id")
                        .HasColumnType("int");

                    b.Property<string>("JobType")
                        .IsRequired()
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("JobTypes");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            JobType = "1 bedrooms"
                        },
                        new
                        {
                            Id = 2,
                            JobType = "2 bedrooms"
                        },
                        new
                        {
                            Id = 3,
                            JobType = "3 bedrooms"
                        },
                        new
                        {
                            Id = 4,
                            JobType = "more than 3 bedrooms"
                        });
                });

            modelBuilder.Entity("Moving.Domain.Jobs", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<int>("CreatedByUserId")
                        .HasColumnType("int");

                    b.Property<int>("CustomerId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("Delivery")
                        .HasColumnType("bit");

                    b.Property<decimal>("Deposit")
                        .HasColumnType("decimal(10, 2)");

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("JobStatusId")
                        .HasColumnType("int");

                    b.Property<int>("JobTypeId")
                        .HasColumnType("int");

                    b.Property<int>("MinimumHours")
                        .HasColumnType("int");

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("MoveDate")
                        .HasColumnType("datetime");

                    b.Property<int>("NumberOfMovers")
                        .HasColumnType("int");

                    b.Property<int>("NumberOfTrucks")
                        .HasColumnType("int");

                    b.Property<bool>("Pickup")
                        .HasColumnType("bit");

                    b.Property<decimal>("PricePerHour")
                        .HasColumnType("decimal(10, 2)");

                    b.HasKey("Id");

                    b.HasIndex("CreatedByUserId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("JobStatusId");

                    b.HasIndex("JobTypeId");

                    b.ToTable("Jobs");
                });

            modelBuilder.Entity("Moving.Domain.Permissions", b =>
                {
                    b.Property<int>("Id")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("varchar(350)")
                        .HasMaxLength(350)
                        .IsUnicode(false);

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("Permissions");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3274),
                            Description = "Create New Customer",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Create New Customer"
                        },
                        new
                        {
                            Id = 2,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3353),
                            Description = "Delete Customer",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Delete Customer"
                        },
                        new
                        {
                            Id = 3,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3361),
                            Description = "Update Customer",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Update Customer"
                        },
                        new
                        {
                            Id = 4,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3367),
                            Description = "Customer search",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Customer search"
                        },
                        new
                        {
                            Id = 5,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3373),
                            Description = "Create New Job",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Create New Job"
                        },
                        new
                        {
                            Id = 6,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3379),
                            Description = "Update Job",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Update Job"
                        },
                        new
                        {
                            Id = 7,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3385),
                            Description = "Job search",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Job search"
                        },
                        new
                        {
                            Id = 8,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3391),
                            Description = "Delete Job",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Delete Job"
                        },
                        new
                        {
                            Id = 9,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3397),
                            Description = "Use Case Search",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Use Case Search"
                        },
                        new
                        {
                            Id = 10,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3402),
                            Description = "Role Search",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Role Search"
                        },
                        new
                        {
                            Id = 11,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3408),
                            Description = "Create new Role",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Create new Role"
                        },
                        new
                        {
                            Id = 12,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3414),
                            Description = "Update Role",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Update Role"
                        },
                        new
                        {
                            Id = 13,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3419),
                            Description = "Create New Job Review",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Create New Job Review"
                        },
                        new
                        {
                            Id = 14,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(3425),
                            Description = "Delete Job Review",
                            IsActive = false,
                            IsDeleted = false,
                            Name = "Delete Job Review"
                        });
                });

            modelBuilder.Entity("Moving.Domain.RolePermissions", b =>
                {
                    b.Property<int>("PermissionId")
                        .HasColumnType("int");

                    b.Property<int>("RoleId")
                        .HasColumnType("int");

                    b.HasKey("PermissionId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("RolePermissions");

                    b.HasData(
                        new
                        {
                            PermissionId = 1,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 1,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 2,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 3,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 3,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 4,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 4,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 5,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 5,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 6,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 6,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 7,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 7,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 8,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 9,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 9,
                            RoleId = 2
                        },
                        new
                        {
                            PermissionId = 10,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 11,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 12,
                            RoleId = 1
                        },
                        new
                        {
                            PermissionId = 13,
                            RoleId = 3
                        },
                        new
                        {
                            PermissionId = 14,
                            RoleId = 3
                        });
                });

            modelBuilder.Entity("Moving.Domain.Roles", b =>
                {
                    b.Property<int>("Id")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("RoleName")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("Roles");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 344, DateTimeKind.Local).AddTicks(2432),
                            IsActive = false,
                            IsDeleted = false,
                            RoleName = "Manager"
                        },
                        new
                        {
                            Id = 2,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(484),
                            IsActive = false,
                            IsDeleted = false,
                            RoleName = "Sales Agent"
                        },
                        new
                        {
                            Id = 3,
                            CreatedAt = new DateTime(2020, 8, 22, 13, 59, 44, 349, DateTimeKind.Local).AddTicks(548),
                            IsActive = false,
                            IsDeleted = false,
                            RoleName = "Contractor"
                        });
                });

            modelBuilder.Entity("Moving.Domain.UseCaseLog", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Actor")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Data")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("Date")
                        .HasColumnType("datetime2");

                    b.Property<string>("UseCaseName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("UseCaseLogs");
                });

            modelBuilder.Entity("Moving.Domain.UserRoles", b =>
                {
                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.Property<int>("RoleId")
                        .HasColumnType("int");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("UserRoles");
                });

            modelBuilder.Entity("Moving.Domain.Users", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DeletedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.Property<bool>("IsActive")
                        .HasColumnType("bit");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.Property<DateTime?>("ModifiedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .IsRequired()
                        .HasColumnType("varchar(150)")
                        .HasMaxLength(150)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("Moving.Domain.JobImages", b =>
                {
                    b.HasOne("Moving.Domain.Jobs", "Job")
                        .WithMany("JobImages")
                        .HasForeignKey("JobId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Moving.Domain.JobReviews", b =>
                {
                    b.HasOne("Moving.Domain.Jobs", "Job")
                        .WithMany("JobReviews")
                        .HasForeignKey("JobId")
                        .HasConstraintName("FK_JobReviews_Job")
                        .IsRequired();

                    b.HasOne("Moving.Domain.Users", "User")
                        .WithMany("JobReviews")
                        .HasForeignKey("UserId")
                        .HasConstraintName("FK_JobReviews_User")
                        .IsRequired();
                });

            modelBuilder.Entity("Moving.Domain.Jobs", b =>
                {
                    b.HasOne("Moving.Domain.Users", "CreatedByUser")
                        .WithMany("Jobs")
                        .HasForeignKey("CreatedByUserId")
                        .HasConstraintName("FK_Jobs_Users")
                        .IsRequired();

                    b.HasOne("Moving.Domain.Customers", "Customer")
                        .WithMany("Jobs")
                        .HasForeignKey("CustomerId")
                        .HasConstraintName("FK_Jobs_Customers")
                        .IsRequired();

                    b.HasOne("Moving.Domain.JobStatuses", "JobStatus")
                        .WithMany("Jobs")
                        .HasForeignKey("JobStatusId")
                        .HasConstraintName("FK_Jobs_JobStatuses")
                        .IsRequired();

                    b.HasOne("Moving.Domain.JobTypes", "JobType")
                        .WithMany("Jobs")
                        .HasForeignKey("JobTypeId")
                        .HasConstraintName("FK_Jobs_JobTypes")
                        .IsRequired();
                });

            modelBuilder.Entity("Moving.Domain.RolePermissions", b =>
                {
                    b.HasOne("Moving.Domain.Permissions", "Permission")
                        .WithMany("RolePermissions")
                        .HasForeignKey("PermissionId")
                        .HasConstraintName("FK_RolePermissions_Permissions")
                        .IsRequired();

                    b.HasOne("Moving.Domain.Roles", "Role")
                        .WithMany("RolePermissions")
                        .HasForeignKey("RoleId")
                        .HasConstraintName("FK_RolePermissions_Roles")
                        .IsRequired();
                });

            modelBuilder.Entity("Moving.Domain.UserRoles", b =>
                {
                    b.HasOne("Moving.Domain.Roles", "Role")
                        .WithMany("UserRoles")
                        .HasForeignKey("RoleId")
                        .HasConstraintName("FK_UserRoles_Roles")
                        .IsRequired();

                    b.HasOne("Moving.Domain.Users", "User")
                        .WithMany("UserRoles")
                        .HasForeignKey("UserId")
                        .HasConstraintName("FK_UserRoles_Users")
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
