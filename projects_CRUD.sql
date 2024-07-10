CREATE PROCEDURE [dbo].[GetProjects]
AS
BEGIN
    SELECT * FROM [dbo].[Projects];
END;
GO

CREATE PROCEDURE [dbo].[InsertProjects]
@ProjectName NVARCHAR(100),
@Description NVARCHAR(500),
@ProjectUrl NVARCHAR(200)
AS
BEGIN
    INSERT INTO [dbo].[Projects] (ProjectName, Description, ProjectUrl)
    VALUES (@ProjectName, @Description, @ProjectUrl);
END;
GO

CREATE PROCEDURE [dbo].[UpdateProjects]
@Id INT,
@ProjectName NVARCHAR(100),
@Description NVARCHAR(500),
@ProjectUrl NVARCHAR(200)
AS
BEGIN
    UPDATE [dbo].[Projects]
    SET ProjectName = @ProjectName, Description = @Description, ProjectUrl = @ProjectUrl
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE [dbo].[DeleteProjects]
@Id INT
AS
BEGIN
    DELETE FROM [dbo].[Projects] WHERE Id = @Id;
END;
GO
