
CREATE PROCEDURE [dbo].[Proc_UserSelectSchemeLogin]
	 @UserName				as nvarchar(max)
	,@IsActive				as nvarchar(max)
	,@SchemeId				as Int
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE	@return_value int

	if exists(select 1 from [UserSelectedScheme] where [Createdby] = @UserName and [IsActive] = @IsActive and SchemeId = @SchemeId)

		begin
			select @return_value =1;
		 	SELECT  @return_value as return_value;
		end

	else
	begin
			 SELECT @return_value = 0;
			 SELECT  @return_value as return_value;
	end
END

