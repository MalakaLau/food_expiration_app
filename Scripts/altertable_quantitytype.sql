USE [Laura]
GO

/****** Object:  Table [dbo].[Quantitytype]    Script Date: 29/05/2021 9:28:36 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Quantitytype](
	[Type] [char](50) NOT NULL,
	[Product] [char](50) NOT NULL,
	[Quantity] [float] NOT NULL,
	[quantitytypeid] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO

