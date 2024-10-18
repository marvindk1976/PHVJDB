CREATE TABLE [dbo].[CheckOutSummary] (
    [ID]                BIGINT        IDENTITY (1, 1) NOT NULL,
    [UserName]          NVARCHAR (50) NULL,
    [LocationID]        BIGINT        NULL,
    [Amount]            MONEY         NULL,
    [EmailID]           NVARCHAR (50) NULL,
    [TxnRefNo]          NVARCHAR (50) NULL,
    [TallyTxnRefNo]     NVARCHAR (50) NULL,
    [SchemeID]          NVARCHAR (50) NULL,
    [PaymentType]       NVARCHAR (50) NULL,
    [OTP]               NVARCHAR (50) NULL,
    [CreatedBy]         NVARCHAR (50) NULL,
    [CreatedDate]       DATETIME      NULL,
    [Status]            NVARCHAR (50) NULL,
    [IsPaymentComplete] BIT           NULL,
    [IsActive]          BIT           NULL,
    CONSTRAINT [PK_CheckOutSummary] PRIMARY KEY CLUSTERED ([ID] ASC)
);

