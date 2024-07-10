CREATE PROCEDURE [dbo].[GetAbout]
AS
BEGIN
    SELECT * FROM [dbo].[About];
END;
GO

CREATE PROCEDURE [dbo].[InsertAbout]
@AboutText NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO [dbo].[About] (AboutText)
    VALUES (@AboutText);
END;
GO

CREATE PROCEDURE [dbo].[UpdateAbout]
@Id INT,
@AboutText NVARCHAR(MAX)
AS
BEGIN
    UPDATE [dbo].[About]
    SET AboutText = @AboutText
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE [dbo].[DeleteAbout]
@Id INT
AS
BEGIN
    DELETE FROM [dbo].[About] WHERE Id = @Id;
END;
GO
