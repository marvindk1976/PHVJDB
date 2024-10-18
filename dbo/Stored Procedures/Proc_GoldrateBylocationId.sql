
    
CREATE PROCEDURE [dbo].[Proc_GoldrateBylocationId]  
 @locationId as int  
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
  
  select [GoldDateTime]  
      ,[Rate18K750]  
      ,[Rate22K916]  
      ,[Rate24K995] 
	  ,[Rate24K999] 
      ,[Silver]  
  FROM [dbo].[GoldRateDetail] where [IsActive] = 1 and [LocationId]= @locationId  
  
END  
  