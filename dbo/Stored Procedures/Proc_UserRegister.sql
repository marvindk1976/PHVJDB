
CREATE PROCEDURE [dbo].[Proc_UserRegister]
	 @FirstName			 as nvarchar(max)
	,@MiddleName    	 as nvarchar(max)
	,@LastName			 as nvarchar(max)
	,@Address			 as nvarchar(max)
	,@LocalityArea		 as nvarchar(max)
	,@PinCode			 as nvarchar(max)
	,@City				 as nvarchar(max)
	,@Anniversary		 as nvarchar(max)
	,@MobileNo			 as nvarchar(max)
	,@AadharId			 as nvarchar(max)
	,@PanCard			 as nvarchar(max)
	,@DOB				 as datetime
	,@Gender			 as nvarchar(max)
	,@UserName			 as nvarchar(max)
	,@Email				 as nvarchar(max)
	,@Password			 as nvarchar(max)
	,@ConfirmPassword	 as nvarchar(max)
	
	,@Createdby			 as nvarchar(max)
	
	,@IsActive			 as bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if not exists(select 1 from [UserRegister] where [UserName] = @UserName)
	begin
	INSERT INTO [dbo].[UserRegister]
           ([FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[Address]
           ,[LocalityArea]
           ,[PinCode]
           ,[City]
           ,[Anniversary]
           ,[MobileNo]
           ,[AadharId]
           ,[PanCard]
           ,[DOB]
           ,[Gender]
           ,[UserName]
           ,[Email]
           ,[Password]
           ,[ConfirmPassword]
           --,[AadharFrontPageUrl]
           --,[AadharBackPageUrl]
           --,[PancardUrl]
           --,[PhotoUrl]
           ,[Createdby]
           ,[CreatedDate]
           --,[Editedby]
           --,[EditedDate]
           ,[IsActive])
     VALUES
           (@FirstName			
           ,@MiddleName    	
           ,@LastName			
           ,@Address			
           ,@LocalityArea		
           ,@PinCode			
           ,@City				
           ,@Anniversary		
           ,@MobileNo			
           ,@AadharId			
           ,@PanCard			
           ,@DOB				
           ,@Gender			
           ,@UserName			
           ,@Email				
           ,@Password			
           ,@ConfirmPassword	
           --,@AadharFrontPageUrl
           --,@AadharBackPageUrl	
           --,@PancardUrl		
           --,@PhotoUrl			
           ,@Createdby			
           ,GETDATE()		
           --,@Editedby			
           --,@EditedDate		
           ,@IsActive)		
    end
END

