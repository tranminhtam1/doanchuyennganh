USE [master]
GO
/****** Object:  Database [DBLAPTOP]    Script Date: 27/07/2021 5:47:12 PM ******/
CREATE DATABASE [DBLAPTOP]
GO
USE [DBLAPTOP]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 27/07/2021 5:47:12 PM ******/
CREATE TABLE [dbo].[Blog](
	[IDBlog] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[DateCreate] [datetime] NULL,
	[IDTopic] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[image] [ntext] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[IDBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Brand__06B772B980090CAB] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Category__23CAF1F843DF9592] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contactID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[detail] [ntext] NOT NULL,
	[dateCreate] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
	[phone] [nchar](12) NOT NULL,
 CONSTRAINT [PK__Contact__7121FD1519254272] PRIMARY KEY CLUSTERED 
(
	[contactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[discountID] [int] IDENTITY(1,1) NOT NULL,
	[discountCode] [nchar](30) NOT NULL,
	[value] [int] NOT NULL,
	[conditionMoney] [int] NOT NULL,
	[note] [ntext] NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[image] [ntext] NULL,
 CONSTRAINT [PK__Discount__D2130A06D0203851] PRIMARY KEY CLUSTERED 
(
	[discountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[reduceMoney] [int] NULL,
	[totalMoney] [int] NOT NULL,
	[dateCreate] [datetime] NOT NULL,
	[dateArrive] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK__Order__0809337D7AB64A78] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[amountMoney] [int] NOT NULL,
 CONSTRAINT [PK__OrderDet__BAD83E695BC0FFD2] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NOT NULL,
	[brandID] [int] NOT NULL,
	[productName] [nvarchar](max) NOT NULL,
	[productPrice] [int] NOT NULL,
	[productDetail] [ntext] NOT NULL,
	[image] [nchar](255) NULL,
	[dateCreate] [datetime] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK__Product__2D10D14A4880F9DB] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Role__CD98460A3641BB5D] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[IDTopic] [int] IDENTITY(1,1) NOT NULL,
	[NameTopic] [nvarchar](100) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[IDTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27/07/2021 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NOT NULL,
	[fullName] [nvarchar](100) NOT NULL,
	[userName] [nchar](55) NULL,
	[password] [nchar](55) NULL,
	[email] [nchar](55) NULL,
	[phoneNumber] [nchar](12) NULL,
	[address] [nvarchar](255) NULL,
	[image] [nvarchar](max) NULL,
	[gender] [bit] NOT NULL,
	[dateOfBirth] [date] NOT NULL,
	[idSocial] [nvarchar](255) NULL,
 CONSTRAINT [PK__User__CB9A1CDF2E7C40A2] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 
GO
INSERT [dbo].[Blog] ([IDBlog], [Title], [Content], [DateCreate], [IDTopic], [UserID], [image]) VALUES (8, N'????nh gi?? Laptop Dell Latitude E7390', N'<p><em>????? mang ?????n hi???u qu??? kinh doanh th&ocirc;ng minh b???n kh&ocirc;ng th??? b??? qua laptop&nbsp;<strong>Dell Latitude 7390</strong>&nbsp;&ndash; Chi???c m&aacute;y n???i b???t nh???t trong d&ograve;ng Dell Latitude 7000 series v???i CPU Kaby Lake Refresh v&agrave; Dell r???t ?????y t?? khi trang b??? cho Dell Latitude E7390 m???t khe c???m th??? th&ocirc;ng minh c??ng nh?? c&aacute;c t&iacute;nh n??ng b???o m???t n&acirc;ng cao. Ngo&agrave;i ra vi???c Dell Latitude E7390 c&ograve;n s??? h???u th???i l?????ng pin d&agrave;i, m&agrave;n h&igrave;nh full HD, k???t n???i v&agrave; thi???t b??? ?????u v&agrave;o ?????u ??&aacute;p ???ng nhu c???u c???a d&acirc;n kinh doanh chuy&ecirc;n nghi???p.</em></p>

<p><img src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%201.jpg" /></p>

<p>Dell Latitude E7390 l&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nh&acirc;n di ?????ng ??? t???m gi&aacute; trung v???i ?????nh d???ng 14 inch, c??ng l&agrave; ng?????i k??? nhi???m c???a &nbsp;Dell Latitude 13 7380, v???i b??? vi x??? l&yacute; Intel Core i5-8350U l&otilde;i &nbsp;t??? ??i k&egrave;m v???i 8 GB RAM. ????? h???a GPU b??? x??? l&yacute; Intel HD Graphics 620 v&agrave; gi???i ph&aacute;p l??u tr??? l&agrave; SSD 256 GB&nbsp;</p>

<p><strong>Dell Latitude E7390</strong>&nbsp;ghi ??i???m v???i g&oacute;i b???o m???t ho&agrave;n ch???nh gi&uacute;p t???o s??? kh&aacute;c bi???t v???i ph???n l???n c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghi???p b???ng khe c???m th??? th&ocirc;ng minh v&agrave; ???????c ho&agrave;n thi???n b???i Windows 10 Pro. V???i tr???ng l?????ng n???ng 1,3 kg v&agrave; m&agrave;n h&igrave;nh IPS Full HD c&oacute; ????? ph&acirc;n gi???i 1920x1080 pixel.&nbsp;</p>

<h2><img alt="Thi???t k?????Dell Latitude E7390 ????n gi???n" src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%206.jpg" /><br />
&nbsp;</h2>

<h2><strong>Thi???t k???&nbsp;Dell Latitude E7390 ????n gi???n, ch???c ch???n v&agrave; b??? m???t ch???ng tr?????t</strong></h2>

<p>L???p v??? c???a&nbsp;<strong>Dell Latitude E7390</strong>&nbsp;???????c thi???t k??? g???n nh?? l&agrave; m&agrave;u ??en m??? c&oacute; h?????ng thon v??? n???p m???, n???i b???t s??? ????n gi???n thanh l???ch. Ngo&agrave;i logo Dell, ???????ng line s???c t????ng ph???n m&agrave;u s???c ??? c???nh d?????i c???a m???t sau, n&uacute;t B???t / T???t ??? b???n l???. B??? m???t ph??? l???p cao su m???ng ch???ng tr?????t ??? ????? v&agrave; m???t sau c???a n???p. Khi c???m l&acirc;u trong th???i gian d&agrave;i m&aacute;y v???n ????? l???i d???u v&acirc;n tay m???.<br />
D&ugrave; m&aacute;y ch???u t&aacute;c ?????ng va ch???m nh??ng v???i ch???t li???u cao c???p h???p kim magie ???????c trang b??? cho&nbsp;<strong>Dell Latitude E7390</strong>&nbsp;v???n ?????m b???o ????? b???n b???, m&aacute;y c&oacute; th??? ???????c m??? ?????n h??n 180 &deg; v&agrave; khi m??? 1 g&oacute;c 135 &deg; m???t sau ???????c n&acirc;ng l&ecirc;n b???i n???p m&aacute;y gi&uacute;p m&aacute;y ch???ng tr?????t.&nbsp;<br />
So v???i ng?????i ti???n nhi???m, Latitude 13 7380, tr???ng l?????ng v&agrave; k&iacute;ch th?????c c???a Dell Latitude E7390 g???n nh?? ???????c t???i ??u v??? ????? m???ng.</p>

<p><img alt="B???o m???t h??n v???i th??? th??ng minh??Dell Latitude E7390" src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%202.jpg" /></p>

<p>&nbsp;</p>

<h2><strong>B???o m???t h??n v???i th??? th&ocirc;ng minh&nbsp;Dell Latitude E7390</strong></h2>

<p><strong>Dell Latitude E7390</strong>&nbsp;???????c ph&acirc;n bi???t b???i thi???t b??? k???t n???i v???ng ch???c hai c???ng k???t n???i USB 3.1 Gen1, c&ograve;n c&oacute; m???t k???t n???i USB Type-C v???i DisplayPort, Ethernet, m???t khe c???m d&agrave;nh cho Th??? microSD v&agrave; khay micro-SIM cho m&ocirc;-??un WLAN t&ugrave;y ch???n.&nbsp;<br />
?????u ?????c th??? SD<br />
Kh&ocirc;ng gi???ng nh?? ?????u ?????c th??? c???a ng?????i ti???n nhi???m, ?????u ?????c th??? c???a Dell Latitude E7390 m???i ???????c k???t n???i qua PCIe v&agrave; k???t n???i USB-3.0 do ??&oacute; cho th???y t???c ????? truy???n r???t t???t.&nbsp;<br />
Dell s??? d???ng m&ocirc;-??un WLAN Intel Wireless AC-8265. M&ocirc;-??un t&iacute;ch h???p Bluetooth 4.2 v&agrave; ?????t ???????c t???c ????? t???ng d??? li???u t???i ??a l&agrave; 867 MBit / s, nh??? MIMO 2x2 ??? b??ng t???n 5 GHz. B???o v???<br />
Kh??? n??ng b???o m???t ho&agrave;n ch???nh t??? TPM 2.0 cho ?????n c???m bi???n v&acirc;n tay, th??? th&ocirc;ng minh v&agrave; m&atilde; h&oacute;a ??? c???ng Bitlocker th&ocirc;ng qua Windows 10 Pro, m???i th??? m&agrave; ng?????i d&ugrave;ng doanh nghi???p di ?????ng c&oacute; th??? mong mu???n ?????u ???????c s??? h???u.&nbsp;</p>

<p>&nbsp;</p>

<h2><strong>B&agrave;n ph&iacute;m Dell Latitude E7390 ch???t l?????ng cao v&agrave; ?????c ??&aacute;o</strong></h2>

<p>V???i Dell Latitude E7390, Dell ??&atilde; th&agrave;nh c&ocirc;ng trong vi???c c???i thi???n kh??? n??ng tr???i nghi???m b&agrave;n ph&iacute;m v???i b??? m???t 2 cm ph&ugrave; h???p v???i b&agrave;n ph&iacute;m ti&ecirc;u chu???n, kho???ng c&aacute;ch ph&iacute;m b???n s??? m???t th???i gian ?????u l&agrave;m quen v&agrave; ????? t??ng t???c ????? g&otilde; ph&iacute;m. Ph&iacute;m Escape c??ng ??&oacute;ng vai tr&ograve; l&agrave; ph&iacute;m Fn-Lock v&agrave; do ??&oacute; c&oacute; th??? s??? d???ng ??&egrave;n LED khi thi???u s&aacute;ng.<br />
C&aacute;c ph&iacute;m ???????c d&aacute;n nh&atilde;n c&ocirc;ng th&aacute;i h???c c&oacute; h&igrave;nh d???ng h??i l&otilde;m, nh??ng t???t c??? c&aacute;c ph&iacute;m kh&aacute;c ?????u kh&aacute; ph???ng. V???i ??i???m nh???n d??? nh???n th???y v&agrave; h&agrave;nh tr&igrave;nh ng???n, c&aacute;c ph&iacute;m???????c ?????m nh???, mang ?????n tr???i nghi???m ??&aacute;nh m&aacute;y th???a m&atilde;n v&agrave; c???m gi&aacute;c x&uacute;c gi&aacute;c ch???t l?????ng cao, b&agrave;n ph&iacute;m n&agrave;y kh&ocirc;ng thua k&eacute;m g&igrave; b&agrave;n ph&iacute;m ThinkPad lo???i t???t.&nbsp;</p>

<p><img alt="B??n ph??m Dell Latitude E7390 ch???t l?????ng cao v?? ?????c ????o" src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%203.jpg" /></p>

<p><br />
<strong>B&agrave;n di chu???t</strong><br />
B&agrave;n di chu???t l???n v???i c&aacute;c ph&iacute;m ???????c t&aacute;ch bi???t. B??? m???t ???????c l&agrave;m nh&aacute;m ??? m???c ????? t???i thi???u, ?????m b???o ng&oacute;n tay ???m d??? d&agrave;ng tr?????t. Con tr??? chu???t c&oacute; th??? ???????c di chuy???n v???i ????? ch&iacute;nh x&aacute;c v&agrave; c&aacute;c chuy???n ?????ng nhanh kh&ocirc;ng t???o ra ????? tr???.&nbsp;</p>

<h2><strong>M&agrave;n h&igrave;nh Dell Latitude E7390</strong>&nbsp;<strong>????? t????ng ph???n cao v&agrave; kh&ocirc;ng c&oacute; PWM / CABC</strong></h2>

<p>Dell ??ang s??? d???ng t???m n???n IPS v???i ????? ph&acirc;n gi???i Full HD, 165 PPI, cho h&igrave;nh ???nh s???c n&eacute;t. Ph&acirc;n b??? ????? s&aacute;ng l&ecirc;n ?????n 92% cho m&agrave;u s???c s&aacute;ng h??n v&agrave; m&agrave;u ??en kh&ocirc;ng qu&aacute; b??? t???i v&agrave; bi???n ?????i. ????? t????ng ph???n tuy???t v???i t??? l??? 1316: 1 mang ?????n ????? ch&iacute;nh x&aacute;c m&agrave;u s???c cao kh&ocirc;ng c???n c??n ch???nh m&agrave;u. ????? ph??? kh&ocirc;ng gian m&agrave;u ti&ecirc;u chu???n sRGB 90,6%. C???m ???ng nhanh nh???y kh&ocirc;ng x???y ra t&igrave;nh tr???ng gi???t lag, ph&ugrave; h???p khi l?????t web v&agrave; ?????c b&aacute;o.</p>

<p><img alt="M??n h??nh Dell Latitude E7390??????? t????ng ph???n cao " src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%204.jpg" /></p>

<h2><strong>Hi???u su???t&nbsp;Dell Latitude E7390&nbsp;b???n l&otilde;i SSD</strong></h2>

<p><strong>B??? x??? l&yacute;</strong><br />
<strong>Dell Latitude E7390</strong>&nbsp;???????c trang b??? chip Intel Core i5-8350U l&otilde;i t??? v???i TDP 15 watt, th??? h??? Kaby Lake Refresh mang ?????n t???c ????? xung nh???p c?? b???n 1,7 GHz, c&oacute; th??? t??ng l&ecirc;n ?????n 3,6 GHz th&ocirc;ng qua Turbo. Ngo&agrave;i GPU Intel UHD Graphics 620, b??? vi x??? l&yacute; n&agrave;y c??ng t&iacute;ch h???p b??? ??i???u khi???n l??u tr??? DDR4 v&agrave; x??? l&yacute; m&atilde; h&oacute;a v&agrave; gi???i m&atilde; t&agrave;i li???u video H.265 trong ph???n c???ng. Theo Intel, hi???u su???t s??? t??ng kho???ng 40% so v???i c&aacute;c chip Kaby Lake th??? h??? ?????u ti&ecirc;n. Chip i5-8350U l&agrave;m ch??? c&ocirc;ng ngh??? vPro c???a Intel.&nbsp;</p>

<p><img alt="Hi???u su???t??Dell Latitude E7390??b???n l??i SSD" src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%205.jpg" /></p>

<p>C&aacute;c t&aacute;c v??? v??n ph&ograve;ng th&ocirc;ng th?????ng ?????u ???????c gi???i quy???t nhanh ch&oacute;ng, n&acirc;ng cao kh??? n??ng ti???t ki???m, thi???t k??? ????? ch???y c&aacute;c l&otilde;i song song, x??? l&yacute; t???t ph???n m???m ch???nh s???a video Adobe Premiere Pro. Khi t???t c??? b???n l&otilde;i ???????c s??? d???ng ?????y ?????, b??? x??? l&yacute; nhanh ch&oacute;ng ?????t ?????n gi???i h???n TDP, ??&acirc;y l&agrave; ??i???m ?????c tr??ng cho c&aacute;c l&otilde;i t??? ULV m???i.&nbsp;</p>

<p><strong>Gi???i ph&aacute;p l??u tr???</strong><br />
Dell Latitude E7390 s??? d???ng SSD Hynix M.2 v???i dung l?????ng 256 GB ???????c k???t n???i qua SATA III. Theo AS SSD, hi???u su???t ho&agrave;n to&agrave;n ??i???n h&igrave;nh ?????i v???i ?????u n???i c??. Gi???i h???n SATA-III g???n 500 MB / s ?????t ???????c khi ?????c tu???n t??? v&agrave; hi???u su???t khi ?????c c&aacute;c kh???i 4K ph&acirc;n t&aacute;n, nh???, ??i???u quan tr???ng trong qu&aacute; tr&igrave;nh kh???i ?????ng ch????ng tr&igrave;nh v&agrave; h??? ??i???u h&agrave;nh.&nbsp;<br />
<strong>Card ????? h???a</strong><br />
Intel UHD Graphics 620 cho t???c ????? t???i ??a l&agrave; 1100 MHz, card ????? h???a HD c???a Intel ???????c h?????ng l???i t??? RAM k&ecirc;nh ??&ocirc;i nhanh h??n ph&ugrave; h???p ch???nh s???a ???nh2D. GPU kh&ocirc;ng ph&ugrave; h???p v???i c&aacute;c tr&ograve; ch??i 3D hi???n t???i m&agrave; ch??? ch??i c&aacute;c d&ograve;ng game c?? b???n.</p>

<p><img alt="Tu???i th??? pin??Dell Latitude E7390 t???t" src="https://tinphatlaptop.com/upload_images/images/2021/07/19/Dell%20Latitude%20E7390%207.jpg" /></p>

<p><strong>Mic v&agrave; loa</strong><br />
Dell Latitude E7390 d??? d&agrave;ng v?????t qua b&agrave;i ki???m tra &acirc;m nh???c v???i tr???ng th&aacute;i ph&acirc;n ph???i &acirc;m nh???c ??? m???c kh&aacute;, h??? th???ng &acirc;m thanh x??? l&yacute; t???t c&aacute;c &acirc;m thanh tho&aacute;ng,&nbsp;</p>

<h2><strong>Tu???i th??? pin&nbsp;Dell Latitude E7390 t???t</strong></h2>

<p>R&otilde; r&agrave;ng l&agrave; Core i5-8350U v???i b???n l&otilde;i v???t l&yacute; c???a n&oacute; s??? d???ng nhi???u ??i???n n??ng h??n so v???i l&otilde;i k&eacute;p Kaby Lake c???a c&aacute;c ?????i th??? c???nh tranh. Tuy nhi&ecirc;n v???i kh??? n??ng ti???t ki???m ??i???n n??ng ??&aacute;ng k???&nbsp;<br />
Trong b&agrave;i ki???m tra kh&ocirc;ng t???i, Dell Latitude E7390 ?????t ???????c k???t qu??? k&eacute;o d&agrave;i g???n 28 gi??? khi ??&oacute;ng m&aacute;y, khi ch???y c&aacute;c ph???n m???m, Dell Latitude E7390 c&ograve;n th???i gian s??? 10 gi??? nh?? trong phi&ecirc;n b???n ti???n nhi???m.</p>

<p><strong><em>Nh???n ?????nh</em></strong><br />
<strong>Dell Latitude E7390&nbsp;</strong>v???i ??u ??i???m trong thi???t k??? khi n&acirc;ng g&oacute;c m&aacute;y m??? 135 ?????. V??? m&aacute;y ???????c thi???t k??? ????n gi???n mang l???i s??? thanh l???ch cao c???p, thi???t b??? ?????u v&agrave;o t???t, kh??? n??ng b???o m???t ho&agrave;n ch???nh, k???t n???i h???p l&yacute;, m&agrave;n h&igrave;nh c&oacute; ????? t????ng ph???n cao, Windows 10 Pro, Dell Latitude E7390 x???ng ??&aacute;ng v???i danh x??ng laptop mang l???i tr???i nghi???m kinh doanh th&ocirc;ng minh.</p>
', CAST(N'2021-07-26T09:49:06.460' AS DateTime), 2, 2, N'~/images/blog/Ca-Phe-Sua-??a.jpg')
GO
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (1, N'DELL')
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (2, N'Asus')
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (3, N'MacBook')
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (4, N'HP')
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (5, N'MSI')
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (1, N'Laptop gaming')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (2, N'Laptop v??n ph??ng')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (5, N'Laptop ????? h???a')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (6, N'Laptop m???ng nh???')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 
GO
INSERT [dbo].[Contact] ([contactID], [fullName], [email], [title], [detail], [dateCreate], [status], [phone]) VALUES (2, N'Nguyen Quang Truong', N'quangtruong.tdr012@gmail.com', N'support', N'adfadf', CAST(N'2021-07-02T21:27:40.727' AS DateTime), 1, N'0778955931  ')
GO
INSERT [dbo].[Contact] ([contactID], [fullName], [email], [title], [detail], [dateCreate], [status], [phone]) VALUES (7, N'Nguyen Quang Truong', N'quangtruong.tdr012@gmail.com', N'Laptop ?????p th???', N'Laptop c???a shop ?????p th??? nh???', CAST(N'2021-07-07T22:20:49.283' AS DateTime), 1, N'0778955931  ')
GO
INSERT [dbo].[Contact] ([contactID], [fullName], [email], [title], [detail], [dateCreate], [status], [phone]) VALUES (8, N'Nguyen Quang Truong', N'quangtruong.tdr012@gmail.com', N'hello', N'helooooo', CAST(N'2021-07-10T20:43:00.737' AS DateTime), 1, N'0778955931  ')
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 
GO
INSERT [dbo].[Discount] ([discountID], [discountCode], [value], [conditionMoney], [note], [startDate], [endDate], [image]) VALUES (11, N'GIAM20TR                      ', 20000000, 50000000, N'????n h??ng t??? 20000000 ??', CAST(N'2021-07-07T20:23:00.000' AS DateTime), CAST(N'2021-07-30T20:23:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Discount] ([discountID], [discountCode], [value], [conditionMoney], [note], [startDate], [endDate], [image]) VALUES (12, N'GIAM5TR                       ', 5000000, 20000000, N'gi???m 5tr cho ????n h??ng tr??n 20tr', CAST(N'2021-07-24T21:48:00.000' AS DateTime), CAST(N'2021-07-31T21:48:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([orderID], [userID], [reduceMoney], [totalMoney], [dateCreate], [dateArrive], [status]) VALUES (40, 62, 0, 10000, CAST(N'2021-07-26T18:42:37.760' AS DateTime), CAST(N'2021-08-05T18:42:37.760' AS DateTime), 0)
GO
INSERT [dbo].[Order] ([orderID], [userID], [reduceMoney], [totalMoney], [dateCreate], [dateArrive], [status]) VALUES (41, 62, 0, 10000, CAST(N'2021-07-26T19:01:37.037' AS DateTime), CAST(N'2021-08-05T19:01:37.037' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([orderID], [productID], [quantity], [amountMoney]) VALUES (40, 2, 1, 10000)
GO
INSERT [dbo].[OrderDetail] ([orderID], [productID], [quantity], [amountMoney]) VALUES (41, 1, 1, 10000)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (1, 1, 1, N'Laptop ASUS ROG Strix Scar 15 G533QR-HQ098T ( 15.6" Quad HD (2K)/AMD Ryzen 9 5900HX/16GB/1TB SSD/NVIDIA GeForce RTX 3070/Windows 10 Home 64-bit/2.3kg)', 10000, N'<p>- CPU: AMD Ryzen 9 5900HX<br />
- M&agrave;n h&igrave;nh: 15.6&quot; IPS (2560 x 1440)<br />
- RAM: 1 x 16GB DDR4 3200MHz<br />
- ????? h???a: NVIDIA GeForce RTX 3070 8GB GDDR6 / AMD Radeon Graphics<br />
- L??u tr???: 1TB SSD M.2 NVMe /<br />
- H??? ??i???</p>
', N'~/images/sanpham/laptop44.jpg                                                                                                                                                                                                                                  ', CAST(N'2021-07-26T18:07:42.707' AS DateTime), 100)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (2, 1, 2, N'Laptop ASUS G533QM-HF089T 90NR0541-M01890 ( 15.6" Full HD/AMD Ryzen 9 5900HX/16GB/1TB SSD/NVIDIA GeForce RTX 3060/Windows 10 Home 64-bit/2.3kg)', 10000, N'<p>- CPU: AMD Ryzen 9 5900HX - M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080) - RAM: 2 x 8GB DDR4 - ????? h???a: NVIDIA GeForce RTX 3060 6GB GDDR6 / AMD Radeon Graphics - L??u tr???: 1TB SSD M.2 NVMe / - H??? ??i???u h&agrave;nh: W</p>
', N'~/images/sanpham/asus3.jpg                                                                                                                                                                                                                                     ', CAST(N'2021-07-26T18:07:51.313' AS DateTime), 50)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (3, 1, 1, N'Laptop Dell G5 15 5500 5500-70228123 ( 15.6" Full HD/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Windows 10 Home 64-bit/2.6kg)', 32990000, N'- CPU: Intel Core i7-10750H
- M??n h??nh: 15.6" WVA (1920 x 1080)
- RAM: 2 x 8GB DDR4 2933MHz
- ????? h???a: NVIDIA GeForce RTX 2060Intel UHD Graphics
- L??u tr???: 512GB SSD M.2 NVMe /
- H??? ??i???u h??nh: Win', N'~/images/sanpham/laptopdell.jpg                                                                                                                                                                                                                                ', CAST(N'2021-07-04T13:38:39.520' AS DateTime), 100)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (4, 1, 1, N'Laptop Dell G5 15 5500 5500-70228123 ( 15.6" Full HD/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Windows 10 Home 64-bit/2.6kg)', 32990000, N'- CPU: Intel Core i7-10750H
- M??n h??nh: 15.6" WVA (1920 x 1080)
- RAM: 2 x 8GB DDR4 2933MHz
- ????? h???a: NVIDIA GeForce RTX 2060Intel UHD Graphics
- L??u tr???: 512GB SSD M.2 NVMe /
- H??? ??i???u h??nh: Win', N'~/images/sanpham/dell_xps.png                                                                                                                                                                                                                                  ', CAST(N'2021-07-04T13:39:24.233' AS DateTime), 200)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (5, 2, 2, N'Laptop Asus Pro P1440FA-FA0609T (i3-8145U) (X??m)', 8883000, N'- H??ng ???? qua b???o h??nh
- S???n ph???m c?? tr???y x?????c
- ?????y ????? ph??? ki???n - V??? h???p nguy??n v???n
- SN: ***K6NXCV126846267
- B???o h??nh ?????n: 28/03/2022
- S???n ph???m ??ang c?? t???i: Showroom Phong V?? C???n Th??', N'~/images/sanpham/asus2.jpg                                                                                                                                                                                                                                     ', CAST(N'2021-07-04T13:41:19.963' AS DateTime), 111)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (6, 2, 4, N'Laptop HP ProBook 430 G8 2H0N7PA ( 13.3" Full HD/Intel Core i5-1135G7/4GB/512GB SSD/Windows 10 Home SL 64-bit/1.2kg)', 20490000, N'- CPU: Intel Core i5-1135G7
- M??n h??nh: 13.3" (1920 x 1080)
- RAM: 1 x 4GB DDR4 3200MHz
- ????? h???a: Intel Iris Xe Graphics
- L??u tr???: 512GB SSD M.2 NVMe /
- H??? ??i???u h??nh: Windows 10 Home SL 64-bit
', N'~/images/sanpham/hp3.jpg                                                                                                                                                                                                                                       ', CAST(N'2021-07-04T13:42:19.167' AS DateTime), 222)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (7, 2, 4, N'Laptop HP ProBook 430 G8 2H0N7PA ( 13.3" Full HD/Intel Core i5-1135G7/4GB/512GB SSD/Windows 10 Home SL 64-bit/1.2kg)', 20490000, N'- CPU: Intel Core i5-1135G7
- M??n h??nh: 13.3" (1920 x 1080)
- RAM: 1 x 4GB DDR4 3200MHz
- ????? h???a: Intel Iris Xe Graphics
- L??u tr???: 512GB SSD M.2 NVMe /
- H??? ??i???u h??nh: Windows 10 Home SL 64-bit
', N'~/images/sanpham/hp1.jpg                                                                                                                                                                                                                                       ', CAST(N'2021-07-04T13:49:44.693' AS DateTime), 222)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (8, 2, 4, N'Laptop HP EliteBook 745 G5-5ZU71PA (14" FHD/R7-2700U/8GB/512GB SSD/Radeon Vega 10/Win10/1.6 kg)', 30690000, N'- CPU: AMD Ryzen 7 2700U ( 2.2 GHz - 3.8 GHz / 4MB / 4 nh??n, 8 lu????ng )
- M??n h??nh: 14" IPS ( 1920 x 1080 ) , kh??ng ca??m ????ng
- RAM: 1 x 8GB DDR4 2400MHz
- ????? h???a: AMD Radeon Vega 10 Graphics
- L??', N'~/images/sanpham/hp1.jpg                                                                                                                                                                                                                                       ', CAST(N'2021-07-04T13:48:30.243' AS DateTime), 999)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (9, 1, 5, N'Laptop MSI', 60000000, N'dfafad', N'~/images/sanpham/msi4.jpg                                                                                                                                                                                                                                      ', CAST(N'2021-07-11T22:10:05.433' AS DateTime), 133)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (10, 1, 2, N'Laptop Asus ed', 60000000, N'adadfadf', N'~/images/sanpham/msi2.jpg                                                                                                                                                                                                                                      ', CAST(N'2021-07-11T22:12:31.167' AS DateTime), 1331)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (11, 1, 1, N'Laptop ASUS ROG Strix Scar 15 G533QR-HQ098T ( 15.6" Quad HD (2K)/AMD Ryzen 9 5900HX/16GB/1TB SSD/NVIDIA GeForce RTX 3070/Windows 10 Home 64-bit/2.3kg)', 20000000, N'222', N'~/images/sanpham/laptopasusqqqqqqq.jpg                                                                                                                                                                                                                         ', CAST(N'2021-07-12T23:26:31.040' AS DateTime), 222)
GO
INSERT [dbo].[Product] ([productID], [categoryID], [brandID], [productName], [productPrice], [productDetail], [image], [dateCreate], [amount]) VALUES (12, 1, 2, N'Laptop ASUS ROG Strix Scar 15 G533QR-HQ098T ( 15.6" Quad HD (2K)/AMD Ryzen 9 5900HX/16GB/1TB SSD/NVIDIA GeForce RTX 3070/Windows 10 Home 64-bit/2.3kg)', 20000000, N'<p>- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nh&acirc;n, 12 lu&ocirc;??ng )<br />
- M&agrave;n h&igrave;nh: 15.6&quot; IPS ( 1920 x 1080 ) , kh&ocirc;ng ca??m ????ng<br />
- RAM: 1 x 8GB DDR4 2666MHz<br />
- ????? h???a: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1060 6GB GDDR5<br />
- L??u tr???: 256GB SSD M.2 NVMe<br />
- H??? ??i???u h&agrave;nh: Windows 10 Home SL 64-bit<br />
- Pin: 4 cell 66 Wh Pin li???n , kh???i l?????ng: 2.4 kg</p>
', N'~/images/sanpham/asus4.jpg                                                                                                                                                                                                                                     ', CAST(N'2021-07-13T23:05:59.553' AS DateTime), 222)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'Kh??ch h??ng                    ')
GO
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'Admin                         ')
GO
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (3, N'Nh??n vi??n                     ')
GO
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (4, N'Qu???n l??')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Topic] ON 
GO
INSERT [dbo].[Topic] ([IDTopic], [NameTopic]) VALUES (1, N'C??ng ngh??? ')
GO
INSERT [dbo].[Topic] ([IDTopic], [NameTopic]) VALUES (2, N'?????i s???ng')
GO
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([userID], [roleID], [fullName], [userName], [password], [email], [phoneNumber], [address], [image], [gender], [dateOfBirth], [idSocial]) VALUES (2, 2, N'admin', N'admin                                                  ', N'e6159adc6a89617ed25fcae030b70693                       ', N'quangtruong.tdr012@gmail.com                           ', N'0778955931  ', N'117A, Nguy???n Duy Trinh', N'~/images/user/customer/default-employee.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1, CAST(N'2000-08-17' AS Date), NULL)
GO
INSERT [dbo].[User] ([userID], [roleID], [fullName], [userName], [password], [email], [phoneNumber], [address], [image], [gender], [dateOfBirth], [idSocial]) VALUES (55, 1, N'Nguy???n Quang Tr?????ng', N'truong1782                                             ', N'202cb962ac59075b964b07152d234b70                       ', N'quangtruong.tdr012@gmail.com                           ', N'0778955931  ', N'117a, Nguy???n Duy Trinh', N'~/images/user/customer/CODERED_B1_portrait_photography-P4b_438x447.jpg.img.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1, CAST(N'2000-08-17' AS Date), NULL)
GO
INSERT [dbo].[User] ([userID], [roleID], [fullName], [userName], [password], [email], [phoneNumber], [address], [image], [gender], [dateOfBirth], [idSocial]) VALUES (59, 3, N'Nguyen Quang Truong', N'truong                                                 ', N'202cb962ac59075b964b07152d234b70                       ', N'quangtruong.tdr012@gmail.com                           ', N'0778955931  ', N'117a,nguyen duy trinh,p.Binh trung tay, quan 2,tp.ho chi minh', N'~/images/user/employee/CODERED_B1_portrait_photography-P4b_438x447.jpg.img.jpg', 1, CAST(N'2000-08-17' AS Date), NULL)
GO
INSERT [dbo].[User] ([userID], [roleID], [fullName], [userName], [password], [email], [phoneNumber], [address], [image], [gender], [dateOfBirth], [idSocial]) VALUES (62, 1, N'Tr?????ng Nguy???n', N'quangtruong.tdr017@gmail.com                           ', NULL, N'quangtruong.tdr017@gmail.com                           ', N'            ', N'', N'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1746232345569083&height=50&width=50&ext=1629816384&hash=AeRx1ytHmYXqABK7_fA', 1, CAST(N'0001-01-26' AS Date), N'1746232345569083')
GO
INSERT [dbo].[User] ([userID], [roleID], [fullName], [userName], [password], [email], [phoneNumber], [address], [image], [gender], [dateOfBirth], [idSocial]) VALUES (63, 1, N'Nguyen Truong', N'thtlaptopstore@gmail.com                               ', NULL, N'thtlaptopstore@gmail.com                               ', NULL, NULL, N'https://scontent-sin6-2.xx.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=1-3&_nc_sid=12b3be&_nc_ohc=rxFuztvN2q0AX9hQgkE&_nc_ht=scontent-sin6-2.xx&oh=00fef4595ec909956d7ebfc5af46574a&oe=61247538', 1, CAST(N'0001-01-01' AS Date), N'115119694182544')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Topic] FOREIGN KEY([IDTopic])
REFERENCES [dbo].[Topic] ([IDTopic])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Topic]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__userID__49C3F6B7] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__userID__49C3F6B7]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__4BAC3F29] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__4BAC3F29]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__produ__46E78A0C] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__produ__46E78A0C]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__brandID__48CFD27E] FOREIGN KEY([brandID])
REFERENCES [dbo].[Brand] ([brandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__brandID__48CFD27E]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__47DBAE45] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__47DBAE45]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__roleID__4CA06362] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__roleID__4CA06362]
GO
USE [master]
GO
ALTER DATABASE [DBLAPTOP] SET  READ_WRITE 
GO
