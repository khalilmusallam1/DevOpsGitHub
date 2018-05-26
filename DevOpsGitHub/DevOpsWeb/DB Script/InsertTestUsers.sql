use [DevOpsDB]
-- insert 20 records 
Declare @userID int;
Declare @RecordsCount int;
set @RecordsCount = 20;

WHILE @RecordsCount  > 0
BEGIN
	SET @userID = (select max(id)+1 from dbo.[users]);
	if (@userID is null)
	begin
		set @userID = 1;
	end

	INSERT [dbo].[Users] ([Id], [FirstName], [Email], [MobileNumber], [FamilyName],[Mid_name]) VALUES (@userID, N'Khalil' + cast(@userID as varchar(2)), N'khalil.musallam@gmail.com', N'+962777698147', N'Musallam', N'Bahij')
	SET @RecordsCount -= 1

END


