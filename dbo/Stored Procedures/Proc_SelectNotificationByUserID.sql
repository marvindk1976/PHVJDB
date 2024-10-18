
CREATE PROCEDURE Proc_SelectNotificationByUserID 
	-- Add the parameters for the stored procedure here
	@UserID as nvarchar(50), 
	@LocationID as int
AS
BEGIN
	
	SET NOCOUNT ON;

SELECT [ID]
      ,[UserID]
      ,[LocationID]
      ,[Title]
      ,[Description]
      ,[NotifyDate]
      ,[IsActive]
  FROM [dbo].[UserNotification] with (nolock) where UserID=@UserID and LocationID=@LocationID
END
