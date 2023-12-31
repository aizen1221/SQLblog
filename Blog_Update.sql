USE [C85_HubLink]
GO
/****** Object:  StoredProcedure [dbo].[Blog_Update]    Script Date: 3/8/2021 11:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER	PROC [dbo].[Blog_Update]
		@Id INT,
		@BlogTypeId INT,
		@AuthorId INT,
		@Title NVARCHAR(50),
		@Subject NVARCHAR(50),
		@Content NVARCHAR(MAX),
		@IsPublished Bit,
		@ImageUrl NVARCHAR(255)
	AS
	/*
		DECLARE
					@_Id INT = 1,
					@_BlogTypeId INT = 1111,
					@_AuthorId INT = 1111,
					@_Title NVARCHAR(50) = 'Updated Title',
					@_Subject NVARCHAR(50) = 'Updated Subject',
					@_Content NVARCHAR(MAX) = 'Updated Content',
					@_IsPublished BIT = 0,
					@_ImageUrl NVARCHAR(255) ='updTed image'
		EXEC		Blog_Update
					@_Id,
					@_BlogTypeId,
					@_AuthorId,
					@_Title,
					@_Subject,
					@_Content,
					@_IsPublished,
					@_ImageUrl
		SELECT		*
		FROM		Blogs
		WHERE		Id = @_Id
	*/
BEGIN
DECLARE	@DateModified DATETIME2 = GETUTCDATE()
UPDATE	Blogs
SET		BlogTypeId = @BlogTypeId,
		AuthorId = @AuthorId,
		Title = @Title,
		Subject = @Subject,
		Content = @Content,
		IsPublished = @IsPublished,
		ImageUrl = @ImageUrl
WHERE	Id = @Id
END