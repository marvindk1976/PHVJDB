CREATE TABLE [dbo].[UserSelectedScheme] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [SchemeId]    INT            NULL,
    [Createdby]   NVARCHAR (MAX) NULL,
    [Createddate] DATETIME       NULL,
    [Editeby]     NVARCHAR (MAX) NULL,
    [EditedDate]  DATETIME       NULL,
    [IsActive]    BIT            NULL,
    CONSTRAINT [PK_UserSelectedScheme] PRIMARY KEY CLUSTERED ([Id] ASC)
);

