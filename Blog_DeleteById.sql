USE [C85_HubLink]
GO
/****** Object:  StoredProcedure [dbo].[Blog_DeleteById]    Script Date: 3/8/2021 11:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER	PROC [dbo].[Blog_DeleteById]
		@Id INT
	AS
	/*
		DECLARE
					@_Id INT = 2
		EXEC		Blogs_DeleteById
					@_Id
	*/
BEGIN
SELECT	*
FROM	Blogs
WHERE	Id = @Id
DELETE Blogs
WHERE  Id = @Id
SELECT	*
FROM	Blogs
WHERE	Id = @Id
END