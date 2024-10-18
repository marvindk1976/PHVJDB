-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Proc_SelectEarnPoints
	-- Add the parameters for the stored procedure here
	@SchemeID as int
AS
BEGIN
	
	SET NOCOUNT ON;
SELECT [ID]
      ,[Month]
      ,[EarnPoint]
      ,[Amout]
      ,[SchemeID]
      ,[IsActive]
  FROM [PHVJDB].[dbo].[EarnPointMapping] with (nolock) where  SchemeID=1 and IsActive =1

END
