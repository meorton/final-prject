USE [master]
GO
/****** Object:  Database [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF]    Script Date: 8/16/2019 1:02:58 PM ******/
CREATE DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database', FILENAME = N'C:\Temp\Database.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Database_log', FILENAME = N'C:\Temp\Database_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET QUERY_STORE = OFF
GO
USE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF]
GO
/****** Object:  Table [dbo].[batches]    Script Date: 8/16/2019 1:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batches](
	[bcode] [varchar](10) NOT NULL,
	[ccode] [varchar](10) NULL,
	[stdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[timing] [varchar](10) NULL,
	[fee] [money] NULL,
	[duration] [int] NULL,
	[remarks] [nchar](10) NULL,
 CONSTRAINT [PK_batches] PRIMARY KEY CLUSTERED 
(
	[bcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[ccode] [varchar](10) NOT NULL,
	[cname] [varchar](50) NULL,
	[fee] [money] NULL,
	[duration] [int] NULL,
	[prereq] [varchar](100) NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[ccode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[rcptno] [int] NOT NULL,
	[bcode] [varchar](10) NULL,
	[rollno] [int] NULL,
	[amount] [int] NULL,
	[dp] [datetime] NULL,
	[remarks] [varchar](50) NULL,
	[uname] [varchar](10) NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[rcptno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[bcode] [varchar](10) NOT NULL,
	[rollno] [int] NOT NULL,
	[name] [varchar](30) NULL,
	[fname] [varchar](30) NULL,
	[curocup] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[dj] [datetime] NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[bcode] ASC,
	[rollno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[uname] [varchar](10) NOT NULL,
	[pwd] [varchar](10) NULL,
	[fullname] [varchar](30) NULL,
	[desg] [varchar](30) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[uname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'1', N'dotnet', CAST(N'2007-01-02T00:00:00.000' AS DateTime), CAST(N'2007-02-11T00:00:00.000' AS DateTime), N'9-11 AM', 2500.0000, 70, NULL)
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'2', N'jse', CAST(N'2006-12-22T00:00:00.000' AS DateTime), NULL, N'7-8 PM', 1750.0000, 40, NULL)
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'3', N'jse', CAST(N'2006-11-28T00:00:00.000' AS DateTime), CAST(N'2007-02-01T00:00:00.000' AS DateTime), N'6-7 PM', 1750.0000, 40, NULL)
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'4', N'jse', CAST(N'2007-02-02T00:00:00.000' AS DateTime), NULL, N'6-7 PM', 1750.0000, 40, NULL)
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'5', N'oracle', CAST(N'2007-02-13T00:00:00.000' AS DateTime), NULL, N'5-6 PM', 1750.0000, 40, NULL)
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'6', N'dotnet', CAST(N'2007-02-23T00:00:00.000' AS DateTime), NULL, N'9- 11 AM', 2500.0000, 70, N'          ')
INSERT [dbo].[batches] ([bcode], [ccode], [stdate], [enddate], [timing], [fee], [duration], [remarks]) VALUES (N'7', N'jse', CAST(N'2007-02-27T00:00:00.000' AS DateTime), NULL, N'7-8 PM', 2000.0000, 40, N'          ')
INSERT [dbo].[courses] ([ccode], [cname], [fee], [duration], [prereq]) VALUES (N'dotnet', N'.NET 2.0 (VB.NET,C#,ASP.NET)', 2500.0000, 70, N'Programming & SQL')
INSERT [dbo].[courses] ([ccode], [cname], [fee], [duration], [prereq]) VALUES (N'jse', N'Java SE 6.0', 2000.0000, 40, N'C Lang.')
INSERT [dbo].[courses] ([ccode], [cname], [fee], [duration], [prereq]) VALUES (N'oracle', N'Oracle 10g Database', 1750.0000, 40, N'Computer Knowledge')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (1, N'5', 1, 250, CAST(N'2007-02-12T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (2, N'5', 2, 1750, CAST(N'2007-02-12T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (3, N'5', 3, 1500, CAST(N'2007-02-13T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (4, N'5', 4, 1500, CAST(N'2007-02-13T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (5, N'5', 5, 1750, CAST(N'2007-02-13T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (6, N'5', 6, 1750, CAST(N'2007-02-13T00:00:00.000' AS DateTime), N'Registration', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (7, N'5', 1, 1000, CAST(N'2007-02-15T00:00:00.000' AS DateTime), N'', N'a')
INSERT [dbo].[payments] ([rcptno], [bcode], [rollno], [amount], [dp], [remarks], [uname]) VALUES (8, N'5', 5, 2000, CAST(N'2007-02-15T00:00:00.000' AS DateTime), N'', N'a')
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 1, N'Jason', N'Hunter', N'BE CS 4/2', N'jason@yahoo.com', N'1234567890', CAST(N'2007-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 2, N'Ben', N'King', N'BE EEE 3/2', N'benking@yahoo.com', N'334444', CAST(N'2007-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 3, N'ABC', N'BBC', N'BE', N'abc@yahoo.com', N'3433', CAST(N'2007-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 4, N'PQR', N'XYZ', N'BE', N'pqr@yahoo.com', N'3433', CAST(N'2007-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 5, N'DEF', N'FED', N'BE', N'def@yahoo.com', N'3343434', CAST(N'2007-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[students] ([bcode], [rollno], [name], [fname], [curocup], [email], [phone], [dj]) VALUES (N'5', 6, N'HIJ', N'KGH', N'BE', N'hif@yahoo.com', N'3343434', CAST(N'2007-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[users] ([uname], [pwd], [fullname], [desg]) VALUES (N'a', N'a', N'Andy Bill', N'Clerk')
INSERT [dbo].[users] ([uname], [pwd], [fullname], [desg]) VALUES (N'b', N'b', N'Brin ', N'Finance Manager')
ALTER TABLE [dbo].[batches]  WITH CHECK ADD  CONSTRAINT [FK_batches_courses] FOREIGN KEY([ccode])
REFERENCES [dbo].[courses] ([ccode])
GO
ALTER TABLE [dbo].[batches] CHECK CONSTRAINT [FK_batches_courses]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_students] FOREIGN KEY([bcode], [rollno])
REFERENCES [dbo].[students] ([bcode], [rollno])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_students]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_users] FOREIGN KEY([uname])
REFERENCES [dbo].[users] ([uname])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_users]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK_students_students] FOREIGN KEY([bcode])
REFERENCES [dbo].[batches] ([bcode])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK_students_students]
GO
/****** Object:  StoredProcedure [dbo].[AddStudent]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddStudent] 
	(
	@bcode varchar(10),
	@name varchar(30),
	@fname varchar(30),
	@curocup varchar(30),
	@email varchar(50),
	@phone varchar(20),
	@dj datetime,
	@amount int,
	@uname varchar(10)
   )
AS
declare @rollno int
  begin tran
    select @rollno = isnull(max(rollno),0) + 1
    from students where bcode = @bcode;
    
    insert into students values (@bcode,@rollno,
     @name,@fname,@curocup,@email,@phone,
     @dj);
     
    execute payment @bcode,@rollno,@amount,@dj,'Registration',@uname;
    
  commit tran   
   
GO
/****** Object:  StoredProcedure [dbo].[CancelBatch]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CancelBatch]
	(@bcode varchar(10))
AS
 begin
  begin tran
   delete from payments where bcode = @bcode;
   
   delete from students where bcode = @bcode;
   
   delete from batches where bcode = @bcode;
  commit tran
 end
 
   
GO
/****** Object:  StoredProcedure [dbo].[payment]    Script Date: 8/16/2019 1:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[payment] 
	(
	@bcode varchar(10),
	@rollno int,
	@amount int,
	@dp     datetime,
	@remarks varchar(100),
	@uname varchar(10)
	)
AS
  declare @rcptno int
  /* check whether amount is more than what
   is to be paid  */
  declare @tf int , @fp int
  
  select @tf = fee from batches where
    bcode = @bcode;
 
  select @fp = sum(amount)
  from payments
  where bcode = @bcode and rollno = @rollno;
  
  if  @fp + @amount > @tf 
        raiserror('Amount being paid is more than required amount',16,1);
  else
   begin 
    
    select  @rcptno = isnull( max(rcptno),0) + 1 from payments
  
    insert into payments
     values(@rcptno,@bcode,@rollno,
        @amount,@dp,@remarks,@uname)
   end;
   
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\PROGRAMMING6\DOWNLOADS\FOA\APP_DATA\DATABASE.MDF] SET  READ_WRITE 
GO
