
CREATE PROCEDURE [dbo].[Proc_UserSelectedScheme]
	 @SchemeId				as int
	,@UserName				as nvarchar(max)
	,@IsActive				as nvarchar(max)
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if not exists(select 1 from [UserSelectedScheme] where [Createdby] = @UserName and [IsActive] = 1 and SchemeId = @SchemeId)

	begin
	INSERT INTO [dbo].[UserSelectedScheme]
           ([SchemeId]
           ,[Createdby]
           ,[Createddate]
           ,[IsActive])
     VALUES
           (
		    @SchemeId
           ,@UserName			
		   ,GETDATE()		
           ,@IsActive			
           )
    end

	
END

