CREATE TABLE [dbo].[EarnPointMapping] (
    [ID]        INT   IDENTITY (1, 1) NOT NULL,
    [Month]     INT   NULL,
    [EarnPoint] INT   NULL,
    [Amout]     MONEY NULL,
    [SchemeID]  INT   NULL,
    [IsActive]  BIT   NULL,
    CONSTRAINT [PK_EarnPointMapping] PRIMARY KEY CLUSTERED ([ID] ASC)
);

