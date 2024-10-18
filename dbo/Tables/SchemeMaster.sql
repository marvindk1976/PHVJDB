CREATE TABLE [dbo].[SchemeMaster] (
    [Id]                    BIGINT         IDENTITY (1, 1) NOT NULL,
    [SchemeName]            NVARCHAR (MAX) NULL,
    [SchemeLogoUrl]         NVARCHAR (MAX) NULL,
    [SchemeImageUrl]        NVARCHAR (MAX) NULL,
    [SchemeMonthlyImageUrl] NVARCHAR (MAX) NULL,
    [PDFUrl]                NVARCHAR (MAX) NULL,
    [TermConditon]          NVARCHAR (MAX) NULL,
    [Createdby]             NVARCHAR (MAX) NULL,
    [Createddate]           DATETIME       NULL,
    [Editeby]               NVARCHAR (MAX) NULL,
    [EditedDate]            DATETIME       NULL,
    [IsActive]              BIT            NULL,
    CONSTRAINT [PK_SchemeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

