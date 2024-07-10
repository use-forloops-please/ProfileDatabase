CREATE PROCEDURE [dbo].[GetHeader]
AS
BEGIN
    SELECT * FROM [dbo].[Header];
END;
GO

CREATE PROCEDURE [dbo].[InsertHeader]
@Name NVARCHAR(100),
@Profession NVARCHAR(100),
@ProfileImageUrl NVARCHAR(200),
@BackgroundImageUrl NVARCHAR(200)
AS
BEGIN
    INSERT INTO [dbo].[Header] (Name, Profession, ProfileImageUrl, BackgroundImageUrl)
    VALUES (@Name, @Profession, @ProfileImageUrl, @BackgroundImageUrl);
END;
GO

CREATE PROCEDURE [dbo].[UpdateHeader]
@Id INT,
@Name NVARCHAR(100),
@Profession NVARCHAR(100),
@ProfileImageUrl NVARCHAR(200),
@BackgroundImageUrl NVARCHAR(200)
AS
BEGIN
    UPDATE [dbo].[Header]
    SET Name = @Name, Profession = @Profession, ProfileImageUrl = @ProfileImageUrl, BackgroundImageUrl = @BackgroundImageUrl
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE [dbo].[DeleteHeader]
@Id INT
AS
BEGIN
    DELETE FROM [dbo].[Header] WHERE Id = @Id;
END;
GO
