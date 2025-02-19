USE [master]
GO
/****** Object:  Database [LibreriaDB]    Script Date: 7/24/2019 10:22:11 PM ******/
CREATE DATABASE [LibreriaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibreriaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\LibreriaDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibreriaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\LibreriaDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibreriaDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibreriaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibreriaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibreriaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibreriaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibreriaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibreriaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibreriaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibreriaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibreriaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibreriaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibreriaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibreriaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibreriaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibreriaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibreriaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibreriaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibreriaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibreriaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibreriaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibreriaDB] SET  MULTI_USER 
GO
ALTER DATABASE [LibreriaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibreriaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibreriaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibreriaDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LibreriaDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LibreriaDB]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 7/24/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authors](
	[IDauthor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[IDauthor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books]    Script Date: 7/24/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] NOT NULL,
	[Titulo] [varchar](200) NOT NULL,
	[IDautor] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books_and_InspirationProfiles]    Script Date: 7/24/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_and_InspirationProfiles](
	[IDLibro] [int] NOT NULL,
	[IDPerfil_Inspirador] [int] NOT NULL,
 CONSTRAINT [PK_Books_and_InspirationProfiles] PRIMARY KEY CLUSTERED 
(
	[IDLibro] ASC,
	[IDPerfil_Inspirador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inspiration_Profiles]    Script Date: 7/24/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inspiration_Profiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Inspiration_Profiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (1, N'Moises
Naim')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (2, N'Moises Naim')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (3, N'Sudhir Venkatesh')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (4, N'Eula Biss')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (5, N'Ed Catmull')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (6, N'Thomas S. Kuhn')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (7, N'Michelle Alexander')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (8, N'Michael-Suk Young Chwe')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (9, N'Henry Paulson')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (10, N'Yuval Noah Harari')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (11, N'Peter Huber')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (12, N'Kazuo Ishiguro')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (13, N'Peter F. Durker')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (14, N'Steve Grand')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (15, N'Clayton M. Christensen')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (16, N'Nassim Nicholas Taleb')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (17, N'Sam Walton')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (18, N'Archie Brown')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (19, N'Phil Knight')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (20, N'Steven Pinker')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (21, N'Elizabeth Kolbert')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (22, N'Steven Kloter')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (23, N'Jared Diamond')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (24, N'William Shakespeare')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (25, N'Parmahansa Yoganada')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (26, N'Dylan Thomas')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (27, N'Herman Melville')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (28, N'Ram Dass')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (29, N'Shunryu Suzuki')
INSERT [dbo].[Authors] ([IDauthor], [Nombre]) VALUES (30, N'Frances Moore Lappe')
SET IDENTITY_INSERT [dbo].[Authors] OFF
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (0, N'El ejecutivo eficaz', 13)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (1, N'Los restos del dia', 12)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (9, N'The innovator’s dilema', 15)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (19, N'El color de la justicia', 7)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (23, N'El fin del poder: como el poder no es mas lo que era', 2)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (24, N'Gang leader for a day', 3)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (30, N'Inmunidad', 4)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (31, N'Sam Walton: hecho en America', 17)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (45, N'Rational ritual: culture, coordination and common Knowledge', 8)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (49, N'Dealing with China', 9)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (55, N'Creation, life and how to make it', 14)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (56, N'Creatividad S.A. Como llevar la inspiración hasta el infinito y mas allá', 5)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (68, N'Orwell’s revenge', 11)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (78, N'De animales a dioses', 10)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (98, N'El cisne negro', 16)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (765, N'En defensa de la Ilustración', 20)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (900, N'Moby Dick', 27)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (2212, N'Be here now', 28)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (2900, N'Collected Poems', 26)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (3324, N'Mente Zen. Mente de principiante', 29)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (5689, N'La sexta extinción', 21)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (5843, N'El rey Lear', 24)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (6585, N'Los Angeles que llevamos dentro', 20)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (6895, N'The World Until Yesterday', 23)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (7789, N'La abundancia', 22)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (8936, N'Collapse', 23)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (9890, N'Autobiografia de un Yogui', 25)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (10100, N'Diet for a small planet', 30)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (45671, N'El mito del líder fuerte', 18)
INSERT [dbo].[Books] ([ID], [Titulo], [IDautor]) VALUES (45689, N'Nunca te pares', 19)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (0, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (1, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (19, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (23, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (24, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (30, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (31, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (45, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (49, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (55, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (56, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (68, 1)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (98, 2)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (765, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (900, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (2212, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (2900, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (3324, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (5689, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (5843, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (6585, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (6895, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (7789, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (8936, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (9890, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (10100, 4)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (45671, 3)
INSERT [dbo].[Books_and_InspirationProfiles] ([IDLibro], [IDPerfil_Inspirador]) VALUES (45689, 3)
SET IDENTITY_INSERT [dbo].[Inspiration_Profiles] ON 

INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (1, N'Mark Zuckerberg', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (2, N'Jeff Bezos', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (3, N'Bill Gates', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (4, N'Steve Jobs', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (5, N'Ellon Musk', NULL)
INSERT [dbo].[Inspiration_Profiles] ([ID], [Nombre], [email]) VALUES (6, N'Jack Ma', NULL)
SET IDENTITY_INSERT [dbo].[Inspiration_Profiles] OFF
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([IDautor])
REFERENCES [dbo].[Authors] ([IDauthor])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles]  WITH CHECK ADD  CONSTRAINT [FK_Books_and_InspirationProfiles_Books] FOREIGN KEY([IDLibro])
REFERENCES [dbo].[Books] ([ID])
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles] CHECK CONSTRAINT [FK_Books_and_InspirationProfiles_Books]
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles]  WITH CHECK ADD  CONSTRAINT [FK_Books_and_InspirationProfiles_Inspiration_Profiles] FOREIGN KEY([IDPerfil_Inspirador])
REFERENCES [dbo].[Inspiration_Profiles] ([ID])
GO
ALTER TABLE [dbo].[Books_and_InspirationProfiles] CHECK CONSTRAINT [FK_Books_and_InspirationProfiles_Inspiration_Profiles]
GO
USE [master]
GO
ALTER DATABASE [LibreriaDB] SET  READ_WRITE 
GO
