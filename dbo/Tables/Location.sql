CREATE TABLE [dbo].[Location] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [LocationName] NVARCHAR (MAX) NULL,
    [Address]      NVARCHAR (MAX) NULL,
    [ContactNo]    NVARCHAR (100) NULL,
    [MobileNo]     NVARCHAR (100) NULL,
    [Pincode]      NVARCHAR (100) NULL,
    [State]        NVARCHAR (100) NULL,
    [City]         NVARCHAR (100) NULL,
    [Owner]        NVARCHAR (100) NULL,
    [Createdby]    NVARCHAR (100) NULL,
    [Createddate]  DATETIME       NULL,
    [Editeby]      NVARCHAR (100) NULL,
    [EditedDate]   DATETIME       NULL,
    [IsActive]     BIT            NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([Id] ASC)
);

