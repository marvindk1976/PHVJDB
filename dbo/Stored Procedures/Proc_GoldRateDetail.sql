 CREATE PROCEDURE [dbo].[Proc_GoldRateDetail]    
     
  @GoldDateTime as datetime,    
  @Rate18K750    as money,    
  @Rate22K916    as money,    
  @Rate24K995    as money,  
  @Rate24K999    as money,  
  @Silver     as money,    
  @Createdby     as nvarchar(100),    
  @Locationid  as int    
AS    
BEGIN    
 -- SET NOCOUNT ON added to prevent extra result sets from    
 -- interfering with SELECT statements.    
 SET NOCOUNT ON;    
    
    -- Insert statements for procedure here    
  update [dbo].[GoldRateDetail]     
  set [IsActive] = 0    
  where [IsActive] = 1 and Locationid=   @Locationid
    
    
  INSERT INTO [dbo].[GoldRateDetail]    
           ([GoldDateTime]    
           ,[Rate18K750]    
           ,[Rate22K916]    
           ,[Rate24K995]  
     ,[Rate24K999]    
           ,[Silver]    
           ,[Createdby]    
           ,[Createddate]    
           ,[IsActive]    
     ,[LocationId])    
     VALUES    
           (@GoldDateTime     
     ,@Rate18K750     
     ,@Rate22K916     
     ,@Rate24K995   
  ,@Rate24K999   
     ,@Silver         
     ,@Createdby    
     ,getdate()    
     ,1    
     ,@Locationid)     
         
END     