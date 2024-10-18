CREATE TABLE [dbo].[UserNotification] (
    [ID]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [UserID]      NVARCHAR (50) NULL,
    [LocationID]  BIGINT        NULL,
    [Title]       NCHAR (10)    NULL,
    [Description] NCHAR (10)    NULL,
    [NotifyDate]  DATETIME      NULL,
    [IsActive]    BIT           NULL,
    CONSTRAINT [PK_UserNotification] PRIMARY KEY CLUSTERED ([ID] ASC)
);

