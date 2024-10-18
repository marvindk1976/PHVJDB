
CREATE PROCEDURE [dbo].[Proc_UserUploadDocument]
	
	@UserName			 as nvarchar(max)
	,@AadharFrontPageUrl as nvarchar(max) = null
	,@AadharBackPageUrl as nvarchar(max) = null
	,@PancardUrl as nvarchar(max)= null
	,@PhotoUrl as nvarchar(max)= null
	,@KYCType as nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if exists(select 1 from [UserRegister] where [UserName] = @UserName)
	
		if(@KYCType = 'AadharFront')
			begin
					UPDATE [dbo].[UserRegister]
					SET 
					 [AadharFrontPageUrl] = @AadharFrontPageUrl								
					,[Editedby] = @UserName
					,[EditedDate] = GETDATE()
					WHERE  [UserName] = @UserName and [IsActive] = 1
			end
			else if(@KYCType = 'AadharBack')
			begin
			UPDATE [dbo].[UserRegister]
					SET 			
					 [AadharBackPageUrl] = @AadharBackPageUrl					
					,[Editedby] = @UserName
					,[EditedDate] = GETDATE()
					WHERE  [UserName] = @UserName and [IsActive] = 1
			end
			else if(@KYCType = 'PanCard')
			begin
			UPDATE [dbo].[UserRegister]
					SET 			
					 [PancardUrl] = @PancardUrl					
					,[Editedby] = @UserName
					,[EditedDate] = GETDATE()
					WHERE  [UserName] = @UserName and [IsActive] = 1
			end
			else if(@KYCType = 'Photo')
			begin
			UPDATE [dbo].[UserRegister]
					SET 			
					 [PhotoUrl] = @PhotoUrl					
					,[Editedby] = @UserName
					,[EditedDate] = GETDATE()
					WHERE  [UserName] = @UserName and [IsActive] = 1
			end
    
END

