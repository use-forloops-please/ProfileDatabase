CREATE PROCEDURE [dbo].[GetSkills]
AS
BEGIN
    SELECT * FROM [dbo].[Skills];
END;
GO

CREATE PROCEDURE [dbo].[InsertSkills]
@SkillName NVARCHAR(100),
AS
BEGIN
    INSERT INTO [dbo].[Skills] (SkillName)
    VALUES (@SkillName);
END;
GO

CREATE PROCEDURE [dbo].[UpdateSkills]
@Id INT,
@SkillName NVARCHAR(100),
@ProficiencyLevel NVARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Skills]
    SET SkillName = @SkillName,l
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE [dbo].[DeleteSkills]
@Id INT
AS
BEGIN
    DELETE FROM [dbo].[Skills] WHERE Id = @Id;
END;
GO
