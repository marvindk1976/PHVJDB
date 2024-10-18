
CREATE PROCEDURE [dbo].[Proc_SchemeSelectListDetails]

	 @SchemeId				as int
	,@UserName				as nvarchar(max)

	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if exists(select 1 from [UserSelectedScheme] where [Createdby] = @UserName and [SchemeId] = @SchemeId)
	begin
		SELECT
       [Month]
      ,CAST([MonthlyInstallment] AS DECIMAL(18,0)) as [MonthlyInstallment]
      ,CAST([Rate22KPerGm] AS DECIMAL(18,0)) as [Rate22KPerGm]
      ,[WeightBookGm]
	  ,[EarnPointsPer1000]
	  ,[EarnPoints]
      ,[PayStatus]    
      ,[UpdateSrNo]
      ,[IsActive]
	FROM [dbo].[SchemeDetails] where [Createdby] = @UserName and [SchemeId] = @SchemeId
    end
	
END

