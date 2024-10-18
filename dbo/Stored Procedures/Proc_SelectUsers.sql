
CREATE PROCEDURE [dbo].[Proc_SelectUsers] 
	
AS
BEGIN
	
	SET NOCOUNT ON;
SELECT [Id]
      ,[FirstName]
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
      ,[AadharFrontPageUrl]
      ,[AadharBackPageUrl]
      ,[PancardUrl]
      ,[PhotoUrl]
      ,[Createdby]
      ,[CreatedDate]
      ,[Editedby]
      ,[EditedDate]
      ,[IsActive]
  FROM [dbo].[UserRegister] with(nolock) where IsActive=1
   
END
