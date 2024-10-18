
CREATE PROCEDURE [dbo].[Proc_SchemeDetails]
	 @Month					as nvarchar(max)
	,@SchemeId				as int
	,@MonthlyInstallment	 as money
	,@Rate22KPerGm			as money
	,@WeightBookGm			as money
	 ,@EarnPointsPer1000	as int
	  ,@EarnPoints			as int
	,@PayStatus				as nvarchar(max)
	,@SchemeStartDate	    as datetime
	,@SchemeEndDate			as datetime
	,@UserName				as nvarchar(max)
	,@IsActive				as nvarchar(max)
	,@UpdateSrNo			as Int
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if not exists(select 1 from [UserSelectedScheme] where [Createdby] = @UserName and IsActive =1 and [SchemeId] = @SchemeId)
	begin
	INSERT INTO [dbo].[SchemeDetails]
           ([Month]
           ,[SchemeId]
           ,[MonthlyInstallment]
           ,[Rate22KPerGm]
           ,[WeightBookGm]
		    ,[EarnPointsPer1000]
			,[EarnPoints]
           ,[PayStatus]
           ,[SchemeStartDate]
           ,[SchemeEndDate]
           ,[Createdby]
           ,[Createddate]
           ,[IsActive]
		   ,[UpdateSrNo])
     VALUES
           (
		    @Month
           ,@SchemeId			
           ,@MonthlyInstallment
           ,@Rate22KPerGm		
           ,@WeightBookGm
		   ,@EarnPointsPer1000
		   ,@EarnPoints
           ,@PayStatus			
           ,@SchemeStartDate	
           ,@SchemeEndDate		
           ,@UserName	
		   ,GETDATE()		
           ,@IsActive
		   ,@UpdateSrNo			
           )
    end
	else if (@SchemeId=2 )
	begin
	INSERT INTO [dbo].[SchemeDetails]
           ([Month]
           ,[SchemeId]
           ,[MonthlyInstallment]
           ,[Rate22KPerGm]
           ,[WeightBookGm]
		    ,[EarnPointsPer1000]
			,[EarnPoints]
           ,[PayStatus]
           ,[SchemeStartDate]
           ,[SchemeEndDate]
           ,[Createdby]
           ,[Createddate]
           ,[IsActive]
		   ,[UpdateSrNo])
     VALUES
           (
		    @Month
           ,@SchemeId			
           ,@MonthlyInstallment
           ,@Rate22KPerGm		
           ,@WeightBookGm
		   ,@EarnPointsPer1000
		   ,@EarnPoints
           ,@PayStatus			
           ,@SchemeStartDate	
           ,@SchemeEndDate		
           ,@UserName	
		   ,GETDATE()		
           ,@IsActive
		   ,@UpdateSrNo			
           )
    end

	--update [dbo].[SchemeDetails] set [Rate22KPerGm]=0,[WeightBookGm]=0,IsActive = 0
	--where [Createdby] =@UserName and IsActive = 1 and [SchemeId] = @SchemeId and @UpdateSrNo >= 2
	begin
	update [dbo].[SchemeDetails] set [IsActive] = 0 ,[Rate22KPerGm]=0,[WeightBookGm]=0
    where [Createdby] =@UserName and IsActive = 1 and [SchemeId] = @SchemeId and UpdateSrNo >= 2
	end
END

