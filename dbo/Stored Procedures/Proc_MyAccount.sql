
CREATE PROCEDURE [dbo].[Proc_MyAccount]
	-- Add the parameters for the stored procedure here
	@UserName as nvarchar(50),
	@locationID as int,
	@SchemeID as int
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Top 1
      [FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Address]
      ,[LocalityArea]
      ,[PinCode]
      ,[City]
      ,[MobileNo]
      ,[Gender]
      ,[UserName]
      ,[Email]
      ,[PhotoUrl]      
      ,[IsActive]
  FROM [dbo].[UserRegister] with (nolock) where UserName=@UserName and [IsActive]=1

  SELECT
     
      [Month]
      ,[SchemeId]
      ,[MonthlyInstallment]
      ,[Rate22KPerGm]
      ,[WeightBookGm]
      ,[PayStatus]
      ,[SchemeStartDate]
      ,[SchemeEndDate]
      ,[UpdateSrNo]
      ,[EarnPointsPer1000]
      ,[EarnPoints]
  FROM [dbo].[SchemeDetails] with (nolock) where [Createdby]=@UserName and [SchemeId]=@SchemeID and [IsActive]=1

 SELECT 
      [UserName]
      ,[LocationID]
      ,[Amount]
      ,[EmailID]
      ,[TxnRefNo]
      ,[TallyTxnRefNo]
      ,[SchemeID]
      ,[PaymentType]
      ,[Status]
      ,[IsPaymentComplete]
  FROM [dbo].[CheckOutSummary] with (nolock) where [UserName]=@UserName and [SchemeID]=@SchemeID and [LocationID]=@locationID and [IsActive]=1

END
