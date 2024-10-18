
CREATE PROCEDURE  [dbo].[Proc_InsertNotification] (@UserID as nchar(50),
           @LocationID as bigint,
           @Title as nchar(10),
           @Description as nchar(10),
           @NotifyDate as datetime,
           @IsActive as bit)
AS
BEGIN
	INSERT INTO [dbo].[UserNotification]
           ([UserID]
           ,[LocationID]
           ,[Title]
           ,[Description]
           ,[NotifyDate]
           ,[IsActive])
     VALUES
           (@UserID ,
           @LocationID ,
           @Title ,
           @Description ,
           @NotifyDate ,
           @IsActive)
END
