USE [C85_HubLink]
GO
/****** Object:  StoredProcedure [dbo].[Blog_SelectById]    Script Date: 3/8/2021 11:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER	PROC [dbo].[Blog_SelectById]
		@Id INT
	AS
	/*
		DECLARE
					@_Id INT = 32
		EXEC		Blog_SelectById @_Id
	*/
BEGIN
SELECT	Id,
		BlogTypeId,
		AuthorId,
		Title,
		Subject,
		Content,
		IsPublished, 
		ImageUrl,
		DateCreated,
		DateModified,
		DatePublished
FROM	dbo.Blogs
WHERE	Id = @Id
END