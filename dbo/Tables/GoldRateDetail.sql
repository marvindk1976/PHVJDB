CREATE TABLE [dbo].[GoldRateDetail] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [LocationId]   INT            NULL,
    [GoldDateTime] DATETIME       NULL,
    [Rate18K750]   MONEY          NULL,
    [Rate22K916]   MONEY          NULL,
    [Rate24K995]   MONEY          NULL,
    [Silver]       MONEY          NULL,
    [Createdby]    NVARCHAR (100) NULL,
    [Createddate]  DATETIME       NULL,
    [Editeby]      NVARCHAR (100) NULL,
    [EditedDate]   DATETIME       NULL,
    [IsActive]     BIT            NULL,
    [Rate24K999]   MONEY          NULL,
    CONSTRAINT [PK_GoldRateDetail] PRIMARY KEY CLUSTERED ([Id] ASC)
);

