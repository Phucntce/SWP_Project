USE [master]
GO
/****** Object:  Database [SWP301]    Script Date: 9/23/2022 9:53:30 AM ******/
CREATE DATABASE [SWP301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP301] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP301] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP301] SET  MULTI_USER 
GO
ALTER DATABASE [SWP301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP301', N'ON'
GO
ALTER DATABASE [SWP301] SET QUERY_STORE = OFF
GO
USE [SWP301]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[account_ID] [int] NOT NULL,
	[role_ID] [int] NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[citizen_identity_card] [int] NULL,
	[address] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[USERNAME] [nvarchar](50) NULL,
	[PASSWORD] [nvarchar](50) NULL,
	[salary] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID_author] [int] NOT NULL,
	[author_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID_author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[ID_book] [int] NOT NULL,
	[ID_publisher] [int] NULL,
	[ID_author] [int] NULL,
	[img] [nvarchar](100) NULL,
	[book_name] [nvarchar](100) NULL,
	[language] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[publishing_year] [int] NULL,
	[avaiable] [bit] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[ID_book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrow_Orders]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrow_Orders](
	[ID_borrow_order] [int] NOT NULL,
	[ID_book] [int] NULL,
	[ID_account] [int] NULL,
	[status] [nvarchar](50) NULL,
	[date_create] [datetime] NULL,
 CONSTRAINT [PK_Borrow_Orders] PRIMARY KEY CLUSTERED 
(
	[ID_borrow_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Confirmed_Orders]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Confirmed_Orders](
	[ID_confirm_order] [int] NOT NULL,
	[account_id] [int] NULL,
	[borrow_book_id] [int] NULL,
	[check_return] [nvarchar](50) NULL,
	[date_return] [datetime] NULL,
 CONSTRAINT [PK_Confirmed_Orders] PRIMARY KEY CLUSTERED 
(
	[ID_confirm_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[ID_publisher] [int] NOT NULL,
	[publisher_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[ID_publisher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleType]    Script Date: 9/23/2022 9:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleType](
	[role_ID] [int] NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoleType] PRIMARY KEY CLUSTERED 
(
	[role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([account_ID], [role_ID], [fullname], [phone], [citizen_identity_card], [address], [mail], [USERNAME], [PASSWORD], [salary]) VALUES (1, 0, N'Trần Văn Tới', 376564523, 385827945, N'Bac Lieu', N'poqmmpoq@gmail.com', N'petoicute', N'000000', NULL)
INSERT [dbo].[Accounts] ([account_ID], [role_ID], [fullname], [phone], [citizen_identity_card], [address], [mail], [USERNAME], [PASSWORD], [salary]) VALUES (2, 1, N'Trần Văn Tới', 376564523, 385827945, N'Bac Lieu', N'poqmmpoq@gmail.com', N'petoicute', N'111111', 1000)
GO
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (1, N'Robert M. Pirsig')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (2, N'Richard Adams')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (3, N'Bill Bryson')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (4, N'Viktor E. Frankl')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (5, N'Joe Haldeman')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (6, N'Herman Melville')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (7, N'Ernest Hemingway')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (8, N'Kafka on the Shore')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (9, N'Antoine de Saint-Exupéry')
INSERT [dbo].[Author] ([ID_author], [author_name]) VALUES (10, N'Cormac McCarthy')
GO
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (1, 1, 1, N'https://images-na.ssl-images-amazon.com/images/I/71tZgyVVbfL.jpg', N'Zen and the Art of Motorcycle Maintenance', N'English', N'Philosophical fiction, Autobiographical novel', 2, 1974, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (2, 2, 2, N'https://flxt.tmsimg.com/assets/p7221_p_v11_ac.jpg', N'Watership Down', N'English', N'Fantasy', 2, 1972, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (3, 3, 3, N'https://salt.tikicdn.com/cache/400x400/ts/product/b6/24/26/91f69b0a7f8abd68084e5c14f69376c1.jpg', N'A Short History of Nearly Everything', N'English', N'Non-fiction', 2, 2003, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (4, 4, 4, N'https://images-na.ssl-images-amazon.com/images/I/819Pl1nP0ZL.jpg', N'Man''s Search for Meaning', N'German', N'Psychology', 2, 1946, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (5, 5, 5, N'https://cdn-amz.woka.io/images/I/A1Zipt0G2kL.jpg', N'The Forever War', N'English', N'Military science fiction', 4, 1974, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (6, 6, 6, N'https://m.media-amazon.com/images/I/51uZAazEVuL.jpg', N'Bartleby The Scrivener: A Story of Wall-Street', N'English', N'Short story', 1, 1853, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (7, 7, 7, N'https://images-na.ssl-images-amazon.com/images/I/81VzVpbAACL.jpg', N'For Whom the Bell Tolls', N'English', N'War novel', 3, 1940, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (8, 8, 8, N'https://bizweb.dktcdn.net/100/326/228/products/kafkaontheshoreharukimurakami6.jpg?v=1546509906120', N'Kafka on the Shore', N'Japanese', N'Magical realism', 3, 2002, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (9, 9, 9, N'https://cdn-amz.woka.io/images/I/71OZY035QKL.jpg', N'The Little Prince', N'French', N'Novella', 2, 1943, 1)
INSERT [dbo].[Book] ([ID_book], [ID_publisher], [ID_author], [img], [book_name], [language], [type], [amount], [publishing_year], [avaiable]) VALUES (10, 10, 10, N'https://images-na.ssl-images-amazon.com/images/I/71IJ1HC2a3L.jpg', N'The Road', N'English', N'Post-apocalyptic fiction
  Tragedy', 4, 2006, 1)
GO
INSERT [dbo].[Borrow_Orders] ([ID_borrow_order], [ID_book], [ID_account], [status], [date_create]) VALUES (1, 1, 1, N'0', NULL)
INSERT [dbo].[Borrow_Orders] ([ID_borrow_order], [ID_book], [ID_account], [status], [date_create]) VALUES (2, 2, 1, N'1', NULL)
GO
INSERT [dbo].[Confirmed_Orders] ([ID_confirm_order], [account_id], [borrow_book_id], [check_return], [date_return]) VALUES (1, 1, 1, N'1', NULL)
GO
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (1, N'William Morrow and Company')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (2, N'Rex Collings')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (3, N'Doubleday')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (4, N'Verlag für Jugend und Volk')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (5, N'St. Martin''''''''s Press')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (6, N'Putnam''''''''s Magazine')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (7, N'Charles Scribner''''''''s Sons')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (8, N'Magical realism'''', N''''Shinchosha')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (9, N'Reynal & Hitchcock')
INSERT [dbo].[Publisher] ([ID_publisher], [publisher_name]) VALUES (10, N'Alfred A. Knopf')
GO
INSERT [dbo].[RoleType] ([role_ID], [role_name]) VALUES (0, N'User')
INSERT [dbo].[RoleType] ([role_ID], [role_name]) VALUES (1, N'Librarian')
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_avaiable]  DEFAULT ((1)) FOR [avaiable]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_RoleType] FOREIGN KEY([role_ID])
REFERENCES [dbo].[RoleType] ([role_ID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_RoleType]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([ID_author])
REFERENCES [dbo].[Author] ([ID_author])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([ID_publisher])
REFERENCES [dbo].[Publisher] ([ID_publisher])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Borrow_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Orders_Accounts] FOREIGN KEY([ID_account])
REFERENCES [dbo].[Accounts] ([account_ID])
GO
ALTER TABLE [dbo].[Borrow_Orders] CHECK CONSTRAINT [FK_Borrow_Orders_Accounts]
GO
ALTER TABLE [dbo].[Borrow_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Orders_Book] FOREIGN KEY([ID_book])
REFERENCES [dbo].[Book] ([ID_book])
GO
ALTER TABLE [dbo].[Borrow_Orders] CHECK CONSTRAINT [FK_Borrow_Orders_Book]
GO
ALTER TABLE [dbo].[Confirmed_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Confirmed_Orders_Accounts] FOREIGN KEY([account_id])
REFERENCES [dbo].[Accounts] ([account_ID])
GO
ALTER TABLE [dbo].[Confirmed_Orders] CHECK CONSTRAINT [FK_Confirmed_Orders_Accounts]
GO
ALTER TABLE [dbo].[Confirmed_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Confirmed_Orders_Borrow_Orders] FOREIGN KEY([borrow_book_id])
REFERENCES [dbo].[Borrow_Orders] ([ID_borrow_order])
GO
ALTER TABLE [dbo].[Confirmed_Orders] CHECK CONSTRAINT [FK_Confirmed_Orders_Borrow_Orders]
GO
USE [master]
GO
ALTER DATABASE [SWP301] SET  READ_WRITE 
GO
