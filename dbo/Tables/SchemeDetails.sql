CREATE TABLE [dbo].[SchemeDetails] (
    [Id]                 BIGINT          IDENTITY (1, 1) NOT NULL,
    [Month]              NVARCHAR (MAX)  NULL,
    [SchemeId]           INT             NULL,
    [MonthlyInstallment] NVARCHAR (MAX)  NULL,
    [Rate22KPerGm]       MONEY           NULL,
    [WeightBookGm]       DECIMAL (18, 5) NULL,
    [PayStatus]          NVARCHAR (MAX)  NULL,
    [SchemeStartDate]    DATETIME        NULL,
    [SchemeEndDate]      DATETIME        NULL,
    [Createdby]          NVARCHAR (MAX)  NULL,
    [Createddate]        DATETIME        NULL,
    [Editeby]            NVARCHAR (MAX)  NULL,
    [EditedDate]         DATETIME        NULL,
    [UpdateSrNo]         INT             NULL,
    [IsActive]           BIT             NULL,
    [EarnPointsPer1000]  INT             NULL,
    [EarnPoints]         INT             NULL,
    CONSTRAINT [PK_GoldBeesSchemeDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

