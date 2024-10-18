﻿CREATE TABLE [dbo].[UserRegister] (
    [Id]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [FirstName]          NVARCHAR (MAX) NULL,
    [MiddleName]         NVARCHAR (MAX) NULL,
    [LastName]           NVARCHAR (MAX) NULL,
    [Address]            NVARCHAR (MAX) NULL,
    [LocalityArea]       NVARCHAR (MAX) NULL,
    [PinCode]            NVARCHAR (MAX) NULL,
    [City]               NVARCHAR (MAX) NULL,
    [Anniversary]        DATETIME       NULL,
    [MobileNo]           NVARCHAR (MAX) NULL,
    [AadharId]           NVARCHAR (MAX) NULL,
    [PanCard]            NVARCHAR (MAX) NULL,
    [DOB]                DATETIME       NULL,
    [Gender]             NVARCHAR (MAX) NULL,
    [UserName]           NVARCHAR (MAX) NULL,
    [Email]              NVARCHAR (50)  NULL,
    [Password]           NVARCHAR (MAX) NULL,
    [ConfirmPassword]    NVARCHAR (MAX) NULL,
    [AadharFrontPageUrl] NVARCHAR (MAX) NULL,
    [AadharBackPageUrl]  NVARCHAR (MAX) NULL,
    [PancardUrl]         NVARCHAR (MAX) NULL,
    [PhotoUrl]           NVARCHAR (MAX) NULL,
    [Createdby]          NVARCHAR (MAX) NULL,
    [CreatedDate]        DATETIME       NULL,
    [Editedby]           NVARCHAR (MAX) NULL,
    [EditedDate]         DATETIME       NULL,
    [IsActive]           BIT            NULL,
    CONSTRAINT [PK_UserRegister] PRIMARY KEY CLUSTERED ([Id] ASC)
);

