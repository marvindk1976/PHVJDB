
Create PROCEDURE [dbo].[Proc_UserExist]
	
	 @UserName as nvarchar(max)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select 1 from [UserRegister] where [UserName] = @UserName
END

