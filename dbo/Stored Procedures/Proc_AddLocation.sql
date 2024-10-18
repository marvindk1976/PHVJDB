

CREATE PROCEDURE [dbo].[Proc_AddLocation]
	
	 @LocationName as nvarchar(max),
	 @Address	   as nvarchar(max),
	 @ContactNo	   as nvarchar(100),
	 @MobileNo	   as nvarchar(100),
	 @Pincode	   as nvarchar(100),
	 @State		   as nvarchar(100),
	 @City		   as nvarchar(100),
	 @Owner		   as nvarchar(100),
	 @Createdby	   as nvarchar(100)
	 

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		INSERT INTO [dbo].[Location]
           ([LocationName]
           ,[Address]
           ,[ContactNo]
           ,[MobileNo]
           ,[Pincode]
           ,[State]
           ,[City]
           ,[Owner]
           ,[Createdby]
           ,[Createddate]
           ,[IsActive])
     VALUES
           (@LocationName
           ,@Address
           ,@ContactNo
           ,@MobileNo
           ,@Pincode
           ,@State
           ,@City
           ,@Owner
           ,@Createdby
           ,GETDATE()
		   , 1)
END


