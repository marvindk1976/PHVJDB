
CREATE PROCEDURE Proc_CheckOutSummary
	-- Add the parameters for the stored procedure here
	@UserName as nvarchar(50),
           @LocationID as bigint,
           @Amount as money,
           @EmailID as  nvarchar(50),
           @TxnRefNo as nvarchar(50),
           @TallyTxnRefNo as nvarchar(50),
           @SchemeID as nvarchar(50),
           @PaymentType as nvarchar(50),
           @OTP as nvarchar(50),
           @CreatedBy as nvarchar(50),
           @CreatedDate as datetime,
           @Status as nvarchar(50),
           @IsPaymentComplete as bit,
           @IsActive as bit
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[CheckOutSummary]
           ([UserName]
           ,[LocationID]
           ,[Amount]
           ,[EmailID]
           ,[TxnRefNo]
           ,[TallyTxnRefNo]
           ,[SchemeID]
           ,[PaymentType]
           ,[OTP]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[Status]
           ,[IsPaymentComplete]
           ,[IsActive])
     VALUES
           (@UserName,
           @LocationID ,
           @Amount ,
           @EmailID ,
           @TxnRefNo,
           @TallyTxnRefNo,
           @SchemeID,
           @PaymentType,
           @OTP,
           @CreatedBy,
           @CreatedDate ,
           @Status,
           @IsPaymentComplete ,
           @IsActive )
END
