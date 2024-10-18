CREATE TABLE [dbo].[Login] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Username]    NVARCHAR (MAX) NULL,
    [Password]    NVARCHAR (MAX) NULL,
    [Token]       NVARCHAR (MAX) NULL,
    [OTP]         NVARCHAR (MAX) NULL,
    [Logindate]   DATETIME       NULL,
    [Createdby]   NVARCHAR (MAX) NULL,
    [Createddate] DATETIME       NULL,
    [Editeby]     NVARCHAR (MAX) NULL,
    [EditedDate]  DATETIME       NULL,
    [IsActive]    BIT            NULL,
    CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([Id] ASC)
);

