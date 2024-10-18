
Create PROCEDURE [dbo].[Proc_LocationList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select [Id]
      ,[LocationName] from [dbo].[Location] where [IsActive] = 1
END

