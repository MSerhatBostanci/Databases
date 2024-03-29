USE [HastahaneDB]
GO
/****** Object:  Table [dbo].[BireyselGelirler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BireyselGelirler](
	[BireyselGelirlerID] [int] IDENTITY(1,1) NOT NULL,
	[TC] [nvarchar](11) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[Kod] [nvarchar](50) NOT NULL,
	[GelirID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_BireyselGelirler] PRIMARY KEY CLUSTERED 
(
	[BireyselGelirlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BireyselGiderler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BireyselGiderler](
	[BireyselGiderlerID] [int] IDENTITY(1,1) NOT NULL,
	[TC] [nvarchar](11) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[BireyselGiderKod] [nvarchar](20) NOT NULL,
	[GiderID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_BireyselGiderler] PRIMARY KEY CLUSTERED 
(
	[BireyselGiderlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branslar]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branslar](
	[BranslarID] [int] IDENTITY(1,1) NOT NULL,
	[BransAdi] [nvarchar](100) NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Branslar] PRIMARY KEY CLUSTERED 
(
	[BranslarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoktorBilgileri]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoktorBilgileri](
	[DoktorBilgileriID] [int] IDENTITY(1,1) NOT NULL,
	[DoktorID] [int] NOT NULL,
	[GirisTarihi] [date] NOT NULL,
	[CikisTarihi] [date] NULL,
	[AktifMi] [bit] NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_DoktorBilgileri] PRIMARY KEY CLUSTERED 
(
	[DoktorBilgileriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doktorlar]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktorlar](
	[DoktorlarID] [int] IDENTITY(1,1) NOT NULL,
	[DoktorTC] [nvarchar](11) NULL,
	[DoktorAdi] [nvarchar](50) NULL,
	[DoktorSoyadi] [nvarchar](50) NULL,
	[DoktorCinsiyet] [nvarchar](10) NULL,
	[DoktorTelefon] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
	[MedeniHali] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[Resim] [image] NULL,
	[KanGrubuID] [int] NULL,
	[DoktorUnvanID] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[DoktorlarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoktorUnvanlari]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoktorUnvanlari](
	[DoktorUnvanlariID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAdi] [nvarchar](50) NOT NULL,
	[BransID] [int] NOT NULL,
	[DiplomaNumarasi] [nvarchar](30) NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_DoktorUnvanlari] PRIMARY KEY CLUSTERED 
(
	[DoktorUnvanlariID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gelirler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gelirler](
	[GelirlerID] [int] IDENTITY(1,1) NOT NULL,
	[GelirAdi] [nvarchar](50) NOT NULL,
	[GelirMiktari] [decimal](18, 2) NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Gelirler_1] PRIMARY KEY CLUSTERED 
(
	[GelirlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giderler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giderler](
	[GiderlerID] [int] IDENTITY(1,1) NOT NULL,
	[GiderAdi] [nvarchar](100) NOT NULL,
	[GiderMiktari] [decimal](18, 2) NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Giderler] PRIMARY KEY CLUSTERED 
(
	[GiderlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hastalar]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalar](
	[HastalarID] [int] IDENTITY(1,1) NOT NULL,
	[HastaTC] [nvarchar](11) NULL,
	[HastaAdi] [nvarchar](50) NULL,
	[HastaSoyadi] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[MedeniHali] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[KanGrubuID] [int] NULL,
	[HastaKilo] [decimal](18, 2) NULL,
	[HastaBoy] [decimal](18, 2) NULL,
	[Adres] [nvarchar](max) NULL,
	[Acıklama] [nvarchar](max) NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Hastalar_1] PRIMARY KEY CLUSTERED 
(
	[HastalarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iller]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[illerID] [int] NOT NULL,
	[ilAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[illerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KanGruplari]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanGruplari](
	[KanGruplariID] [int] IDENTITY(1,1) NOT NULL,
	[KanGrubuAdi] [nvarchar](10) NOT NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_KanGruplari] PRIMARY KEY CLUSTERED 
(
	[KanGruplariID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Klinikler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klinikler](
	[KliniklerID] [int] IDENTITY(1,1) NOT NULL,
	[KlinikAdi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Klinikler] PRIMARY KEY CLUSTERED 
(
	[KliniklerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullanicilarID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciTC] [nvarchar](11) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[KullaniciSifre] [nvarchar](50) NOT NULL,
	[YetkiID] [int] NOT NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullanicilarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KurumsalGelirler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KurumsalGelirler](
	[KurumsalGelirlerID] [int] IDENTITY(1,1) NOT NULL,
	[KurumAdi] [nvarchar](100) NOT NULL,
	[KurumAdres] [nvarchar](max) NOT NULL,
	[Kod] [nvarchar](50) NOT NULL,
	[YetkiliTC] [nvarchar](11) NOT NULL,
	[YetkiliAdi] [nvarchar](50) NOT NULL,
	[YetkiliSoyadi] [nvarchar](50) NOT NULL,
	[GelirID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_KurumsalGelirler] PRIMARY KEY CLUSTERED 
(
	[KurumsalGelirlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KurumsalGiderler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KurumsalGiderler](
	[KurumsalGiderlerID] [int] IDENTITY(1,1) NOT NULL,
	[KurumAdi] [nvarchar](100) NOT NULL,
	[KurumAdres] [nvarchar](max) NOT NULL,
	[YetkiliTC] [nvarchar](11) NOT NULL,
	[YetkiliAdi] [nvarchar](50) NOT NULL,
	[YetkiliSoyadi] [nvarchar](50) NOT NULL,
	[KurumGiderKod] [nvarchar](50) NOT NULL,
	[GiderID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_KurumsalGiderler] PRIMARY KEY CLUSTERED 
(
	[KurumsalGiderlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonellerID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelTC] [nvarchar](11) NULL,
	[PersonelAdi] [nvarchar](50) NULL,
	[PersonelSoyadi] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Maas] [decimal](18, 2) NULL,
	[Telefon] [nvarchar](20) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[HesapNumarasi] [nvarchar](50) NULL,
	[MedeniHali] [nvarchar](5) NULL,
	[Resim] [image] NULL,
	[KanGrubuID] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[PersonellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Randevular]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevular](
	[RandevularID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[KlinikID] [int] NOT NULL,
	[DoktorID] [int] NOT NULL,
	[RandevuTarihi] [date] NOT NULL,
	[RandevuSaati] [nvarchar](10) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[KullaniciID] [int] NOT NULL,
 CONSTRAINT [PK_Randevular] PRIMARY KEY CLUSTERED 
(
	[RandevularID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yetkiler]    Script Date: 25.12.2018 13:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetkiler](
	[YetkilerID] [int] IDENTITY(1,1) NOT NULL,
	[YetkiAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yetkiler] PRIMARY KEY CLUSTERED 
(
	[YetkilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BireyselGelirler] ON 

INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (1, N'1452', N'Halit', N'Ziya', N'89000', 10, 9)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (2, N'1234', N'Ayşe', N'Kaplan', N'500', 1, 8)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (4, N'2589', N'Ömer', N'Faruk', N'14222', 11, 9)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (5, N'7894', N'Hatice', N'Sürümlü', N'200', 3, 8)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (6, N'2006', N'Samet', N'Oruç', N'4080', 9, 9)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (7, N'4565', N'Cengiz', N'Kurtoğlu', N'9000', 4, 8)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (8, N'9631', N'Orhan', N'Gencebay', N'8521', 5, 8)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (9, N'7480', N'Hayati', N'Olgun', N'1088', 8, 9)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (10, N'1005', N'Mahmut', N'Tuncer', N'1458', 7, 9)
INSERT [dbo].[BireyselGelirler] ([BireyselGelirlerID], [TC], [Adi], [Soyadi], [Kod], [GelirID], [KullaniciID]) VALUES (11, N'7456', N'Ahmet', N'Kural', N'8547', 6, 8)
SET IDENTITY_INSERT [dbo].[BireyselGelirler] OFF
SET IDENTITY_INSERT [dbo].[BireyselGiderler] ON 

INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (1, N'123124', N'Cansu', N'Süngür', N'1', 1, 12)
INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (2, N'624654654', N'Boran', N'Kolaçan', N'12', 2, 12)
INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (3, N'6186654', N'Esma', N'Çelik', N'3', 1, 12)
INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (4, N'6186654', N'Sare', N'Eroz', N'4', 12, 12)
INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (5, N'6186654', N'Ersin', N'Yildirim', N'2', 3, 12)
INSERT [dbo].[BireyselGiderler] ([BireyselGiderlerID], [TC], [Adi], [Soyadi], [BireyselGiderKod], [GiderID], [KullaniciID]) VALUES (6, N'6186654', N'Ekin', N'Türkmen', N'5', 3, 12)
SET IDENTITY_INSERT [dbo].[BireyselGiderler] OFF
SET IDENTITY_INSERT [dbo].[Branslar] ON 

INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (1, N'Dahiliye', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (2, N'Göz', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (3, N'Kulak Burun Boğaz', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (4, N'intaniye', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (5, N'Cildiye', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (6, N'Kardiyoloji', 1)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (7, N'Pedagoji', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (8, N'Böbrek Nakil', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (9, N'Jinekoloji', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (10, N'Kalp Cerrahi', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (11, N'Tüp Bebek', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (12, N'Fizik Tedavi', 2)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (13, N'Diyetisyen', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (15, N'Ruh ve Sinir Hastalıkları', 6)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (16, N'Diyabet', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (17, N'Diş', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (18, N'Psikiyatri', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (19, N'Çocuk', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (20, N'Kadın Doğum', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (21, N'Üroloji', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (22, N'Genel Cerrahi', 5)
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi], [KullaniciID]) VALUES (23, N'Gastroentoloji', 5)
SET IDENTITY_INSERT [dbo].[Branslar] OFF
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] ON 

INSERT [dbo].[DoktorBilgileri] ([DoktorBilgileriID], [DoktorID], [GirisTarihi], [CikisTarihi], [AktifMi], [KullaniciID]) VALUES (1, 1, CAST(N'2018-12-24' AS Date), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[DoktorBilgileri] OFF
SET IDENTITY_INSERT [dbo].[Doktorlar] ON 

INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (1, N'101', N'Malik', N'Şarcı', N'Erkek', N'05444443322', N'malikdoktor@gmail.com', N'Bekar', CAST(N'1989-01-01' AS Date), 49, 0x, 5, 3, N'İstanbul Kadıköy', 1)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (3, N'2303', N'Lale', N'Güzel', N'Kadın', N'04444444', N'yonca2309@gmail.com', N'Bekar', CAST(N'1994-03-09' AS Date), 2, NULL, 6, 4, N'Üsküdar', 10)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (4, N'2453', N'Sagopa', N'Kajmer', N'Erkek', N'05555555', N'efsorapcicom.tr', N'Dul', CAST(N'1996-10-07' AS Date), 36, NULL, 5, 1, N'Kars Vegas', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (5, N'1455', N'Kazım', N'Karabekir', N'Erkek', N'03655', N'kazımkarabekir@hotmail.com.tr', N'Evli', CAST(N'1988-11-08' AS Date), 35, NULL, 3, 12, N'Muş', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (6, N'1234', N'Nejet', N'Ertaş', N'Erkek', N'03651655', N'nesetertas@hotmail.com', N'Evli', CAST(N'1968-08-07' AS Date), 18, NULL, 5, 15, N'Damar', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (7, N'3214', N'Müslüm', N'Gürses', N'Erkek', N'05165874', N'jilet_yarasi@hotmail.com', N'Evli', CAST(N'1974-09-06' AS Date), 22, NULL, 2, 8, N'Felek', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (8, N'4321', N'ibrahim', N'tatlıses', N'Erkek', N'05165874', N'iboshow@hotmail.com', N'Evli', CAST(N'1978-10-05' AS Date), 44, NULL, 1, 10, N'Mars', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (9, N'2452', N'Musa', N'Eroğlu', N'Erkek', N'05465842', N'musa_baba@hotmail.com', N'Evli', CAST(N'1962-11-04' AS Date), 34, NULL, 4, 3, N'Keder', 13)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (10, N'4778', N'Yıldız', N'Tilbe', N'Kadın', N'546578', N'efsoyildiz@hotmail.com', N'Dul', CAST(N'1988-07-07' AS Date), 31, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[Doktorlar] ([DoktorlarID], [DoktorTC], [DoktorAdi], [DoktorSoyadi], [DoktorCinsiyet], [DoktorTelefon], [Email], [MedeniHali], [DogumTarihi], [DogumYeriID], [Resim], [KanGrubuID], [DoktorUnvanID], [Adres], [KullaniciID]) VALUES (11, N'5544', N'Şevket', N'Yalnız', N'Erkek', N'05320456122', NULL, NULL, NULL, 65, NULL, 5, 19, NULL, 3)
SET IDENTITY_INSERT [dbo].[Doktorlar] OFF
SET IDENTITY_INSERT [dbo].[DoktorUnvanlari] ON 

INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (1, N'Prof', 1, N'123', 1)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (2, N'doçent', 2, N'124', 1)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (3, N'doçent', 1, N'125', 1)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (4, N'yrd doçent', 2, N'126', 1)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (5, N'Prof', 7, N'127', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (6, N'Arş. Gör.', 6, N'129', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (7, N'Yrd Doçent', 12, N'128', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (8, N'Doç.Dr', 3, N'130', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (9, N'Prof', 17, N'131', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (10, N'Uzman Dr.', 18, N'132', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (11, N'Doç', 19, N'133', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (12, N'Yrd.Doçent', 20, N'134', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (13, N'Uzman Dr.', 21, N'135', 18)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (14, N'Uzman.Dr', 8, N'136', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (15, N'Ordinaryus ', 9, N'137', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (16, N'Pratisyen Doktor', 10, N'138', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (17, N'Operatör Doktor', 2, N'139', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (18, N'Operatör Doktor ', 1, N'140', 19)
INSERT [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID], [UnvanAdi], [BransID], [DiplomaNumarasi], [KullaniciID]) VALUES (19, N'yrd Doç', 17, N'1245', 3)
SET IDENTITY_INSERT [dbo].[DoktorUnvanlari] OFF
SET IDENTITY_INSERT [dbo].[Gelirler] ON 

INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (1, N'SGK katılım payı gelirleri', CAST(6000000000.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (3, N'Sağlık Hizmeti', CAST(78529963.66 AS Decimal(18, 2)), 9)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (4, N'Ayaktan tedavi ücreti gelirleri', CAST(300000.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (6, N'Yatak gelirleri', CAST(90000000.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (7, N'Kadın doğum gelirleri', CAST(10000000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (8, N'Eczane', CAST(15653.66 AS Decimal(18, 2)), 8)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (9, N'Ameliyat gelirleri', CAST(5000000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (10, N'Laboratuar gelirleri', CAST(10000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Gelirler] ([GelirlerID], [GelirAdi], [GelirMiktari], [KullaniciID]) VALUES (11, N'Diğer Gelirler', CAST(78589.85 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Gelirler] OFF
SET IDENTITY_INSERT [dbo].[Giderler] ON 

INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (1, N'Temizlik Malzemesi', CAST(1060.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (2, N'A4 kagıdı', CAST(2500.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (3, N'Elektik Faturası', CAST(12000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (4, N'Su Faturası', CAST(9000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (5, N'Doğalgaz Faturası', CAST(39000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (6, N'Neşter koli x 30', CAST(900.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (7, N'Ameliyat eldiveni x 100', CAST(500.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (8, N'Çevre Düzenlemesi', CAST(2000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (9, N'Tesisatçı ücreti', CAST(400.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (10, N'Hasta Yatağı', CAST(400.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (11, N'Lamel x500', CAST(675.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (12, N'Aylık Yazıcı Bakımı', CAST(1000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (13, N'Aylık Bilgisayar Bakımı', CAST(1000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (14, N'Hasta Tabldot seti x50', CAST(250.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (15, N'Internet Ucreti', CAST(9000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (16, N'Serum x400', CAST(5000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (17, N'Şırınga x 400', CAST(2000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (18, N'Morfin 100cl x 400', CAST(10000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (19, N'Doktor Randevu Panelix50', CAST(7500.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (20, N'Aylık Ambulans Araç Bakımları', CAST(20000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (21, N'Tampon pamukx500 koli', CAST(15000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (22, N'Aylık Ambulans Benzin Giderleri', CAST(40000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (23, N'Gazlı Bez x 1000', CAST(1000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (24, N'Stateskopx50', CAST(2450.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Giderler] ([GiderlerID], [GiderAdi], [GiderMiktari], [KullaniciID]) VALUES (25, N'Serum Askısı(4ayaklı) x200', CAST(20000.00 AS Decimal(18, 2)), 12)
SET IDENTITY_INSERT [dbo].[Giderler] OFF
SET IDENTITY_INSERT [dbo].[Hastalar] ON 

INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (1, N'1001', N'Hamit', N'Dinç', N'0539', N'Erkek', CAST(N'1992-09-01' AS Date), 49, N'Bekar', N'hamitdnc@gmail.com', 1, CAST(85.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'İstanbul Ümraniye', N'Ülser', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (2, N'2222', N'Gizem', N'Savaş', N'5653215698', N'Kadın', CAST(N'1990-05-09' AS Date), 34, N'Bekar', N'gizz@gmail.com', 2, CAST(52.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), N'İstanbul Şişli', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (3, N'3001', N'Serhat', N'Baş', N'5541234899', N'Erkek', CAST(N'1989-01-02' AS Date), 13, N'Bekar', N'serhatbas@gmail.com', 5, CAST(70.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'İstanbul Kartal', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (4, N'3002', N'Kamil', N'Sönmez', N'532334899', N'Erkek', CAST(N'1979-01-07' AS Date), 35, N'Evli', N'kamil01@gmail.com', 3, CAST(75.00 AS Decimal(18, 2)), CAST(177.00 AS Decimal(18, 2)), N'İstanbul Pendik', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (5, N'6852', N'Haydar', N'Yılmaz', N'05853218968', N'Erkek', CAST(N'1970-10-10' AS Date), 60, N'Evli', N'hayhay@hotmail.com', 1, CAST(90.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), N'Ankara Kızılay', N'Akne oluşumu', 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (6, N'3003', N'Ömer', N'Sevinç', N'548237899', N'Erkek', CAST(N'1983-11-25' AS Date), 66, N'Evli', N'omersev@gmail.com', 2, CAST(72.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'Ankara Keçiören', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (7, N'3004', N'Sevim', N'Yıldız', N'5541234899', N'Kadın', CAST(N'1985-05-12' AS Date), 63, N'Bekar', N'sevyildiz@gmail.com', 4, CAST(55.00 AS Decimal(18, 2)), CAST(163.00 AS Decimal(18, 2)), N'İzmir Urla', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (8, N'2002', N'Demir', N'Saylı', N'5562315698', N'Erkek', CAST(N'1996-10-06' AS Date), 58, N'Bekar', N'saylıdemir@gmail.com', 4, CAST(75.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'İstanbul Bakırköy', N'ishal', 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (9, N'3005', N'Bircan', N'Sönmez', N'5351234892', N'Erkek', CAST(N'1992-07-23' AS Date), 71, N'Bekar', N'bircan123@gmail.com', 7, CAST(68.00 AS Decimal(18, 2)), CAST(173.00 AS Decimal(18, 2)), N'Manisa Salihli', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (10, N'9886', N'Ayla', N'Ak', N'5933211985', N'Kadın', CAST(N'1983-01-07' AS Date), 10, N'Bekar', N'ay83@hotmail.com', 5, CAST(62.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)), N'Bursa Merkez', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (11, N'1002', N'Bilge', N'Manner', N'0538', N'Kadın', CAST(N'1995-01-10' AS Date), 49, N'Bekar', N'bilge@gmail.com', 1, CAST(85.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'İstanbul/Fikirtepe', N'Tiroid', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (12, N'3006', N'Esra', N'Yılmaz', N'5541774889', N'Kadın', CAST(N'1988-08-18' AS Date), 25, N'Bekar', N'esyilmaz@gmail.com', 1, CAST(58.00 AS Decimal(18, 2)), CAST(163.00 AS Decimal(18, 2)), N'İstanbul Kadıköy', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (13, N'1004', N'Ahmet', N'Mera', N'0540', N'Erkek', CAST(N'2001-01-03' AS Date), 41, N'Evli', N'ahmet@gmail.com', 1, CAST(100.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'İstanbul/Ümraniye', N'Kalp Hastası', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (14, N'1006', N'Murat', N'Kalpak', N'0541', N'Erkek', CAST(N'2015-09-01' AS Date), 23, N'Bekar', N'murat@windowslive.com', 1, CAST(15.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'İstanbul/Üsküdar', N'Grip', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (15, N'1008', N'Sevda', N'Meriç', N'0542', N'Kadın', CAST(N'1995-09-07' AS Date), 55, N'Evli', N'sevad@gmail.com', 1, CAST(100.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'İstanbul/Ümraniye', N'Nezle', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (16, N'1010', N'Melda', N'Onur', N'0543', N'Kadın', CAST(N'1975-01-01' AS Date), 24, N'Evli', N'melda@gmail.com', 1, CAST(112.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'İstanbul/Kağıthane', N'Mental', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (17, N'2998', N'Sadık', N'Tektel', N'5776359866', N'Erkek', CAST(N'1965-02-04' AS Date), 30, N'Evli', N'sadiksadik@gmail.com', 7, CAST(95.00 AS Decimal(18, 2)), CAST(172.00 AS Decimal(18, 2)), N'Manisa Kırkağaç', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (18, N'3007', N'Gamze', N'Sonar', N'5324572231', N'Kadın', CAST(N'1981-09-27' AS Date), 13, N'Evli', N'gamzesonar@gmail.com', 8, CAST(62.00 AS Decimal(18, 2)), CAST(168.00 AS Decimal(18, 2)), N'İstanbul Beykoz', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (19, N'9143', N'Polat', N'Tellioğlu', N'5753215118', N'Erkek', CAST(N'1988-03-03' AS Date), 34, N'Bekar', N'pol@hotmail.com', 1, CAST(88.00 AS Decimal(18, 2)), CAST(184.00 AS Decimal(18, 2)), N'İstanbul Fatih', N'Kaşıntı', 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (20, N'3008', N'Gökhan', N'Kaya', N'5315648914', N'Erkek', CAST(N'1984-03-13' AS Date), 13, N'Bekar', N'gokhankaya@gmail.com', 1, CAST(77.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), N'Tekirdağ Çorlu', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (21, N'3009', N'Doğan', N'Kartal', N'5551231903', N'Erkek', CAST(N'1987-11-20' AS Date), 80, N'Bekar', N'dogankartal@gmail.com', 6, CAST(75.00 AS Decimal(18, 2)), CAST(182.00 AS Decimal(18, 2)), N'İstanbul Beşiktaş', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (22, N'5015', N'Seda', N'polat', N'5485203963', N'Kadın', CAST(N'1993-08-09' AS Date), NULL, N'Bekar', N'seda.polat@gmail.com', 2, CAST(53.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)), N'İstanbul Kartal', N'Doku ezilmesi', 9)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (23, N'4501', N'Damla', N'Güzel', N'5333265684', N'Kadın', CAST(N'1998-12-21' AS Date), 65, N'Bekar', N'damlaguzel@hotmail.com', 3, CAST(78.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'İstanbul Ortaköy', N'Göz ağrısı', 10)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (24, N'5016', N'Ertan', N'Çırpan', N'5425896328', N'Erkek', CAST(N'1988-05-08' AS Date), 45, N'Evli', N'ertan_cirpan@gmail.com', 6, CAST(89.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'Ankara ', N'Travma', 9)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (25, N'5026', N'Onur', N'Lale', N'5126354798', N'Erkek', CAST(N'1980-04-11' AS Date), 34, N'Bekar', N'on@gmail.com', NULL, CAST(89.00 AS Decimal(18, 2)), CAST(168.00 AS Decimal(18, 2)), N'Ağrı', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (26, N'5000', N'Vildan', N'Bahadır', N'5333333333', N'Kadın', CAST(N'2010-12-18' AS Date), 52, N'Bekar', NULL, 3, CAST(20.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)), N'İstanbul Kartal', N'Grip', 8)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (27, N'3789', N'Aslı', N'Duman', N'0231564518', N'kadın', CAST(N'1995-01-01' AS Date), 58, N'bekar', N'asaldmn@horktmkl', 5, CAST(55.00 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)), N'istanbul Eyüp', N'', 5)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (28, N'5001', N'Sude', N'Öz', N'5436879546', N'Kadın', CAST(N'1994-01-02' AS Date), 15, NULL, N'uzsude@gmail.com', 5, CAST(60.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), N'Ankara ', NULL, 8)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (30, N'5027', N'Sedef', N'Pelister', N'5785236578', N'Kadın', CAST(N'1993-08-08' AS Date), 35, N'Bekar', N'boyoz@hotmail.com', 4, NULL, NULL, N'İzmir Bornova', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (31, N'4502', N'Ahmet', N'Ulu', N'5666123', N'Erkek', CAST(N'2000-10-25' AS Date), 34, N'Bekar', N'ahmetulu@gmail.com', 2, CAST(80.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), N'İstanbul Pendik', N'Baş ağrısı', 10)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (32, N'5002', N'Emine', N'Kafa', N'9874563215', N'Kadın', CAST(N'1975-08-03' AS Date), 1, N'Evli', NULL, 6, CAST(75.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'Ordu Ünye', N'Baş Ağrısı', 8)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (33, N'3568', N'kerim', N'Tomer', N'15737854563', N'erkek', CAST(N'2001-01-01' AS Date), 55, N'bekar', N'kernbmnj@hot', 4, CAST(30.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), N'istanbul kağıthane', N'', 5)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (34, N'2019', N'Tuana', N'Tuzlu', N'5435532343', N'Erkek', NULL, 34, N'Bekar', N'tuana_hizli_ofkeli_34@gmail.com', 2, CAST(78.00 AS Decimal(18, 2)), CAST(183.00 AS Decimal(18, 2)), N'istanbul Pendik', N'Bilek Burkulma', 20)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (35, N'5011', N'Teslime', N'Açık', N'5468518856', N'Kadın', CAST(N'1958-11-25' AS Date), 6, N'Evli', N'teslime.teslim@gmail.com', 4, CAST(69.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), N'Malatya', N'Diz Ağrısı', 9)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (36, N'5028', N'Kazım', N'Kaz', N'5146215698', N'Erkek', CAST(N'1999-12-17' AS Date), 16, N'Bekar', N'eses@gmail.com', 8, CAST(75.00 AS Decimal(18, 2)), CAST(181.00 AS Decimal(18, 2)), NULL, NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (38, N'3036', N'sevda', N'alfa', N'05321354846', N'kadın', CAST(N'1995-05-04' AS Date), 30, N'bekar', N'sevda@hot.com', 5, CAST(45.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), N'istanbul Esenyurt', N'', 5)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (39, N'2503', N'Efecan', N'Çağlayan', NULL, N'Erkek', CAST(N'1993-12-08' AS Date), 58, N'Bekar', N'eeefecglyn@gmail.com', 3, CAST(69.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), N'Goztepe İstanbul', N'Basur', 12)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (40, N'4444', N'Müslüm', N'Baboşş', N'NULL', N'Erkek', CAST(N'1953-07-05' AS Date), 1, N'Evli', N'baba@gmail.com', 3, CAST(75.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), N'İstanbul Beyoğlu', N'NULL', 19)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (41, N'4503', N'Miray', N'Sönmez', N'6987412366', N'Kadın', CAST(N'1992-09-25' AS Date), 35, N'Evli', N'miraysonmez@hotmail.com', 5, CAST(65.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'İstanbul ', N'Diş ağrısı', 10)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (43, N'5017', N'Şakir', N'Sakar', N'5339654785', N'Erkek', CAST(N'1978-10-25' AS Date), 17, N'Bekar', N'sakar_sakir@gmail.com', 1, CAST(98.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'Çanakkale', N'Boyun Fıtığı', 9)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (44, N'3545', N'Mehmet', N'Topal', N'5553535353', N'Erkek', CAST(N'1983-01-02' AS Date), 34, NULL, N'topalmehmet@gmail.com', 5, CAST(83.00 AS Decimal(18, 2)), CAST(189.00 AS Decimal(18, 2)), N'Samandıra Can Bartu Tesisleri', N'Sürekli top eziyor', 22)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (45, N'3745', N'mete', N'yağız', N'8676512348512', N'erkek', CAST(N'2010-06-03' AS Date), 30, N'bekar', N'metoşş@hot.com', 5, CAST(30.00 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)), N'sarıyer', N'', 5)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (46, N'2043', N'Selami', N'Şahin', N'5445532343', N'Erkek', CAST(N'1967-12-12' AS Date), 61, N'Evli', N'sesiguzel61@gmail.com', 3, CAST(113.00 AS Decimal(18, 2)), CAST(183.00 AS Decimal(18, 2)), N'istanbul Etiler', N'Ses Kısılması', 20)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (47, N'2112', N'Birkan', N'Günbey', NULL, N'Erkek', CAST(N'1995-06-28' AS Date), 28, N'Bekar', N'brkngnby@gmail.com', 2, CAST(85.00 AS Decimal(18, 2)), CAST(172.00 AS Decimal(18, 2)), N'Maltepe İstanbul', N'Kas Agrısı', 12)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (48, N'1080', N'Zeynep', N'Genç', N'5344911121', N'Kadın', CAST(N'1991-04-08' AS Date), 5, N'Bekar', N'zeynepgenc@gmail.com', 1, CAST(1.80 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)), N'İstanbul Bakırköy', N'NULL', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (49, N'1180', N'Zehra', N'Uysal', N'5344666621', N'Kadın', CAST(N'1992-01-01' AS Date), 4, N'Bekar', N'zehra@gmail.com', 2, CAST(1.72 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), N'İstanbul Küçükçekmece', N'NULL', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (50, N'1280', N'Kübra', N'Yeni', N'5344955521', N'Kadın', CAST(N'1994-08-06' AS Date), 12, N'Bekar', N'Kübra@gmail.com', 3, CAST(1.50 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), N'İstanbul Ümraniye', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (51, N'1380', N'Berk', N'Güven', N'5344944421', N'Erkek', CAST(N'1996-07-07' AS Date), 15, N'Dul', N'berk@gmail.com', 4, CAST(1.70 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)), N'İstanbul Pendik', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (52, N'1480', N'Alparslan', N'Kaya', N'5344933321', N'Erkek', CAST(N'1994-05-05' AS Date), 25, N'Evli', N'alparslan@gmail.com', 2, CAST(1.95 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), N'İstanbul Merter', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (53, N'5029', N'Mümtaz', N'Karadeniz', N'5802346879', N'Erkek', CAST(N'1966-06-10' AS Date), 58, N'Evli', NULL, 3, CAST(92.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'İstanbul Bakırköy', N'Soğuk Algınlığı', 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (54, N'5021', N'Uygar', N'Mert', N'0521', NULL, CAST(N'1921-01-10' AS Date), 12, N'Bekar', N'uygar@gmail.com', 1, CAST(50.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), N'Hatay/İskenderun', N'Paratiroid', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (55, N'5022', N'Ali', N'Girift', N'0522', NULL, CAST(N'1922-01-03' AS Date), 11, N'Evli', N'ali1234@gmail.com', 2, CAST(125.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'Hatay/Kırıkhan', N'Tüberküloz', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (56, N'5023', N'Mahmut', N'Kalın', N'0522', NULL, CAST(N'1923-01-01' AS Date), 36, N'Bekar', N'mahmut@windowslive.com', 5, CAST(15.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'Hatay/Altınözü', N'Hiv Pozitif', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (57, N'5024', N'Selma', N'elmas', N'0523', NULL, CAST(N'1924-08-07' AS Date), 23, N'Evli', N'selma@gmail.com', 7, CAST(100.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'Diyarbakır/75 Yol', N'Kanser', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (58, N'5025', N'Merih', N'Ak', N'0524', NULL, CAST(N'1925-01-01' AS Date), 78, N'Evli', N'merih@gmail.com', 8, CAST(112.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'Diyarbakır/Balıkçılarbaşı', N'Siroz', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (59, N'1080', N'Zeynep', N'Genç', N'5344911121', N'Kadın', CAST(N'1991-04-08' AS Date), 5, N'Bekar', N'zeynepgenc@gmail.com', 1, CAST(1.80 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)), N'İstanbul Bakırköy', N'NULL', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (60, N'1180', N'Zehra', N'Uysal', N'5344911121', N'Kadın', CAST(N'1992-01-01' AS Date), 4, N'Bekar', N'zehra@gmail.com', 2, CAST(1.72 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), N'İstanbul Küçükçekmece', N'NULL', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (61, N'1280', N'Kübra', N'Yeni', N'5344911121', N'Kadın', CAST(N'1994-08-06' AS Date), 12, N'Bekar', N'Kübra@gmail.com', 3, CAST(1.50 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), N'İstanbul Ümraniye', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (62, N'1380', N'Berk', N'Güven', N'5344911121', N'Erkek', CAST(N'1996-07-07' AS Date), 15, N'Dul', N'berk@gmail.com', 4, CAST(1.70 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)), N'İstanbul Pendik', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (63, N'1480', N'Alparslan', N'Kaya', N'5344911121', N'Erkek', CAST(N'1994-05-05' AS Date), 25, N'Evli', N'alparslan@gmail.com', 2, CAST(1.95 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), N'İstanbul Merter', N'Hasta', 4)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (64, N'5003', N'Ayşe', N'Kazımoğlu', N'8523697412', N'Erkek', CAST(N'1990-02-01' AS Date), 33, N'Evli', NULL, 7, CAST(55.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), N'Kars Kafkas', N'Uyuz', 8)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (66, N'5019', N'Hatemi ', N'Hatemoğlu', N'5469896265', N'Erkek', CAST(N'1950-01-01' AS Date), 34, N'Evli', N'hatemi_hatem@gmail.com', 6, CAST(105.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), N'Kars', N'Kalp ağrısı', 9)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (67, N'3036', N'Ayşoo', N'Kelll', N'05714428934', N'kadın', CAST(N'1965-05-04' AS Date), 41, N'evli', N'aysoo@hot.com', 7, CAST(85.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), N'malatya', N'', 5)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (68, N'3545', N'Harun', N'Tekin', N'5456537353', N'Erkek', CAST(N'1989-07-02' AS Date), 16, NULL, N'tekinharun@gmail.com', 5, CAST(93.00 AS Decimal(18, 2)), CAST(199.00 AS Decimal(18, 2)), N'Samandıra Can Bartu Tesisleri', N'Yan toplara atlamıyor', 22)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (69, N'2112', N'Hatice', N'Gündogdu', NULL, N'Kadin', CAST(N'1955-03-28' AS Date), 20, N'Evli', NULL, 2, CAST(55.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), N'Üsküdar İstanbul', N'Migren', 12)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (70, N'2099', N'Aslı', N'Enver', N'5327532343', N'Kadın', CAST(N'1987-12-12' AS Date), 35, N'Bekar', N'aslienver35@gmail.com', 2, CAST(58.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), N'istanbul Silivri', N'Genel Muayene', 20)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (71, N'3666', N'Roman', N'Neustadter', N'5496587893', N'Erkek', CAST(N'1988-09-21' AS Date), 16, NULL, N'romanneustadter@gmail.com', 5, CAST(70.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), N'Samandıra Can Bartu Tesisleri', N'Topa Hamle Yapmıyor', 22)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (72, N'5030', N'Şaziye', N'Akşahin', N'5852666698', N'Kadın', CAST(N'1950-11-02' AS Date), 45, N'Evli', NULL, 6, CAST(69.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)), N'Manisa', NULL, 11)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (73, N'2672', N'Alper', N'Koparan', N'084849884', N'Erkek', CAST(N'1985-02-28' AS Date), 81, N'Bekar', N'balperk@gmail.com', 2, CAST(55.00 AS Decimal(18, 2)), NULL, N'Üsküdar İstanbul', N'Migren', 12)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (74, N'5031', N'Gönül', N'Solmaz', N'5326641903', N'Kadin', CAST(N'1977-04-12' AS Date), 43, N'Evli', NULL, 4, CAST(69.00 AS Decimal(18, 2)), CAST(171.00 AS Decimal(18, 2)), N'İstanbul Ümraniye', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (75, N'5032', N'Fahri', N'Tepret', N'5313634545', N'Erkek', CAST(N'1967-06-20' AS Date), 43, N'Evli', N'fahritep@hotmail.com', 3, CAST(70.00 AS Decimal(18, 2)), CAST(173.00 AS Decimal(18, 2)), N'İstanbul Maltepe', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (76, N'5033', N'Yağmur', N'Kartal', N'530664190', N'Kadin', CAST(N'1963-08-23' AS Date), 48, N'Evli', N'yagmurkat@gmail.com', NULL, CAST(67.00 AS Decimal(18, 2)), CAST(168.00 AS Decimal(18, 2)), N'İstanbul Bakırköy', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (77, N'5034', N'Derya', N'Duman', NULL, N'Kadin', CAST(N'1993-10-17' AS Date), 53, N'Bekar', N'deryaduman@gmail.com', 6, CAST(67.00 AS Decimal(18, 2)), NULL, N'Ordu Fatsa', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (78, N'5035', N'Hasan', N'Durmaz', N'5344879966', N'Erkek', CAST(N'1983-02-13' AS Date), 48, N'Evli', N'hasandur@gmail.com', 5, NULL, NULL, N'Antalya Kas', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (79, N'5005', N'Hasan Ali', N'Topbaş', N'1234568525', N'Erkek', CAST(N'1880-03-09' AS Date), NULL, N'Bekar', NULL, 5, CAST(60.00 AS Decimal(18, 2)), CAST(192.00 AS Decimal(18, 2)), N'Trabzon Of', N'Uykusuzlı', 8)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (80, N'2099', N'Selana', N'Gomez', N'5457532323', N'Kadın', CAST(N'1994-12-12' AS Date), 1, N'Bekar', N'selanaselana1@gmail.com', 2, CAST(58.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), N'istanbul Bağcılar', N'Genel Muayene', 20)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (81, N'3666', N'Islam', N'Slimani', N'0001112233', N'Erkek', CAST(N'1988-11-21' AS Date), 36, NULL, N'islamslimani@gmail.com', 5, CAST(90.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), N'Samandıra Can Bartu Tesisleri', N'Gol Atamıyor', 22)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (82, N'4443', N'Ozan', N'Güven', N'NULL', N'Erkek', CAST(N'1973-07-05' AS Date), 30, N'Evli', N'guven@gmail.com', 4, CAST(70.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), N'İstanbul Sarıyer', N'NULL', 19)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (83, N'4442', N'Acun', N'Ilıcalı', N'NULL', N'Erkek', CAST(N'1973-07-05' AS Date), 25, N'Evli', N'acunbaba@gmail.com', 8, CAST(78.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), N'İstanbul Şişli', N'NULL', 19)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (84, N'4504', N'Kamile', N'Kuşkonmaz', N'5844', N'Kadın', CAST(N'1993-05-04' AS Date), 44, N'Dul', N'asibela@hotmail.com', 4, CAST(72.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), N'MALtepe', N'fıtık', 13)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (85, N'1500', N'mehmet', N'celen', N'05455454545', N'Erkek', CAST(N'1990-12-05' AS Date), 29, N'Bekar', N'mehmet@gmail.com', 2, CAST(180.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), N'bağcılar apaçi sokak', N'açıklama 1', 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (86, N'1507', N'ahmet', N'kerim', N'05363435634', N'Erkek', CAST(N'1990-06-25' AS Date), 30, N'Bekar', N'ahmet@gmail.com', 3, CAST(170.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), N'Esenler keş sokak', N'açıklama 2', 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (87, N'1604', N'ceren', N'germiyanoğlu', N'05693452563', N'Kadın', CAST(N'1990-07-23' AS Date), 80, N'Bekar', N'ceren@gmail.com', 5, CAST(180.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), N'kadıköy mavi saç sokak', NULL, 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (88, N'1703', N'Hasan', N'Camışoğlu', N'05493432345', N'Erkek', CAST(N'1990-06-25' AS Date), 75, N'Bekar', N'hasan@gmail.com', 5, CAST(160.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), N'Bakırköy keş sokak', NULL, 14)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (89, N'1803', N'Canan', N'Karatay', N'05673563456', N'Kadın', CAST(N'1901-07-23' AS Date), 4, N'Evli', N'canan@gmail.com', 1, CAST(155.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'Göztepe mavi saç sokak', NULL, 6)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (90, N'2229', N'Tarkan', N'Tevetoğlu', N'5457532323', N'Erkek', NULL, 1, N'Evli', N'megastar1@gmail.com', 2, CAST(58.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), N'istanbul Beşiktaş', N'Genel Muayene', 20)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (91, N'2509', N'Şahin ', N'Mahmut ', N'084849884', N'Erkek', CAST(N'1985-02-28' AS Date), 41, N'Bekar', N'bssasahin@gmail.com', 1, CAST(90.00 AS Decimal(18, 2)), NULL, N'Kazlıcesme İstanbul', N'Fıtık', 12)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (92, N'4041', N'Neşet', N'Ertaş', N'05325545896', N'Erkek', CAST(N'1938-01-01' AS Date), 40, N'Evli', N'nesetertas@gmail.com', 5, CAST(61.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), N'Kırşehir', N'NULL', 18)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (93, N'4061', N'Hasan', N'Balcı', N'05441235698', N'Erkek', CAST(N'1961-10-20' AS Date), 41, N'Bekar', N'hasanbalci@gmail.com', 1, CAST(78.00 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)), N'Balıkesir', N'NULL', 18)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (94, N'4054', N'Binnur', N'Kaya', N'05452256578', N'Kadın', CAST(N'1995-09-12' AS Date), 54, N'Bekar', N'binnurkaya@gmail.com', 6, CAST(54.00 AS Decimal(18, 2)), CAST(1.59 AS Decimal(18, 2)), N'Manisa', N'NULL', 18)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (95, N'4044', N'Veysel', N'Aşık', N'05553548776', N'Erkek', CAST(N'1945-01-06' AS Date), 61, N'Evli', N'veyselasik@gmail.com', 7, CAST(65.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), N'Sivas', N'NULL', 18)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (96, N'4035', N'Hasibe', N'Eren', N'05452256378', N'Kadın', CAST(N'1979-10-01' AS Date), 66, N'Evli', N'hasibeeren@gmail.com', 4, CAST(55.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), N'Yozgat', N'NULL', 18)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (97, N'4441', N'Beyazıt', N'Öztürk', N'NULL', N'Erkek', CAST(N'1970-07-05' AS Date), 29, N'Evli', N'beyazıt@gmail.com', 7, CAST(78.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), N'İstanbul Şişli', N'NULL', 19)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (98, N'3776', N'Yassine', N'Benzia', N'1112223344', N'Erkek', CAST(N'1994-12-23' AS Date), 81, NULL, N'yassinebenzia@gmail.com', 5, CAST(88.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), N'Samandıra Can Bartu Tesisleri', N'Ceza sahasında beynini kullanamıyor', 22)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (99, N'4440', N'Murat', N'Boz', N'NULL', N'Erkek', CAST(N'1977-07-05' AS Date), 61, N'Bekar', N'boz@gmail.com', 3, CAST(78.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), N'İstanbul Kadıkoy', N'NULL', 19)
INSERT [dbo].[Hastalar] ([HastalarID], [HastaTC], [HastaAdi], [HastaSoyadi], [Telefon], [Cinsiyet], [DogumTarihi], [DogumYeriID], [MedeniHali], [Email], [KanGrubuID], [HastaKilo], [HastaBoy], [Adres], [Acıklama], [KullaniciID]) VALUES (100, N'4505', N'Kerem', N'Merek', N'6264845', N'Erkek', CAST(N'1995-03-02' AS Date), 80, N'Dul', N'belali2001@hotmail.com', 8, CAST(135.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), N'Balıklı', N'Varikosel', 13)
SET IDENTITY_INSERT [dbo].[Hastalar] OFF
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (1, N'Adana')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (2, N'Adıyaman')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (3, N'Afyon')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (4, N'Ağrı')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (5, N'Amasya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (6, N'Ankara')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (7, N'Antalya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (8, N'Artvin')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (9, N'Aydın')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (10, N'Balıkesir')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (11, N'Bilecik')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (12, N'Bingöl')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (13, N'Bitlis')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (14, N'Bolu')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (15, N'Burdur')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (16, N'Bursa')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (17, N'Çanakkale')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (18, N'Çankırı')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (19, N'Çorum')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (20, N'Denizli')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (22, N'Edirne')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (23, N'Elazığ')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (24, N'Erzincan')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (25, N'Erzurum')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (26, N'Eskişehir')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (27, N'Gaziantep')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (28, N'Giresun')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (30, N'Hakkari')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (31, N'Hatay')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (32, N'Isparta')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (33, N'Mersin')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (34, N'İstanbul')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (35, N'İzmir')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (36, N'Kars')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (37, N'Kastamonu')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (38, N'Kayseri')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (39, N'Kırklareli')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (40, N'Kırşehir')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (41, N'Kocaeli')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (42, N'Konya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (43, N'Kütahya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (44, N'Malatya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (45, N'Manisa')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (46, N'K.Maraş')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (47, N'Mardin')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (48, N'Muğla')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (49, N'Muş')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (50, N'Nevşehir')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (51, N'Niğde')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (52, N'Ordu')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (53, N'Rize')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (54, N'Sakarya')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (55, N'Samsun')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (56, N'Siirt')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (57, N'Sinop')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (58, N'Sivas')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (60, N'Tokat')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (61, N'Trabzon')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (62, N'Tunceli')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (64, N'Uşak')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (65, N'Van')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (66, N'Yozgat')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (67, N'Zonguldak')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (68, N'Aksaray')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (69, N'Bayburt')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (70, N'Karaman')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (72, N'Batman')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (73, N'Şırnak')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (74, N'Bartın')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (75, N'Ardahan')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (76, N'Iğdır')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (77, N'Yalova')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (78, N'Karabük')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (79, N'Kilis')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (80, N'Osmaniye')
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[KanGruplari] ON 

INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (1, N'A Rh+', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (2, N'A Rh-', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (3, N'B Rh+', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (4, N'B Rh-', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (5, N'0 Rh+', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (6, N'0 Rh-', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (7, N'AB Rh+', 1)
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi], [KullaniciID]) VALUES (8, N'AB Rh-', 1)
SET IDENTITY_INSERT [dbo].[KanGruplari] OFF
SET IDENTITY_INSERT [dbo].[Klinikler] ON 

INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (1, N'Psikiyatri', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (2, N'Dermatoloji', N'NULL', 18)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (3, N'Göz Hastalıkları', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (4, N'Doğum', N'NULL', 18)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (5, N'Lazer Epilasyon', N'NULL', 18)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (6, N'Veteriner ', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (7, N'Çocuk Hastalıkları', N'NULL', 18)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (8, N'Radyoloji', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (9, N'Dahiliye', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (10, N'Fizik ve Rehabilitasyon', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (11, N'Diyetisyen', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (12, N'Genel Cerrahi', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (13, N'Ağız ve Diş Sağlığı', N'NULL', 19)
INSERT [dbo].[Klinikler] ([KliniklerID], [KlinikAdi], [Aciklama], [KullaniciID]) VALUES (14, N'Kulak Burun Boğaz', N'NULL', 19)
SET IDENTITY_INSERT [dbo].[Klinikler] OFF
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (1, N'1', N'Ali', N'123', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (2, N'2', N'Seyhan', N'12', 2)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (3, N'3', N'Şerife', N'11', 3)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (4, N'4', N'Harun', N'1234', 4)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (5, N'1234', N'Aslı', N'13', 4)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (6, N'1597', N'Hamit', N'1234', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (7, N'1365', N'Resül', N'a123', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (8, N'4138', N'Yasemin', N'1234', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (9, N'1628', N'Dilnur Seda', N'1236', 3)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (10, N'2303', N'Yonca', N'y123', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (11, N'4875', N'Baran Can', N'1234', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (12, N'124', N'Esin', N'ıkbyh', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (13, N'2452', N'Oğuz', N'4321', 2)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (14, N'2748', N'Övünç', N'1967', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (15, N'324234', N'Samet', N'34534534', 2)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (16, N'8798', N'Duygu', N'9875', 4)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (18, N'4144', N'Hakan', N'123', 2)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (19, N'2658', N'Ahmet', N'a123', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (20, N'1160', N'Görkem', N'1234', 1)
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (22, N'1235523', N'Mert', N'FBFBFB', 5)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
SET IDENTITY_INSERT [dbo].[KurumsalGelirler] ON 

INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (1, N'ARY MORA TERAPİ-SİGARA BIRAKMA MERKEZİ ', N'İstanbul pendik', N'20000', N'9876', N'Hasan', N'Demirdöken', 1, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (2, N'koç temizlik şirketi ', N'Manisa', N'25632', N'9584', N'Ali', N'Koç', 11, 9)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (3, N'City Ambulans ', N'İstanbul Maltepe', N'14785', N'1254', N'Fatih', N'Terket', 10, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (4, N'Kocintok Medikal Malzemeler ', N'Ankara Yenimahalle', N'14852', N'1259', N'Bahtiyar', N'Koçbaş', 9, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (5, N'Günal Özel Ambulans & Cenaze Hizmetleri Ltd. Şti. ', N'Bursa Osmangazi', N'78895', N'7785', N'Önem', N'Günal', 8, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (6, N'NANOKAR İLERİ TEKNOLOJİK MALZEMELER ', N'İzmir Karşıyaka', N'88565', N'1145', N'Gülse', N'Taşkıran', 7, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (7, N'Art Sağlık Hizmetleri Ltd. Şti', N'İstanbul', N'400', N'6544', N'Ali', N'Koç', 3, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (9, N'	Dünya Göz Hastanesi', N'Ankara', N'90000', N'7000', N'Ahmet', N'Gündüz', 4, 8)
INSERT [dbo].[KurumsalGelirler] ([KurumsalGelirlerID], [KurumAdi], [KurumAdres], [Kod], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [GelirID], [KullaniciID]) VALUES (10, N'	City Hospital Sağlık ve Yatırım Hizmetleri A.Ş.', N'Antalya', N'96000', N'5647', N'Müslüm', N'Baba', 4, 8)
SET IDENTITY_INSERT [dbo].[KurumsalGelirler] OFF
SET IDENTITY_INSERT [dbo].[KurumsalGiderler] ON 

INSERT [dbo].[KurumsalGiderler] ([KurumsalGiderlerID], [KurumAdi], [KurumAdres], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [KurumGiderKod], [GiderID], [KullaniciID]) VALUES (1, N'Koç Holding', N'Etiler İstanbul', N'11523124', N'Ali', N'Koç', N'1907', 1, 20)
INSERT [dbo].[KurumsalGiderler] ([KurumsalGiderlerID], [KurumAdi], [KurumAdres], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [KurumGiderKod], [GiderID], [KullaniciID]) VALUES (2, N'Sabancı Holding', N'4.Levent İstanbul', N'1152315', N'Sakine', N'Sabancı', N'1453', 2, 20)
INSERT [dbo].[KurumsalGiderler] ([KurumsalGiderlerID], [KurumAdi], [KurumAdres], [YetkiliTC], [YetkiliAdi], [YetkiliSoyadi], [KurumGiderKod], [GiderID], [KullaniciID]) VALUES (3, N'Doğuş Holding', N'Taksim İstanbul', N'11523123', N'Mehmet', N'Doğus', N'1881', 3, 20)
SET IDENTITY_INSERT [dbo].[KurumsalGiderler] OFF
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (4, N'1365', N'Resül', N'Oralı', N'Erkek', CAST(5000.00 AS Decimal(18, 2)), N'0543 254 12 12', CAST(N'1989-12-30' AS Date), 30, N'TR45 5214 2145 2130', N'Bekar', NULL, 2, N'İstanbul Kadıköy', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (5, N'4', N'Harun', N'Durakoğlu', N'Erkek', CAST(32000000.00 AS Decimal(18, 2)), N'05366842124', CAST(N'1986-12-01' AS Date), 1, N'TR45 4423 2322 4242  ', N'Evli', NULL, 2, N'İtalya Torino', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (6, N'1365', N'Lale', N'Kesin', N'Kadın', CAST(5500.00 AS Decimal(18, 2)), N'0543 321 00 00', CAST(N'1992-12-30' AS Date), 30, N'TR45 5214 2145 2130 5478', N'Bekar', NULL, 2, N'İstanbul Kadıköy', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (7, N'2452', N'Oğuz', N'İmrak', N'Erkek', CAST(3500.00 AS Decimal(18, 2)), N'053598789', CAST(N'1972-12-22' AS Date), 12, N'TR 1111 1111 1111 1234', N'Dul', NULL, 8, N'Kuşkonmaz Köyü', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (8, N'2748', N'Övünç', N'Abdik', N'Erkek', CAST(4500.00 AS Decimal(18, 2)), N'0532 478 56 21', CAST(N'1969-10-26' AS Date), 58, N'TR42 2650 3621 8715 8525', N'Evli', NULL, 6, N'İstanbul Fatih', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (9, N'1628', N'Dilnur', N'Yılmaz', N'Kadın', CAST(4250.00 AS Decimal(18, 2)), N'0545 854 96 58', CAST(N'1985-12-25' AS Date), 16, N'TR24 8558 5896 8298 3021', N'Bekar', NULL, 4, N'İstanbul Bakırköy', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (10, N'1235523', N'Mert', N'Çeken', N'Erkek', CAST(10000.00 AS Decimal(18, 2)), N'11112223344', CAST(N'1993-08-08' AS Date), 34, N'1234245', N'Bekar', NULL, 1, N'Şişli', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (11, N'4', N'mahmut', N'celen', N'Erkek', CAST(2500.00 AS Decimal(18, 2)), N'0546 545 54 54', CAST(N'1990-11-20' AS Date), 15, N'TR56 4545 3434 3434 6565', N'Evli', NULL, 2, N'İstanbul Bakırköy', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (14, N'4875', N'Baran Can', N'Yıldırım', N'Erkek', CAST(120000.00 AS Decimal(18, 2)), N'0558 555 58 58', CAST(N'1993-10-18' AS Date), 34, N'TR96 3154 3154 3154 8521', N'Bekar', NULL, 1, N'İstanbul Bahçelievler', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (15, N'1234', N'Aslı', N'Duman', N'Kadın', CAST(4000.00 AS Decimal(18, 2)), N'124185415488', CAST(N'1996-04-05' AS Date), 34, N'TR 652339856234684845', N'bekar', NULL, 5, N'Eyüp', 5)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (17, N'4144', N'Hakan', N'Ocak', N'Erkek', CAST(2000.00 AS Decimal(18, 2)), N'05574596574', CAST(N'1988-12-18' AS Date), 41, N'TR61 1245 2365 7894 5487', N'Bekar', NULL, 1, N'Kartal', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (18, N'2658', N'Ahmet', N'Mutaf', N'erkek', CAST(15000.00 AS Decimal(18, 2)), N'5544512655', CAST(N'1993-01-01' AS Date), 25, N'TR34 1542 3654 1125 8745', N'Bekar', NULL, 2, N'İstanbul Kadıkoy', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (20, N'1234', N'Ayse', N'Ak', N'Kadın', CAST(2560.00 AS Decimal(18, 2)), N'05336250000', CAST(N'1993-12-11' AS Date), 25, N'TR22 5698 7413 2364 2361', N'Bekar', NULL, 3, N'İstanbul Şişli', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (21, N'1597', N'Hamit', N'Dinç', N'Erkek', CAST(4500.00 AS Decimal(18, 2)), N'0539 321 12 12', CAST(N'1992-10-10' AS Date), 30, N'TR21 3554 7736', N'Bekar', NULL, 5, N'İstanbul/Ümraniye', 1)
INSERT [dbo].[Personeller] ([PersonellerID], [PersonelTC], [PersonelAdi], [PersonelSoyadi], [Cinsiyet], [Maas], [Telefon], [DogumTarihi], [DogumYeriID], [HesapNumarasi], [MedeniHali], [Resim], [KanGrubuID], [Adres], [KullaniciID]) VALUES (22, N'1234', N'Ayse', N'Ak', N'Kadın', CAST(2560.00 AS Decimal(18, 2)), N'05336250000', CAST(N'1993-12-11' AS Date), 25, N'TR22 5698 7413 2364 2361', N'Bekar', NULL, 3, N'İstanbul Şişli', 1)
SET IDENTITY_INSERT [dbo].[Personeller] OFF
SET IDENTITY_INSERT [dbo].[Randevular] ON 

INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (20, 1, 1, 8, CAST(N'2019-05-01' AS Date), N'10:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (22, 2, 3, 3, CAST(N'2019-06-01' AS Date), N'16:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (24, 3, 4, 5, CAST(N'2018-12-30' AS Date), N'15:30', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (25, 4, 1, 8, CAST(N'2018-12-25' AS Date), N'09:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (26, 1, 9, 1, CAST(N'2019-02-02' AS Date), N'14:30', N'1randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (27, 2, 3, 3, CAST(N'2019-02-04' AS Date), N'13:30', N'2randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (28, 3, 3, 3, CAST(N'2019-01-05' AS Date), N'12:30', N'3randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (29, 4, 9, 4, CAST(N'2019-01-05' AS Date), N'11:30', N'4randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (30, 10, 9, 1, CAST(N'2019-01-06' AS Date), N'10:30', N'5randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (31, 11, 9, 4, CAST(N'2019-01-07' AS Date), N'9:30', N'6randevu açıklaması1', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (32, 1, 1, 8, CAST(N'2018-05-01' AS Date), N'10:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (33, 2, 3, 3, CAST(N'2019-06-01' AS Date), N'16:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (34, 3, 4, 5, CAST(N'2018-12-30' AS Date), N'15:30', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (35, 4, 1, 8, CAST(N'2018-12-12' AS Date), N'09:00', N'randevu', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (38, 1, 1, 1, CAST(N'2019-05-01' AS Date), N'11:00', NULL, 1)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (39, 1, 9, 1, CAST(N'2019-01-15' AS Date), N'09:00', N'Aman doktor derdime bir çare', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (40, 90, 1, 8, CAST(N'2011-05-06' AS Date), N'13:00', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (41, 2, 2, 2, CAST(N'2011-07-03' AS Date), N'10.00', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (42, 100, 1, 8, CAST(N'2014-07-10' AS Date), N'09:50', N'Şiddetli Geçimsizlik', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (43, 91, 3, 3, CAST(N'2012-09-15' AS Date), N'16:00', N'ağır vaka', 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (44, 92, 4, 6, CAST(N'2014-07-18' AS Date), N'13:15', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (45, 93, 7, 7, CAST(N'2010-04-08' AS Date), N'09:00', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (46, 94, 2, 9, CAST(N'2016-01-23' AS Date), N'14:30', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (47, 78, 3, 3, CAST(N'2012-03-10' AS Date), N'09:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (48, 110, 5, 2, CAST(N'2012-11-09' AS Date), N'10:15', N'boğaz enfeksiyonu', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (49, 62, 1, 8, CAST(N'2016-10-10' AS Date), N'11:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (52, 84, 1, 8, CAST(N'2013-07-10' AS Date), N'09:50', N'Depresan Kullanıyor', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (53, 58, 3, 3, CAST(N'2019-12-10' AS Date), N'15:35', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (55, 2, 2, 2, CAST(N'2012-05-12' AS Date), N'11.10', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (56, 2, 2, 2, CAST(N'2013-11-10' AS Date), N'11.30', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (57, 2, 2, 2, CAST(N'2013-12-29' AS Date), N'11.40', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (58, 2, 2, 2, CAST(N'2014-04-27' AS Date), N'12.00', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (59, 2, 2, 2, CAST(N'2015-05-29' AS Date), N'13.00', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (60, 2, 2, 2, CAST(N'2016-06-16' AS Date), N'13.10', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (61, 2, 2, 2, CAST(N'2016-08-15' AS Date), N'13.30', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (62, 2, 2, 2, CAST(N'2017-07-11' AS Date), N'13.45', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (63, 2, 2, 2, CAST(N'2018-01-01' AS Date), N'14.10', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (64, 2, 2, 2, CAST(N'2018-08-08' AS Date), N'15.00', N'Hasta Randevu', 22)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (65, 2, 9, 4, CAST(N'2019-01-15' AS Date), N'09:00', N'Aman doktor', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (66, 3, 4, 2, CAST(N'2019-02-16' AS Date), N'09:15', N'Canım Gülüm Doktor', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (67, 4, 3, 3, CAST(N'2019-03-17' AS Date), N'09:30', N'Derdime Bir Çare', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (68, 7, 4, 5, CAST(N'2019-01-18' AS Date), N'09:45', N'doktor bana bir çare', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (69, 5, 4, 6, CAST(N'2019-02-19' AS Date), N'10:00', N'Mendilimin yeşili', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (70, 6, 14, 7, CAST(N'2019-03-11' AS Date), N'10:15', N'Ben kaybettim eşimi', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (71, 8, 1, 8, CAST(N'2019-01-12' AS Date), N'10:30', N'Al bu mendil sende dursun', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (72, 7, 4, 5, CAST(N'2019-02-13' AS Date), N'11:15', N'Sil gözünün yaşını', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (73, 1, 14, 7, CAST(N'2019-03-14' AS Date), N'13:30', N'Mendilim turalıdır', 15)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (76, 95, 3, 3, CAST(N'2016-12-28' AS Date), N'15:25', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (77, 96, 2, 9, CAST(N'2012-09-12' AS Date), N'12:00', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (78, 97, 4, 6, CAST(N'2014-11-15' AS Date), N'11:00', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (79, 98, 3, 3, CAST(N'2016-08-30' AS Date), N'14:30', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (80, 99, 1, 8, CAST(N'2015-04-28' AS Date), N'16:15', NULL, 4)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (81, 50, 4, 6, CAST(N'2013-11-05' AS Date), N'10:00', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (82, 61, 3, 3, CAST(N'2016-12-12' AS Date), N'10:00', N'Kronik Ayrılık sancısı', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (86, 62, 1, 8, CAST(N'2017-12-11' AS Date), N'14:20', N'Vasiyet: Kederinden Öldü Yazsınlar', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (88, 7, 3, 6, CAST(N'2018-11-27' AS Date), N'14:00', N'Mide problem', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (89, 78, 3, 3, CAST(N'2012-03-10' AS Date), N'09:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (90, 62, 9, 1, CAST(N'2016-10-10' AS Date), N'11:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (91, 58, 3, 3, CAST(N'2019-12-10' AS Date), N'15:35', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (92, 50, 1, 8, CAST(N'2013-11-05' AS Date), N'10:00', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (93, 26, 13, 11, CAST(N'2012-03-10' AS Date), N'11:30', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (94, 9, 8, 7, CAST(N'2018-12-10' AS Date), N'15:00', N'diş problemi', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (95, 18, 9, 1, CAST(N'2015-07-10' AS Date), N'09:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (96, 56, 7, 3, CAST(N'2012-11-09' AS Date), N'10:15', N'boğaz enfeksiyonu', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (97, 10, 4, 5, CAST(N'2015-12-10' AS Date), N'11:00', N'göz problemi', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (98, 30, 1, 8, CAST(N'2017-07-19' AS Date), N'11:45', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (99, 4, 5, 7, CAST(N'2017-10-10' AS Date), N'13:30', N'Diyabet', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (100, 6, 3, 3, CAST(N'2016-05-09' AS Date), N'09:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (101, 20, 9, 4, CAST(N'2017-12-10' AS Date), N'10:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (102, 45, 9, 9, CAST(N'2018-08-17' AS Date), N'13:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (103, 36, 14, 7, CAST(N'2015-07-19' AS Date), N'14:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (104, 9, 14, 7, CAST(N'2014-06-23' AS Date), N'15:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (105, 7, 4, 6, CAST(N'2013-04-25' AS Date), N'11:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (106, 15, 9, 4, CAST(N'2012-03-20' AS Date), N'10:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (107, 10, 1, 8, CAST(N'2011-01-07' AS Date), N'09:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (108, 7, 4, 5, CAST(N'2010-02-06' AS Date), N'14:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (109, 25, 3, 3, CAST(N'2015-09-08' AS Date), N'15:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (110, 19, 14, 7, CAST(N'2015-08-10' AS Date), N'09:30', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (111, 40, 1, 8, CAST(N'2019-01-02' AS Date), N'15:30', N'Yıldız Tilbe Yetmezliği', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (112, 45, 9, 1, CAST(N'2014-09-18' AS Date), N'13:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (113, 22, 9, 18, CAST(N'2015-07-15' AS Date), N'09:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (114, 5, 9, 9, CAST(N'2018-12-25' AS Date), N'11:00', N'randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (115, 22, 9, 4, CAST(N'2015-07-15' AS Date), N'09:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (116, 46, 4, 6, CAST(N'2012-08-10' AS Date), N'09:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (117, 15, 3, 3, CAST(N'2016-08-25' AS Date), N'09:45', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (118, 22, 9, 4, CAST(N'2017-05-11' AS Date), N'14:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (119, 20, 14, 7, CAST(N'2015-03-03' AS Date), N'11:45', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (120, 70, 1, 8, CAST(N'2012-01-12' AS Date), N'13:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (121, 82, 9, 9, CAST(N'2015-04-19' AS Date), N'11:00', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (122, 54, 9, 1, CAST(N'2016-08-25' AS Date), N'09:45', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (123, 25, 9, 12, CAST(N'2016-05-15' AS Date), N'10:15', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (124, 60, 13, 11, CAST(N'2014-09-11' AS Date), N'14:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (125, 44, 4, 12, CAST(N'2016-08-25' AS Date), N'11:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (126, 9, 8, 7, CAST(N'2016-04-15' AS Date), N'09:00', N'Psikiyatri', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (127, 22, 9, 4, CAST(N'2015-07-15' AS Date), N'10:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (128, 6, 5, 4, CAST(N'2014-12-10' AS Date), N'11:300', N'Dahiliye', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (129, 22, 9, 4, CAST(N'2016-07-15' AS Date), N'10:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (130, 22, 9, 4, CAST(N'2016-05-15' AS Date), N'10:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (131, 7, 5, 3, CAST(N'2012-03-02' AS Date), N'14:30', N'Cildiye', 5)
GO
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (133, 24, 9, 4, CAST(N'2016-05-15' AS Date), N'15:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (134, 63, 9, 4, CAST(N'2019-01-11' AS Date), N'13:30', N'Genel tarama', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (135, 5, 30, 10, CAST(N'2019-01-10' AS Date), N'13:00', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (136, 57, 3, 2, CAST(N'2016-08-05' AS Date), N'11:15', N'Göz iltihabı', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (141, 10, 13, 11, CAST(N'2010-11-11' AS Date), N'14:00', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (142, 9, 5, 3, CAST(N'2011-01-05' AS Date), N'15:30', N'boğaz ağrısı', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (143, 64, 9, 1, CAST(N'2019-01-11' AS Date), N'14:00', N'Baş Dönmesi', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (144, 30, 3, 3, CAST(N'2019-03-15' AS Date), N'13:00', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (146, 51, 1, 8, CAST(N'2017-02-03' AS Date), N'06:00', N'Seven geç olmadan sevdiğini söylesin dedi ve bileklerini kesti', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (147, 18, 3, 3, CAST(N'2016-01-24' AS Date), N'10:45', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (148, 10, 14, 7, CAST(N'2015-10-10' AS Date), N'15:00', N'Travma', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (149, 2, 5, 8, CAST(N'2018-12-12' AS Date), N'08:30', N'gergedan gribi', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (150, 40, 30, 2, CAST(N'2019-01-25' AS Date), N'14:45', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (151, 90, 10, 12, CAST(N'2010-02-25' AS Date), N'15:15', N'Diz ağrısı', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (152, 55, 3, 3, CAST(N'2017-10-02' AS Date), N'14:00', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (153, 39, 9, 1, CAST(N'2018-08-25' AS Date), N'11:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (154, 90, 9, 4, CAST(N'2014-03-21' AS Date), N'11:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (155, 65, 1, 8, CAST(N'2019-01-11' AS Date), N'14:30', N'Geçim Derdi', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (156, 24, 1, 8, CAST(N'2016-05-15' AS Date), N'15:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (157, 4, 5, 5, CAST(N'2012-12-12' AS Date), N'00:00', N'Kıyamet kopmadı', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (158, 41, 14, 7, CAST(N'2016-09-23' AS Date), N'11:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (159, 29, 1, 8, CAST(N'2016-05-15' AS Date), N'16:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (160, 23, 1, 8, CAST(N'2016-05-15' AS Date), N'16:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (161, 80, 4, 6, CAST(N'2019-06-10' AS Date), N'14:45', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (162, 66, 3, 3, CAST(N'2019-01-11' AS Date), N'15:00', N'Göz Görmüyor', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (163, 9, 8, 7, CAST(N'2018-12-25' AS Date), N'09:18', N'öldüühttp', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (164, 6, 2, 12, CAST(N'2010-10-11' AS Date), N'11:10', N'Diş', 1)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (165, 80, 1, 8, CAST(N'2015-05-05' AS Date), N'06:20', N'Aşk acısı diş acısından betermiş dedi', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (166, 67, 4, 5, CAST(N'2019-01-01' AS Date), N'07:30', N'Doğum', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (167, 39, 13, 11, CAST(N'2016-05-15' AS Date), N'16:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (168, 25, 13, 11, CAST(N'2018-08-09' AS Date), N'09:30', N'Kanal tedavisi', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (169, 38, 13, 11, CAST(N'2016-05-15' AS Date), N'11:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (170, 36, 13, 11, CAST(N'2016-05-15' AS Date), N'13:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (171, 32, 13, 11, CAST(N'2018-07-23' AS Date), N'09:45', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (172, 68, 14, 7, CAST(N'2019-01-11' AS Date), N'15:30', N'Jilet Yarası', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (173, 76, 4, 5, CAST(N'2019-01-01' AS Date), N'09:30', N'Doğum', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (174, 96, 8, 8, CAST(N'2011-06-15' AS Date), N'16:00', N'Göz kararması', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (176, 77, 4, 5, CAST(N'2019-01-01' AS Date), N'11:30', N'Doğum', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (177, 76, 4, 5, CAST(N'2014-03-02' AS Date), N'10:15', N'Bu dünyaya çocuk getirmeye hazır değildim dedi', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (178, 80, 1, 8, CAST(N'2019-01-11' AS Date), N'16:00', N'Biber Dokunmuş', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (180, 6, 2, 12, CAST(N'2010-10-11' AS Date), N'11:10', N'Diş', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (181, 5, 1, 11, CAST(N'2012-11-11' AS Date), N'10:10', N'Göz', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (182, 28, 3, 3, CAST(N'2014-03-01' AS Date), N'10:15', N'Herşeyi görsemde sevgini göremiyorum dedi', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (183, 98, 6, 5, CAST(N'2010-04-24' AS Date), N'09:45', N'randevu', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (184, 98, 1, 9, CAST(N'2019-01-12' AS Date), N'16:30', N'Ayak kırılmış', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (185, 61, 1, 8, CAST(N'2011-02-21' AS Date), N'14:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (186, 72, 9, 1, CAST(N'2013-12-03' AS Date), N'15:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (187, 91, 11, 9, CAST(N'2014-01-03' AS Date), N'14:30', N'randevu', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (188, 83, 1, 8, CAST(N'2019-01-11' AS Date), N'17:00', N'Boşanma sonrası rusal gerilim', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (189, 12, 9, 1, CAST(N'2015-06-06' AS Date), N'10:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (190, 89, 9, 9, CAST(N'2011-03-02' AS Date), N'10:20', N'Yüreğime onu dahil edemiyorum dedi', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (191, 79, 1, 3, CAST(N'2019-01-12' AS Date), N'17:00', N'Retina çizilmesi', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (192, 23, 1, 8, CAST(N'2019-02-20' AS Date), N'11:30', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (193, 5, 14, 7, CAST(N'2018-12-25' AS Date), N'9:00', N'randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (194, 5, 4, 5, CAST(N'2019-02-10' AS Date), N'11:20', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (195, 30, 8, 18, CAST(N'2019-03-15' AS Date), N'14:30', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (196, 40, 1, 8, CAST(N'2019-02-25' AS Date), N'15:20', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (197, 20, 1, 8, CAST(N'2019-03-10' AS Date), N'15:10', N'Hasta Randevu', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (198, 44, 3, 3, CAST(N'2017-10-09' AS Date), N'11:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (199, 61, 13, 11, CAST(N'2016-09-22' AS Date), N'14:00', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (200, 23, 9, 9, CAST(N'2014-08-23' AS Date), N'11:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (201, 15, 7, 5, CAST(N'2012-10-11' AS Date), N'10:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (203, 10, 1, 8, CAST(N'2010-10-10' AS Date), N'13:00', N'Travma', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (204, 2, 14, 2, CAST(N'2018-10-29' AS Date), N'09.30', N'Hasta Randevu', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (205, 15, 9, 1, CAST(N'2011-10-10' AS Date), N'14:00', N'Anevrizma', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (206, 20, 3, 2, CAST(N'2012-10-10' AS Date), N'15:00', N'İç Kanama', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (207, 21, 9, 1, CAST(N'2013-10-10' AS Date), N'15:15', N'Sarsıntı', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (208, 22, 5, 20, CAST(N'2014-10-10' AS Date), N'15:30', N'Bulantı', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (209, 13, 9, 9, CAST(N'2015-10-10' AS Date), N'15:45', N'Migren', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (210, 25, 3, 3, CAST(N'2016-10-10' AS Date), N'15:50', N'Sinuzit', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (211, 17, 3, 18, CAST(N'2017-10-10' AS Date), N'11:00', N'Disleksi', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (212, 22, 9, 1, CAST(N'2009-10-10' AS Date), N'11:30', N'İç Kanama', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (213, 22, 14, 7, CAST(N'2002-10-10' AS Date), N'11:45', N'Bunama', 6)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (214, 38, 13, 11, CAST(N'2017-05-10' AS Date), N'09:00', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (215, 108, 13, 11, CAST(N'2016-01-15' AS Date), N'15:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (216, 101, 13, 11, CAST(N'2016-04-15' AS Date), N'10:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (217, 99, 13, 11, CAST(N'2016-03-15' AS Date), N'12:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (218, 1, 1, 8, CAST(N'2019-01-13' AS Date), N'09:00', N'Özel durum', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (219, 99, 1, 8, CAST(N'2014-03-03' AS Date), N'10:25', N'Komşunun ziline basıp kaçıyorum dedi', 13)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (220, 50, 1, 8, CAST(N'2011-04-30' AS Date), N'13:00', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (221, 4, 1, 11, CAST(N'2010-10-12' AS Date), N'09:40', N'Kadın Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (223, 2, 1, 10, CAST(N'2014-11-11' AS Date), N'08:50', N'Diş', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (224, 1, 2, 11, CAST(N'2015-11-11' AS Date), N'08:45', N'Kalp ve Damar Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (225, 108, 13, 11, CAST(N'2017-01-15' AS Date), N'15:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (226, 101, 13, 11, CAST(N'2017-04-15' AS Date), N'10:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (227, 99, 13, 11, CAST(N'2017-03-15' AS Date), N'12:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (228, 3, 4, 12, CAST(N'2016-11-11' AS Date), N'10:10', N'Kas ve Sinir', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (229, 89, 14, 7, CAST(N'2017-10-02' AS Date), N'14:00', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (230, 92, 3, 3, CAST(N'2011-11-11' AS Date), N'15:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (231, 16, 3, 3, CAST(N'2012-12-28' AS Date), N'13:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (232, 5, 2, 11, CAST(N'2017-11-11' AS Date), N'10:10', N'Çocuk Alerjisi', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (233, 5, 1, 12, CAST(N'2018-11-11' AS Date), N'10:10', N'Pedogoji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (234, 16, 4, 5, CAST(N'2019-05-15' AS Date), N'09:00', N'Doğum Kontrol', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (235, 5, 1, 11, CAST(N'2011-11-11' AS Date), N'10:10', N'Üroloji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (237, 108, 13, 11, CAST(N'2018-01-15' AS Date), N'15:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (238, 101, 13, 11, CAST(N'2018-04-15' AS Date), N'10:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (239, 99, 13, 11, CAST(N'2018-03-15' AS Date), N'12:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (241, 30, 9, 9, CAST(N'2016-10-06' AS Date), N'10:30', N'Randevu', 18)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (242, 10, 11, 17, CAST(N'2017-08-15' AS Date), N'10:18', N'karnıma vurdular karnım ağrıyorr', 5)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (243, 92, 81, 37, CAST(N'2015-09-26' AS Date), N'11:18', N'bööğrüme vurdular böğrüm ağrıyorr', 5)
GO
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (245, 108, 13, 11, CAST(N'2015-01-15' AS Date), N'15:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (246, 101, 13, 11, CAST(N'2015-04-15' AS Date), N'10:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (247, 99, 13, 11, CAST(N'2015-03-15' AS Date), N'12:50', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (248, 20, 14, 7, CAST(N'2013-10-20' AS Date), N'13:30', NULL, 14)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (250, 62, 9, 1, CAST(N'2019-01-25' AS Date), N'15:15', NULL, 11)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (251, 6, 2, 11, CAST(N'2012-12-12' AS Date), N'11:10', N'Nöroloji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (252, 89, 5, 20, CAST(N'2010-01-04' AS Date), N'11:30', N'kontrol', 9)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (253, 19, 3, 8, CAST(N'2019-03-15' AS Date), N'11:00', N'Kulak duymuyor', 20)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (254, 18, 9, 1, CAST(N'2016-07-10' AS Date), N'09:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (255, 19, 14, 7, CAST(N'2016-08-10' AS Date), N'09:30', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (256, 22, 9, 4, CAST(N'2016-07-15' AS Date), N'10:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (257, 20, 9, 4, CAST(N'2019-03-10' AS Date), N'15:10', N'Baş Ağrısı', 8)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (258, 22, 9, 4, CAST(N'2016-09-15' AS Date), N'10:40', N'NULL', 19)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (259, 3, 2, 9, CAST(N'2012-09-12' AS Date), N'11:20', N'Alerji Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (260, 6, 2, 12, CAST(N'2010-10-11' AS Date), N'11:10', N'Diş', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (261, 4, 1, 11, CAST(N'2010-10-12' AS Date), N'09:40', N'Kadın Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (262, 2, 1, 10, CAST(N'2014-11-11' AS Date), N'08:50', N'Diş', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (263, 1, 2, 11, CAST(N'2015-11-11' AS Date), N'08:45', N'Kalp ve Damar Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (264, 3, 4, 12, CAST(N'2016-11-11' AS Date), N'10:30', N'Kas ve Sinir', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (265, 5, 2, 11, CAST(N'2017-11-11' AS Date), N'10:40', N'Çocuk Alerjisi', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (266, 5, 1, 12, CAST(N'2018-11-11' AS Date), N'10:15', N'Pedogoji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (267, 5, 1, 11, CAST(N'2011-11-11' AS Date), N'10:10', N'Üroloji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (268, 6, 2, 11, CAST(N'2012-12-12' AS Date), N'11:10', N'Nöroloji', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (269, 3, 2, 9, CAST(N'2012-09-12' AS Date), N'11:20', N'Alerji Hastalıkları', 10)
INSERT [dbo].[Randevular] ([RandevularID], [HastaID], [KlinikID], [DoktorID], [RandevuTarihi], [RandevuSaati], [Aciklama], [KullaniciID]) VALUES (270, 70, 14, 7, CAST(N'2018-12-28' AS Date), N'09:10', N'Hasta Randevu', 8)
SET IDENTITY_INSERT [dbo].[Randevular] OFF
SET IDENTITY_INSERT [dbo].[Yetkiler] ON 

INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (1, N'Admin ')
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (2, N'Yönetici ')
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (3, N'Doktor ')
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (4, N'Hasta')
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (5, N'Kayıt Giriş ')
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (6, N'Personel ')
SET IDENTITY_INSERT [dbo].[Yetkiler] OFF
ALTER TABLE [dbo].[BireyselGelirler]  WITH CHECK ADD  CONSTRAINT [FK_BireyselGelirler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[BireyselGelirler] CHECK CONSTRAINT [FK_BireyselGelirler_Kullanicilar]
GO
ALTER TABLE [dbo].[BireyselGiderler]  WITH CHECK ADD  CONSTRAINT [FK_BireyselGiderler_Giderler] FOREIGN KEY([GiderID])
REFERENCES [dbo].[Giderler] ([GiderlerID])
GO
ALTER TABLE [dbo].[BireyselGiderler] CHECK CONSTRAINT [FK_BireyselGiderler_Giderler]
GO
ALTER TABLE [dbo].[BireyselGiderler]  WITH CHECK ADD  CONSTRAINT [FK_BireyselGiderler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[BireyselGiderler] CHECK CONSTRAINT [FK_BireyselGiderler_Kullanicilar]
GO
ALTER TABLE [dbo].[Branslar]  WITH CHECK ADD  CONSTRAINT [FK_Branslar_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Branslar] CHECK CONSTRAINT [FK_Branslar_Kullanicilar]
GO
ALTER TABLE [dbo].[DoktorBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_DoktorBilgileri_Doktorlar] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorlarID])
GO
ALTER TABLE [dbo].[DoktorBilgileri] CHECK CONSTRAINT [FK_DoktorBilgileri_Doktorlar]
GO
ALTER TABLE [dbo].[DoktorBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_DoktorBilgileri_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[DoktorBilgileri] CHECK CONSTRAINT [FK_DoktorBilgileri_Kullanicilar]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_DoktorUnvanlari] FOREIGN KEY([DoktorUnvanID])
REFERENCES [dbo].[DoktorUnvanlari] ([DoktorUnvanlariID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_DoktorUnvanlari]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_iller]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_KanGruplari]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_Kullanicilar]
GO
ALTER TABLE [dbo].[DoktorUnvanlari]  WITH CHECK ADD  CONSTRAINT [FK_DoktorUnvanlari_Branslar] FOREIGN KEY([BransID])
REFERENCES [dbo].[Branslar] ([BranslarID])
GO
ALTER TABLE [dbo].[DoktorUnvanlari] CHECK CONSTRAINT [FK_DoktorUnvanlari_Branslar]
GO
ALTER TABLE [dbo].[DoktorUnvanlari]  WITH CHECK ADD  CONSTRAINT [FK_DoktorUnvanlari_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[DoktorUnvanlari] CHECK CONSTRAINT [FK_DoktorUnvanlari_Kullanicilar]
GO
ALTER TABLE [dbo].[Gelirler]  WITH CHECK ADD  CONSTRAINT [FK_Gelirler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Gelirler] CHECK CONSTRAINT [FK_Gelirler_Kullanicilar]
GO
ALTER TABLE [dbo].[Giderler]  WITH CHECK ADD  CONSTRAINT [FK_Giderler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Giderler] CHECK CONSTRAINT [FK_Giderler_Kullanicilar]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_iller]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_KanGruplari]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_Kullanicilar]
GO
ALTER TABLE [dbo].[KanGruplari]  WITH CHECK ADD  CONSTRAINT [FK_KanGruplari_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[KanGruplari] CHECK CONSTRAINT [FK_KanGruplari_Kullanicilar]
GO
ALTER TABLE [dbo].[Klinikler]  WITH CHECK ADD  CONSTRAINT [FK_Klinikler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Klinikler] CHECK CONSTRAINT [FK_Klinikler_Kullanicilar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Yetkiler] FOREIGN KEY([YetkiID])
REFERENCES [dbo].[Yetkiler] ([YetkilerID])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Yetkiler]
GO
ALTER TABLE [dbo].[KurumsalGelirler]  WITH CHECK ADD  CONSTRAINT [FK_KurumsalGelirler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[KurumsalGelirler] CHECK CONSTRAINT [FK_KurumsalGelirler_Kullanicilar]
GO
ALTER TABLE [dbo].[KurumsalGiderler]  WITH CHECK ADD  CONSTRAINT [FK_KurumsalGiderler_Giderler] FOREIGN KEY([GiderID])
REFERENCES [dbo].[Giderler] ([GiderlerID])
GO
ALTER TABLE [dbo].[KurumsalGiderler] CHECK CONSTRAINT [FK_KurumsalGiderler_Giderler]
GO
ALTER TABLE [dbo].[KurumsalGiderler]  WITH CHECK ADD  CONSTRAINT [FK_KurumsalGiderler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[KurumsalGiderler] CHECK CONSTRAINT [FK_KurumsalGiderler_Kullanicilar]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_iller]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_KanGruplari]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_Kullanicilar]
GO
