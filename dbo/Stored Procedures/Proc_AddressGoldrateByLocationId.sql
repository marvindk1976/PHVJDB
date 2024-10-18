
CREATE PROCEDURE [dbo].[Proc_AddressGoldrateByLocationId]
	@locationId as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select l.[Address] as [Address],
		gr.Rate22K916 as Rate22K916
	  from [dbo].[Location]	l
	  inner join [dbo].[GoldRateDetail] gr on l.Id=gr.LocationId
	  where l.Id=@locationId and l.[IsActive] = 1 and gr.IsActive=1
END

