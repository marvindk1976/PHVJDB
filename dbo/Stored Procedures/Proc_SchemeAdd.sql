
CREATE PROCEDURE [dbo].[Proc_SchemeAdd]
	 @Month					as nvarchar(max)
	,@SchemeId				as int
	,@MonthlyInstallment	 as money
	,@Rate22KPerGm			as money
	,@WeightBookGm			as money
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

	if exists(select 1 from [SchemeDetails] where [Createdby] = @UserName and IsActive =1 and [SchemeId] = @SchemeId)
	begin
	INSERT INTO [dbo].[SchemeDetails]
           ([Month]
           ,[SchemeId]
           ,[MonthlyInstallment]
           ,[Rate22KPerGm]
           ,[WeightBookGm]
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

