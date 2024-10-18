
Create PROCEDURE [dbo].[Proc_UserLogedin]
	
	 @UserName as nvarchar(max),
	 @Password as nvarchar(max),
	 @Token as nvarchar(max)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

		INSERT INTO [dbo].[Login]
           ([Username]
           ,[Password]
           ,[Token]
           ,[Logindate])
		 VALUES
           (@UserName
           ,@Password
           ,@Token
           ,GETDATE())
END

