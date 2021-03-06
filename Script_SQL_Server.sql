CREATE TABLE [dbo].[BAIBAO](
	[NewsID] [int] NOT NULL,
	[Tomtat] [varchar](255) NOT NULL,
	[Tieude] [varchar](255) NOT NULL,
	[Filebaocao] [varchar](255) NOT NULL,
	[Phanbien] [bit] NOT NULL,
	[Phanhoiphanbien] [bit] NOT NULL,
	[Hoantatphanbien] [bit] NOT NULL,
	[Xuatban] [bit] NOT NULL,
	[Dadang] [bit] NOT NULL,
	[TACGIA_AuthorID] [int] NULL,
	[ngaygui] [date] NULL,
 CONSTRAINT [BAIBAO_pk] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIBAO_TUKHOA]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIBAO_TUKHOA](
	[Tukhoa] [varchar](255) NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [BAIBAO_TUKHOA_pk] PRIMARY KEY CLUSTERED 
(
	[BAIBAO_NewsID] ASC,
	[Tukhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIBAODADUOCCHAPNHAN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIBAODADUOCCHAPNHAN](
	[DOI] [int] NOT NULL,
	[OpenAccess] [bit] NOT NULL,
	[TruyenThong] [bit] NOT NULL,
	[NHAXUATBANCONGTAC_NXBID] [int] NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [BAIBAODADUOCCHAPNHAN_pk] PRIMARY KEY CLUSTERED 
(
	[BAIBAO_NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIPHANBIEN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIPHANBIEN](
	[BPBID] [int] NOT NULL,
	[Danhchotacgia] [varchar](255) NOT NULL,
	[Danhchobanbientap] [varchar](255) NOT NULL,
	[Noidung] [varchar](255) NOT NULL,
	[Ngaythongbaodentacgia] [date] NOT NULL,
	[Cacchitietkhac] [varchar](255) NOT NULL,
	[Chapnhan] [bit] NOT NULL,
	[Tuchoi] [bit] NOT NULL,
	[Suadoiit] [bit] NOT NULL,
	[Suadoinhieu] [bit] NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [BAIPHANBIEN_pk] PRIMARY KEY CLUSTERED 
(
	[BPBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANBIENTAP]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANBIENTAP](
	[BBTID] [int] NOT NULL,
	[NHAKHOAHOC_ScientistID] [int] NOT NULL,
 CONSTRAINT [BANBIENTAP_pk] PRIMARY KEY CLUSTERED 
(
	[BBTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[usertype] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGHIENCUU]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGHIENCUU](
	[Dodai] [int] NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [NGHIENCUU_pk] PRIMARY KEY CLUSTERED 
(
	[BAIBAO_NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAKHOAHOC]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAKHOAHOC](
	[ScientistID] [int] NOT NULL,
	[Chuyennganh] [varchar](255) NOT NULL,
 CONSTRAINT [ScientistID] PRIMARY KEY CLUSTERED 
(
	[ScientistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAPHANBIEN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPHANBIEN](
	[Trinhdo] [varchar](255) NOT NULL,
	[Ngaycontac] [date] NOT NULL,
	[Emailcoquan] [varchar](255) NOT NULL,
	[Emailcanhan] [varchar](255) NOT NULL,
	[PBID] [int] NOT NULL,
	[Dienthoai] [varchar](10) NOT NULL,
	[Coquancongtac] [varchar](255) NOT NULL,
	[NgheNghiep] [varchar](255) NOT NULL,
	[Diachi] [varchar](255) NOT NULL,
	[NHAKHOAHOC_ScientistID] [int] NOT NULL,
 CONSTRAINT [NHAPHANBIEN_pk] PRIMARY KEY CLUSTERED 
(
	[PBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBANCONGTAC]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBANCONGTAC](
	[NXBID] [int] NOT NULL,
	[TenNXB] [varchar](255) NOT NULL,
	[Diachi] [varchar](255) NOT NULL,
 CONSTRAINT [NHAXUATBANCONGTAC_pk] PRIMARY KEY CLUSTERED 
(
	[NXBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANBIENSACH]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANBIENSACH](
	[Nhaxuatban] [varchar](255) NOT NULL,
	[Tensach] [varchar](255) NOT NULL,
	[Namxuatban] [int] NOT NULL,
	[ISBN] [int] NOT NULL,
	[Tongsotrang] [int] NOT NULL,
	[Dodai] [int] NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [PHANBIENSACH_pk] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANBIENSACH_TENTACGIA]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANBIENSACH_TENTACGIA](
	[Tencactacgia] [varchar](255) NOT NULL,
	[PHANBIENSACH_ISBN] [int] NOT NULL,
 CONSTRAINT [PHANBIENSACH_TENTACGIA_pk] PRIMARY KEY CLUSTERED 
(
	[PHANBIENSACH_ISBN] ASC,
	[Tencactacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONGPHANBIEN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONGPHANBIEN](
	[Ngayphancong] [date] NOT NULL,
	[Tennguoiphanbien] [varchar](255) NOT NULL,
	[BANBIENTAP_BBTID] [int] NOT NULL,
	[BAIPHANBIEN_BPBID] [int] NOT NULL,
 CONSTRAINT [PHANCONGPHANBIEN_pk] PRIMARY KEY CLUSTERED 
(
	[BANBIENTAP_BBTID] ASC,
	[BAIPHANBIEN_BPBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANGTAC]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANGTAC](
	[SANGTAC_IDREF] [int] NULL,
	[BAIBAO_NewsID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[AuthorID] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Diachi] [varchar](255) NOT NULL,
	[Coquancongtac] [varchar](255) NOT NULL,
	[Hoten] [varchar](255) NOT NULL,
	[NgheNghiep] [varchar](255) NOT NULL,
	[NHAKHOAHOC_ScientistID] [int] NOT NULL,
 CONSTRAINT [TACGIA_pk] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIASANGTAC]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIASANGTAC](
	[SANGTAC_ID] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[Diachi] [varchar](50) NULL,
	[Coquancongtac] [varchar](50) NULL,
	[Hoten] [varchar](50) NULL,
	[NHAKHOAHOC_ScientistID] [int] NULL,
 CONSTRAINT [PK_TACGIASANGTAC] PRIMARY KEY CLUSTERED 
(
	[SANGTAC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCHIENPHANBIEN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCHIENPHANBIEN](
	[NHAPHANBIEN_PBID] [int] NOT NULL,
	[BAIPHANBIEN_BPBID] [int] NOT NULL,
	[TIEUCHIDANHGIA_Diem] [int] NOT NULL,
	[TIEUCHIDANHGIA_Mota] [varchar](255) NOT NULL,
	[Thoigianthuchien] [date] NOT NULL,
 CONSTRAINT [THUCHIENPHANBIEN_pk] PRIMARY KEY CLUSTERED 
(
	[BAIPHANBIEN_BPBID] ASC,
	[NHAPHANBIEN_PBID] ASC,
	[TIEUCHIDANHGIA_Diem] ASC,
	[TIEUCHIDANHGIA_Mota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIEUCHIDANHGIA]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIEUCHIDANHGIA](
	[Noidungdanhgia] [varchar](255) NOT NULL,
	[Diem] [int] NOT NULL,
	[Mota] [varchar](255) NOT NULL,
 CONSTRAINT [TIEUCHIDANHGIA_pk] PRIMARY KEY CLUSTERED 
(
	[Diem] ASC,
	[Mota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONGQUAN]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONGQUAN](
	[Dodai] [int] NOT NULL,
	[BAIBAO_NewsID] [int] NOT NULL,
 CONSTRAINT [TONGQUAN_pk] PRIMARY KEY CLUSTERED 
(
	[BAIBAO_NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (1, N'hoa dai cuong', N'hoa hoc', N'hoadc.pdf', 0, 0, 1, 0, 0, 101, CAST(N'2019-01-01' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (2, N'chinhtri', N'cchinhtriVietNam', N'chinhtri.pdf', 0, 1, 0, 0, 0, 104, CAST(N'2019-01-02' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (3, N'vanhoa', N'vanhoaVietNam', N'vanhoa.pdf', 0, 0, 1, 0, 0, 105, CAST(N'2014-07-05' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (4, N'xahoi', N'xahoiVietNam', N'xahoi.pdf', 1, 0, 0, 0, 0, 107, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (5, N'giaoduc', N'giaoducVietNam', N'giaoduc.pdf', 0, 0, 0, 1, 0, 106, CAST(N'2013-07-07' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (6, N'thethao', N'thethaoVietNam', N'thethao.pdf', 0, 0, 0, 0, 1, 101, CAST(N'2021-02-12' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (7, N'congan', N'conganVietNam', N'congan.pdf', 1, 0, 0, 0, 0, 102, CAST(N'2018-10-23' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (8, N'thanhnien', N'thanhnienVietNam', N'thanhnien.pdf', 1, 0, 0, 0, 0, 104, CAST(N'2016-02-21' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (9, N'tuoitre', N'tuoitreVietNam', N'tuoitre.pdf', 0, 0, 0, 1, 0, 103, CAST(N'2019-05-30' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (10, N'zingnews', N'zingnews', N'zingnews.pdf', 1, 0, 0, 0, 0, 105, CAST(N'2012-09-09' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (11, N'baomoi', N'baomoi', N'baomoi.pdf', 0, 1, 0, 0, 0, 101, CAST(N'2019-02-13' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (12, N'vnexpress', N'vnexpress', N'vnexpress.pdf', 0, 1, 0, 0, 0, 103, CAST(N'2020-01-01' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (13, N'dantri', N'dantr', N'dantri.vn', 1, 0, 0, 0, 0, 102, CAST(N'2019-03-01' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (14, N'tienphong', N'tienphongVietNam', N'tienphong.pdf', 0, 1, 0, 0, 0, 107, CAST(N'2019-02-21' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (15, N'thanhnien2', N'thanhnien2', N'thanhnien2.pdf', 0, 0, 0, 1, 0, 106, CAST(N'2017-09-19' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (16, N'nghiencuu', N'nghiencuu', N'nghiencuu.pdf', 1, 0, 0, 0, 0, 104, CAST(N'2015-03-02' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (17, N'tongquan', N'tongquan', N'tongquan', 1, 0, 0, 0, 0, 102, CAST(N'2017-04-04' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (18, N'nghiencuu', N'cuunghien', N'cuunghien', 0, 0, 0, 0, 1, 107, CAST(N'2019-01-01' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (19, N'tongquan', N'quantong', N'quantong', 0, 0, 0, 1, 0, 105, CAST(N'2018-09-09' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (20, N'pbsach', N'pbsach', N'pbsach', 1, 0, 0, 0, 0, 106, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[BAIBAO] ([NewsID], [Tomtat], [Tieude], [Filebaocao], [Phanbien], [Phanhoiphanbien], [Hoantatphanbien], [Xuatban], [Dadang], [TACGIA_AuthorID], [ngaygui]) VALUES (21, N'pbsach', N'pbsach', N'pbsach', 0, 0, 1, 0, 0, 104, CAST(N'2022-02-02' AS Date))
GO
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa1', 1)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa2', 2)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa3', 3)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa4', 4)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa5', 5)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa6', 6)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa7', 7)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa8', 8)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa9', 9)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa10', 10)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa11', 11)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa12', 12)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa13', 13)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa14', 14)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa15', 15)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa16', 16)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa22', 16)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa17', 17)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa18', 18)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa19', 19)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa20', 20)
INSERT [dbo].[BAIBAO_TUKHOA] ([Tukhoa], [BAIBAO_NewsID]) VALUES (N'tukhoa21', 21)
GO
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (4, 1, 0, 204, 1)
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (1, 1, 0, 201, 2)
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (2, 0, 1, 203, 5)
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (3, 1, 0, 205, 8)
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (5, 1, 0, 201, 11)
INSERT [dbo].[BAIBAODADUOCCHAPNHAN] ([DOI], [OpenAccess], [TruyenThong], [NHAXUATBANCONGTAC_NXBID], [BAIBAO_NewsID]) VALUES (6, 0, 1, 202, 14)
GO
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (1, N'note', N'note', N'text', CAST(N'2021-07-08' AS Date), N'text', 1, 0, 0, 0, 1)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (2, N'note', N'note', N'text', CAST(N'2020-08-08' AS Date), N'text', 1, 0, 0, 0, 1)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (3, N'note', N'note', N'text', CAST(N'2020-08-08' AS Date), N'text', 0, 1, 0, 0, 2)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (4, N'note', N'note', N'text', CAST(N'2020-04-04' AS Date), N'text', 1, 0, 0, 0, 2)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (5, N'note', N'note', N'text', CAST(N'2020-04-04' AS Date), N'text', 1, 0, 0, 0, 2)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (6, N'note', N'note', N'text', CAST(N'2021-04-04' AS Date), N'text', 0, 0, 1, 0, 3)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (7, N'note', N'note', N'text', CAST(N'2020-06-06' AS Date), N'text', 0, 1, 0, 0, 4)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (8, N'note', N'note', N'text', CAST(N'2020-08-08' AS Date), N'text', 1, 0, 0, 0, 5)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (9, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 0, 1, 0, 0, 6)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (10, N'note', N'note', N'text', CAST(N'2021-10-10' AS Date), N'text', 0, 1, 0, 1, 7)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (11, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 1, 0, 0, 0, 8)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (12, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 0, 1, 0, 0, 9)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (13, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 0, 1, 0, 0, 10)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (14, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 1, 0, 0, 0, 11)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (15, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 0, 0, 1, 0, 12)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (16, N'note', N'ntoe', N'text', CAST(N'2020-09-09' AS Date), N'text', 0, 1, 0, 0, 13)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (17, N'note', N'note', N'text', CAST(N'2020-09-09' AS Date), N'text', 1, 1, 0, 0, 14)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (18, N'note', N'note', N'text', CAST(N'2020-08-08' AS Date), N'text', 0, 0, 0, 1, 15)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (19, N'note', N'note', N'text', CAST(N'2020-01-01' AS Date), N'text', 1, 0, 0, 0, 16)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (20, N'note', N'text', N'text', CAST(N'2019-05-05' AS Date), N'text', 0, 1, 0, 0, 17)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (21, N'note', N'note', N'text', CAST(N'2019-05-07' AS Date), N'note', 0, 0, 1, 0, 18)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (22, N'ok', N'ok', N'ok', CAST(N'2017-05-04' AS Date), N'ok', 1, 0, 0, 0, 19)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (23, N'alo', N'alo', N'alo', CAST(N'2018-12-10' AS Date), N'alo', 0, 1, 0, 0, 20)
INSERT [dbo].[BAIPHANBIEN] ([BPBID], [Danhchotacgia], [Danhchobanbientap], [Noidung], [Ngaythongbaodentacgia], [Cacchitietkhac], [Chapnhan], [Tuchoi], [Suadoiit], [Suadoinhieu], [BAIBAO_NewsID]) VALUES (24, N'no', N'no', N'no', CAST(N'2016-03-02' AS Date), N'no', 0, 1, 0, 0, 21)
GO
INSERT [dbo].[BANBIENTAP] ([BBTID], [NHAKHOAHOC_ScientistID]) VALUES (1, 160)
INSERT [dbo].[BANBIENTAP] ([BBTID], [NHAKHOAHOC_ScientistID]) VALUES (2, 161)
INSERT [dbo].[BANBIENTAP] ([BBTID], [NHAKHOAHOC_ScientistID]) VALUES (3, 162)
INSERT [dbo].[BANBIENTAP] ([BBTID], [NHAKHOAHOC_ScientistID]) VALUES (4, 163)
INSERT [dbo].[BANBIENTAP] ([BBTID], [NHAKHOAHOC_ScientistID]) VALUES (5, 164)
GO
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'151', N'151', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'152', N'152', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'153', N'153', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'154', N'154', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'155', N'155', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'156', N'156', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'157', N'157', N'tacgia')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'156', N'156', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'157', N'157', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'158', N'158', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'159', N'159', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'160', N'160', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'161', N'161', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'160', N'160', N'banbientap')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'161', N'161', N'banbientap')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'162', N'162', N'banbientap')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'163', N'163', N'banbientap')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'164', N'164', N'banbientap')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'165', N'165', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'166', N'166', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'167', N'167', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'168', N'168', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'169', N'169', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'170', N'170', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'171', N'171', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'172', N'172', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'173', N'173', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'174', N'174', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'175', N'175', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'176', N'176', N'nhaphanbien')
INSERT [dbo].[login] ([username], [password], [usertype]) VALUES (N'177', N'177', N'nhaphanbien')
GO
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (15, 2)
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (14, 4)
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (11, 6)
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (19, 11)
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (17, 16)
INSERT [dbo].[NGHIENCUU] ([Dodai], [BAIBAO_NewsID]) VALUES (18, 18)
GO
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (151, N'toan hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (152, N'vat ly')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (153, N'hoa hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (154, N'sinh hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (155, N'su hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (156, N'dia ly hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (157, N'cong nghe thong tin')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (158, N'van hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (159, N'toan hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (160, N'sinh hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (161, N'kinh te hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (162, N'y hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (163, N'my thuat')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (164, N'van hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (165, N'y co truyen')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (166, N'con nguoi hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (167, N'y hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (168, N'van hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (169, N'cong nghe')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (170, N'anh van')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (171, N'tieng phap')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (172, N'khoa hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (173, N'su hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (174, N'dia ly hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (175, N'toan hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (176, N'sinh hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (177, N'dia chat dau khi')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (178, N'sinh hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (179, N'vat ly')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (180, N'hoa hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (181, N'sinh hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (182, N'hoa hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (183, N'toan hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (184, N'hoa hoc')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (185, N'cong nghe')
INSERT [dbo].[NHAKHOAHOC] ([ScientistID], [Chuyennganh]) VALUES (186, N'dsadsa')
GO
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-07-07' AS Date), N'email', N'email', 6, N'0111111111', N'cq1', N'nn', N'dc', 156)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-07-07' AS Date), N'email', N'email', 7, N'0222222222', N'cq', N'nn', N'dc', 157)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-07-07' AS Date), N'email', N'email', 8, N'0333333332', N'cq', N'nn', N'dc', 158)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dg', CAST(N'2020-07-07' AS Date), N'email', N'email', 9, N'0111111112', N'cq', N'nn', N'dc', 159)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-07-07' AS Date), N'email', N'email', 10, N'0333333224', N'cq', N'nn', N'dc', 160)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-07-07' AS Date), N'email', N'email', 11, N'0444444411', N'cq', N'nn', N'dc', 161)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2021-01-01' AS Date), N'congtac@gmail.com', N'canhan@gmail.com', 12, N'0298390', N'cq12', N'nn', N'dc', 165)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-12-01' AS Date), N'gg@gmail.com', N'alo@gmail.com', 13, N'098231321', N'cq22', N'nn', N'dc', 166)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2020-12-22' AS Date), N'alohoa@gmail.com', N'email', 14, N'09090909', N'cqhanoi', N'nn', N'dc', 167)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2015-04-01' AS Date), N'email', N'email', 15, N'01232313', N'cqcq', N'nn', N'dc', 168)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2016-02-20' AS Date), N'email', N'email', 16, N'023123101', N'cqqc', N'nn', N'cd', 169)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2017-06-07' AS Date), N'email', N'email', 17, N'06565656', N'cqqcqc', N'nn', N'dc', 170)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2018-08-07' AS Date), N'email', N'email', 18, N'04545454', N'cqqcqcq', N'nn', N'dc', 171)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2014-07-09' AS Date), N'email', N'email', 19, N'045454665', N'cqcqc', N'nn', N'dc', 172)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2019-10-20' AS Date), N'email', N'email', 20, N'05656565', N'qcqcqc', N'nn', N'dc', 173)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2015-04-03' AS Date), N'email', N'email', 21, N'098989898', N'cqcqcqcqc', N'nn', N'dc', 174)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2018-03-10' AS Date), N'email', N'email', 22, N'07676767', N'qcqcqc', N'nn', N'dc', 175)
INSERT [dbo].[NHAPHANBIEN] ([Trinhdo], [Ngaycontac], [Emailcoquan], [Emailcanhan], [PBID], [Dienthoai], [Coquancongtac], [NgheNghiep], [Diachi], [NHAKHOAHOC_ScientistID]) VALUES (N'dh', CAST(N'2019-03-01' AS Date), N'email', N'email', 23, N'097979797', N'cqcqcqq', N'nn', N'dc', 176)
GO
INSERT [dbo].[NHAXUATBANCONGTAC] ([NXBID], [TenNXB], [Diachi]) VALUES (201, N'NXB Giao duc', N'45 Tfvgdv')
INSERT [dbo].[NHAXUATBANCONGTAC] ([NXBID], [TenNXB], [Diachi]) VALUES (202, N'NXB Kim Dong', N'84 hdsahh')
INSERT [dbo].[NHAXUATBANCONGTAC] ([NXBID], [TenNXB], [Diachi]) VALUES (203, N'NXB DHQG HCM', N'12 gfhdsa')
INSERT [dbo].[NHAXUATBANCONGTAC] ([NXBID], [TenNXB], [Diachi]) VALUES (204, N'NXB DHQGHN', N'325 Tdbsab')
INSERT [dbo].[NHAXUATBANCONGTAC] ([NXBID], [TenNXB], [Diachi]) VALUES (205, N'NXB Tre', N'45 Udbab')
GO
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB Giao Duc', N'Phan Bien 1', 2021, 51, 1000, 5, 3)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB Kim Dong', N'Phan Bien 2', 2020, 52, 1500, 6, 9)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB DHQG HCM', N'Phan Bien 3', 2020, 53, 1300, 5, 12)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB DHQG HN', N'Phan Bien 4', 2021, 54, 900, 3, 13)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB Tre', N'Phan Bien 5', 2019, 55, 1100, 4, 14)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB BachKhoa', N'Phan Bien', 2013, 56, 1111, 5, 20)
INSERT [dbo].[PHANBIENSACH] ([Nhaxuatban], [Tensach], [Namxuatban], [ISBN], [Tongsotrang], [Dodai], [BAIBAO_NewsID]) VALUES (N'NXB IPM', N'Hóa ÐC', 2015, 57, 1200, 6, 21)
GO
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Tran A', 51)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Tran B', 52)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Tran V', 53)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Tran D', 54)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Tran E', 55)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Ly Bach', 56)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Nguyen Hue', 56)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Quang Trung', 57)
INSERT [dbo].[PHANBIENSACH_TENTACGIA] ([Tencactacgia], [PHANBIENSACH_ISBN]) VALUES (N'Vu Thuan', 57)
GO
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2021-08-08' AS Date), N'Ken', 1, 5)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'iidi', 1, 8)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Tran A', 1, 10)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Gydbsahu Gusf', 2, 3)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Yhbsah uuhu', 2, 6)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'uheuh', 2, 12)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'uwhdu', 2, 16)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'lkdjnasj', 2, 18)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Tjdbsaj ugsadu', 3, 2)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'IJjojdosaj', 3, 9)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Odjia', 3, 13)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Hgvdsa', 4, 4)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Uhds JIdi', 4, 7)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'JIdijji', 4, 11)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'tqftft', 4, 14)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Qdvyy', 4, 17)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'YGdu ugdu', 5, 1)
INSERT [dbo].[PHANCONGPHANBIEN] ([Ngayphancong], [Tennguoiphanbien], [BANBIENTAP_BBTID], [BAIPHANBIEN_BPBID]) VALUES (CAST(N'2020-07-07' AS Date), N'Ojdba', 5, 15)
GO
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (1, 1)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (2, 2)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (3, 3)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (4, 4)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (5, 5)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (6, 6)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (7, 7)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (8, 8)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (1, 3)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (2, 7)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (3, 6)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (6, 8)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (5, 3)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (1, 21)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (2, 9)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (3, 10)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (4, 11)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (5, 12)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (6, 13)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (7, 14)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (8, 15)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (4, 16)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (5, 17)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (6, 18)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (7, 19)
INSERT [dbo].[SANGTAC] ([SANGTAC_IDREF], [BAIBAO_NewsID]) VALUES (8, 20)
GO
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (101, N'huytr', N'd?', N'dá', N'huy', N'dsadád', 151)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (102, N'email2@gmail.com', N'15 Ytdyas', N'co quan 2 ', N'Nguyen Van B', N'nha bao', 152)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (103, N'email3@gmail.com', N'186 Rdnsa', N'co quan 3 ', N'Tran Van C', N'nha bao ', 153)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (104, N'email4@gmail.com', N'151 bBudbus', N'co quan 4', N'Tran Van D', N'nha bao', 154)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (105, N'dbs@gmail.com', N'51 uiaihe', N'co quan 5 ', N'Trsadn udsau', N'nha bao ', 155)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (106, N'dsjandi@gmail.com', N'848 ydgsay', N'co quan 1', N'RThdsbau', N'nha bao', 156)
INSERT [dbo].[TACGIA] ([AuthorID], [Email], [Diachi], [Coquancongtac], [Hoten], [NgheNghiep], [NHAKHOAHOC_ScientistID]) VALUES (107, N'hdusahd@gmail.com', N'8 Gudhsaas', N'co quan 6', N'HUdsuh', N'nha bao', 157)
GO
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (1, N'123@gmail.com', N'go vap', N'co quan 1', N'Minh Quan', 178)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (2, N'hcmut@gmail.com', N'ba vi', N'co quan 2', N'Chi Tai', 179)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (3, N'vuthuan@gmail.com', N'hoan kiem', N'co quan 3', N'Vu Thuan', 180)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (4, N'nhathuy@gmail.com', N'dong nai', N'co quan 4', N'Nhat Huy', 181)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (5, N'chitai@edu.vn', N'hue', N'co quan 5', N'Chi Tai', 182)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (6, N'haha@gmail.com', N'ca mau', N'co quan 6', N'Ma Phong', 183)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (7, N'hihi@gmail.com', N'ha long', N'co quan 7', N'Dac Ky', 184)
INSERT [dbo].[TACGIASANGTAC] ([SANGTAC_ID], [Email], [Diachi], [Coquancongtac], [Hoten], [NHAKHOAHOC_ScientistID]) VALUES (8, N'pholong@gmail.com', N'long an', N'co quan 8', N'Chi Khai', 185)
GO
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (12, 1, 8, N'Tot', CAST(N'2021-09-09' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (13, 2, 3, N'Te', CAST(N'2021-02-01' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (14, 3, 10, N'Rat tot', CAST(N'2020-04-04' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (15, 4, 5, N'Binh thuong', CAST(N'2020-02-20' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 5, 8, N'Tot', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (8, 6, 8, N'Tot', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (9, 7, 8, N'Tot', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (10, 8, 5, N'Binh thuong', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (11, 9, 8, N'Tot', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (16, 10, 5, N'Binh thuong', CAST(N'2020-10-23' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (17, 11, 3, N'Te', CAST(N'2020-02-20' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (18, 12, 10, N'Rat tot', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (19, 13, 10, N'Rat tot', CAST(N'2020-11-11' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (20, 14, 8, N'Tot', CAST(N'2020-12-12' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (21, 15, 5, N'Binh thuong', CAST(N'2020-09-09' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (22, 16, 10, N'Rat tot', CAST(N'2020-02-10' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (7, 17, 10, N'Rat tot', CAST(N'2020-07-07' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (23, 18, 3, N'Te', CAST(N'2021-10-09' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 19, 10, N'Rat tot', CAST(N'2021-08-08' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 20, 8, N'Tot', CAST(N'2021-10-09' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 21, 5, N'Binh thuong', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 22, 3, N'Te', CAST(N'2021-11-11' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 23, 10, N'Rat tot', CAST(N'2021-02-02' AS Date))
INSERT [dbo].[THUCHIENPHANBIEN] ([NHAPHANBIEN_PBID], [BAIPHANBIEN_BPBID], [TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota], [Thoigianthuchien]) VALUES (6, 24, 8, N'Tot', CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[TIEUCHIDANHGIA] ([Noidungdanhgia], [Diem], [Mota]) VALUES (N'Kem', 0, N'Rat te')
INSERT [dbo].[TIEUCHIDANHGIA] ([Noidungdanhgia], [Diem], [Mota]) VALUES (N'Yeu', 3, N'Te')
INSERT [dbo].[TIEUCHIDANHGIA] ([Noidungdanhgia], [Diem], [Mota]) VALUES (N'Trung Binh', 5, N'Binh thuong')
INSERT [dbo].[TIEUCHIDANHGIA] ([Noidungdanhgia], [Diem], [Mota]) VALUES (N'Tot', 8, N'Tot')
INSERT [dbo].[TIEUCHIDANHGIA] ([Noidungdanhgia], [Diem], [Mota]) VALUES (N'Rat tot', 10, N'Rat tot')
GO
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (3, 1)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (4, 5)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (6, 7)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (7, 8)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (9, 10)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (8, 17)
INSERT [dbo].[TONGQUAN] ([Dodai], [BAIBAO_NewsID]) VALUES (5, 19)
GO
ALTER TABLE [dbo].[BAIBAO]  WITH CHECK ADD FOREIGN KEY([TACGIA_AuthorID])
REFERENCES [dbo].[TACGIA] ([AuthorID])
GO
ALTER TABLE [dbo].[BAIBAO_TUKHOA]  WITH CHECK ADD  CONSTRAINT [BAIBAO_TUKHOA_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BAIBAO_TUKHOA] CHECK CONSTRAINT [BAIBAO_TUKHOA_BAIBAO]
GO
ALTER TABLE [dbo].[BAIBAODADUOCCHAPNHAN]  WITH CHECK ADD  CONSTRAINT [BAIBAODADUOCCHAPNHAN_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
GO
ALTER TABLE [dbo].[BAIBAODADUOCCHAPNHAN] CHECK CONSTRAINT [BAIBAODADUOCCHAPNHAN_BAIBAO]
GO
ALTER TABLE [dbo].[BAIBAODADUOCCHAPNHAN]  WITH CHECK ADD  CONSTRAINT [BAIBAODADUOCCHAPNHAN_NHAXUATBANCONGTAC] FOREIGN KEY([NHAXUATBANCONGTAC_NXBID])
REFERENCES [dbo].[NHAXUATBANCONGTAC] ([NXBID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BAIBAODADUOCCHAPNHAN] CHECK CONSTRAINT [BAIBAODADUOCCHAPNHAN_NHAXUATBANCONGTAC]
GO
ALTER TABLE [dbo].[BAIPHANBIEN]  WITH CHECK ADD  CONSTRAINT [BAIPHANBIEN_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BAIPHANBIEN] CHECK CONSTRAINT [BAIPHANBIEN_BAIBAO]
GO
ALTER TABLE [dbo].[BANBIENTAP]  WITH CHECK ADD  CONSTRAINT [BANBIENTAP_NHAKHOAHOC] FOREIGN KEY([NHAKHOAHOC_ScientistID])
REFERENCES [dbo].[NHAKHOAHOC] ([ScientistID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BANBIENTAP] CHECK CONSTRAINT [BANBIENTAP_NHAKHOAHOC]
GO
ALTER TABLE [dbo].[NGHIENCUU]  WITH CHECK ADD  CONSTRAINT [NGHIENCUU_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NGHIENCUU] CHECK CONSTRAINT [NGHIENCUU_BAIBAO]
GO
ALTER TABLE [dbo].[NHAPHANBIEN]  WITH CHECK ADD FOREIGN KEY([NHAKHOAHOC_ScientistID])
REFERENCES [dbo].[NHAKHOAHOC] ([ScientistID])
GO
ALTER TABLE [dbo].[PHANBIENSACH]  WITH CHECK ADD  CONSTRAINT [PHANBIENSACH_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANBIENSACH] CHECK CONSTRAINT [PHANBIENSACH_BAIBAO]
GO
ALTER TABLE [dbo].[PHANBIENSACH_TENTACGIA]  WITH CHECK ADD  CONSTRAINT [PHANBIENSACH_TENTACGIA_PHANBIENSACH] FOREIGN KEY([PHANBIENSACH_ISBN])
REFERENCES [dbo].[PHANBIENSACH] ([ISBN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANBIENSACH_TENTACGIA] CHECK CONSTRAINT [PHANBIENSACH_TENTACGIA_PHANBIENSACH]
GO
ALTER TABLE [dbo].[PHANCONGPHANBIEN]  WITH CHECK ADD FOREIGN KEY([BANBIENTAP_BBTID])
REFERENCES [dbo].[BANBIENTAP] ([BBTID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANCONGPHANBIEN]  WITH CHECK ADD  CONSTRAINT [PHANCONGPHANBIEN_BAIPHANBIEN] FOREIGN KEY([BAIPHANBIEN_BPBID])
REFERENCES [dbo].[BAIPHANBIEN] ([BPBID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANCONGPHANBIEN] CHECK CONSTRAINT [PHANCONGPHANBIEN_BAIPHANBIEN]
GO
ALTER TABLE [dbo].[SANGTAC]  WITH CHECK ADD FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
GO
ALTER TABLE [dbo].[SANGTAC]  WITH CHECK ADD FOREIGN KEY([SANGTAC_IDREF])
REFERENCES [dbo].[TACGIASANGTAC] ([SANGTAC_ID])
GO
ALTER TABLE [dbo].[TACGIA]  WITH CHECK ADD  CONSTRAINT [TACGIA_NHAKHOAHOC] FOREIGN KEY([NHAKHOAHOC_ScientistID])
REFERENCES [dbo].[NHAKHOAHOC] ([ScientistID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TACGIA] CHECK CONSTRAINT [TACGIA_NHAKHOAHOC]
GO
ALTER TABLE [dbo].[TACGIASANGTAC]  WITH CHECK ADD FOREIGN KEY([NHAKHOAHOC_ScientistID])
REFERENCES [dbo].[NHAKHOAHOC] ([ScientistID])
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN]  WITH CHECK ADD  CONSTRAINT [THUCHIENPHANBIEN_BAIPHANBIEN] FOREIGN KEY([BAIPHANBIEN_BPBID])
REFERENCES [dbo].[BAIPHANBIEN] ([BPBID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN] CHECK CONSTRAINT [THUCHIENPHANBIEN_BAIPHANBIEN]
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN]  WITH CHECK ADD  CONSTRAINT [THUCHIENPHANBIEN_NHAPHANBIEN] FOREIGN KEY([NHAPHANBIEN_PBID])
REFERENCES [dbo].[NHAPHANBIEN] ([PBID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN] CHECK CONSTRAINT [THUCHIENPHANBIEN_NHAPHANBIEN]
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN]  WITH CHECK ADD  CONSTRAINT [THUCHIENPHANBIEN_TIEUCHIDANHGIA] FOREIGN KEY([TIEUCHIDANHGIA_Diem], [TIEUCHIDANHGIA_Mota])
REFERENCES [dbo].[TIEUCHIDANHGIA] ([Diem], [Mota])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THUCHIENPHANBIEN] CHECK CONSTRAINT [THUCHIENPHANBIEN_TIEUCHIDANHGIA]
GO
ALTER TABLE [dbo].[TONGQUAN]  WITH CHECK ADD  CONSTRAINT [TONGQUAN_BAIBAO] FOREIGN KEY([BAIBAO_NewsID])
REFERENCES [dbo].[BAIBAO] ([NewsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TONGQUAN] CHECK CONSTRAINT [TONGQUAN_BAIBAO]
GO
ALTER TABLE [dbo].[NGHIENCUU]  WITH CHECK ADD CHECK  (([Dodai]>=(10) AND [Dodai]<=(20)))
GO
ALTER TABLE [dbo].[PHANBIENSACH]  WITH CHECK ADD CHECK  (([Dodai]>=(3) AND [Dodai]<=(6)))
GO
ALTER TABLE [dbo].[TONGQUAN]  WITH CHECK ADD CHECK  (([Dodai]>=(3) AND [Dodai]<=(10)))
GO
/****** Object:  StoredProcedure [dbo].[checked]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[checked]
@ID INT

AS
IF EXISTS (SELECT * FROM  BAIBAO JOIN BAIPHANBIEN ON NewsID = BAIBAO_NewsID WHERE NewsID = @ID AND Chapnhan = 1 AND Xuatban = 1)
BEGIN
	SELECT 1
END
ELSE 
BEGIN
	SELECT 0
END
GO
/****** Object:  Trigger [dbo].[Check_capnhatbaibao]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Check_capnhatbaibao]
ON [dbo].[BAIBAO]
INSTEAD OF UPDATE
AS
BEGIN
declare @ngay DATE;
 SELECT @ngay=Thoigianthuchien from (inserted i JOIN BAIPHANBIEN ON i.NewsID = BAIBAO_NewsID) JOIN THUCHIENPHANBIEN p ON BAIPHANBIEN_BPBID = BPBID;
declare @ngay2 DATE;
  SELECT @ngay2 = i.ngaygui from inserted i JOIN BAIBAO ON i.NewsID = BAIBAO.NewsID;
declare @ID INT;
	SELECT @ID = i.NewsID from inserted i;
declare @check BIT;
  EXEC @check = dbo.checked @ID;
IF @ngay < CURRENT_TIMESTAMP AND @ngay2 < CURRENT_TIMESTAMP AND @check = 1
BEGIN
RAISERROR('Trigger failed',16,1);
END
END
GO
ALTER TABLE [dbo].[BAIBAO] ENABLE TRIGGER [Check_capnhatbaibao]
GO
/****** Object:  Trigger [dbo].[Check_capnhatphanbien]    Script Date: 12/3/2021 9:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Check_capnhatphanbien]
ON [dbo].[BAIPHANBIEN]
INSTEAD OF INSERT, UPDATE
AS
BEGIN
declare @ngay DATE;
 SELECT @ngay=Thoigianthuchien from inserted i JOIN THUCHIENPHANBIEN p ON i.BPBID = p.BAIPHANBIEN_BPBID;
declare @ngay2 DATE;
 SELECT @ngay2 = i.Ngaythongbaodentacgia from inserted i JOIN BAIBAO ON i.BAIBAO_NewsID = NewsID WHERE BAIBAO.Phanbien = 0 AND BAIBAO.Phanhoiphanbien=0; 
declare @ID INT;
	SELECT @ID = i.BAIBAO_NewsID from inserted i;
declare @check BIT;
  EXEC @check = dbo.checked @ID;
IF @ngay < CURRENT_TIMESTAMP AND @ngay2 < CURRENT_TIMESTAMP AND @check = 1
BEGIN
RAISERROR('Trigger failed',16,1);
END
END
GO
ALTER TABLE [dbo].[BAIPHANBIEN] ENABLE TRIGGER [Check_capnhatphanbien]
GO
