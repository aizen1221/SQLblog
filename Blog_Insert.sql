USE [C85_HubLink]
GO
/****** Object:  StoredProcedure [dbo].[Blog_Insert]    Script Date: 3/8/2021 11:09:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER	PROC [dbo].[Blog_Insert]
		@Id INT OUT,
		@BlogTypeId INT,
		@AuthorId INT,
		@Title NVARCHAR(50),
		@Subject NVARCHAR(50),
		@Content NVARCHAR(MAX),
		@IsPublished Bit,
		@ImageUrl NVARCHAR(255)
	AS
	/*
		
		DECLARE		@Id			INT		
		DECLARE		@Title			NVARCHAR(50)	= 'test title'
					,@Subject		NVARCHAR(50)	= 'test subject'
					,@Content		NVARCHAR(MAX)	= 'ttext Ipsum has been the industrys standard dummy text evertext Ipsum has been the industrys sttext Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer andard dummy text ever since the 1500s, when an unknown printer  since the 1500s, when an unknown printer ect'
					,@ImageUrl		NVARCHAR(255)	= 'https://images.unsplash.com/photo-1457305237443-44c3d5a30b89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80'

		EXEC	dbo.Blog_Insert
						@Title
						,@Subject
						,@Content
						,@ImageUrl
		SELECT		*
		FROM		Blogs
		WHERE		Id = @Id
	*/
BEGIN
DECLARE	@DateCreated DATETIME2 = GETUTCDATE()
INSERT
INTO	Blogs(
		BlogTypeId,
		AuthorId,
		Title,
		Subject,
		Content,
		IsPublished,
		ImageUrl,
		DateCreated
		)VALUES(
		@BlogTypeId,
		@AuthorId,
		@Title,
		@Subject,
		@Content,
		@IsPublished,
		@ImageUrl,
		@DateCreated
		)
SET		@Id = SCOPE_IDENTITY()
END