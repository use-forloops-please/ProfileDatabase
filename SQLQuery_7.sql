CREATE PROCEDURE [dbo].[GetContact]
AS
BEGIN
    SELECT * FROM [dbo].[Contact];
END;
GO

CREATE PROCEDURE [dbo].[InsertContact]
@PhoneNumber NVARCHAR(20),
@Email NVARCHAR(100),
@Address NVARCHAR(200)
AS
BEGIN
    INSERT INTO [dbo].[Contact] (PhoneNumber, Email, Address)
    VALUES (@PhoneNumber, @Email, @Address);
END;
GO

CREATE PROCEDURE [dbo].[UpdateContact]
@Id INT,
@PhoneNumber NVARCHAR(20),
@Email NVARCHAR(100),
@Address NVARCHAR(200)
AS
BEGIN
    UPDATE [dbo].[Contact]
    SET PhoneNumber = @PhoneNumber, Email = @Email, Address = @Address
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE [dbo].[DeleteContact]
@Id INT
AS
BEGIN
    DELETE FROM [dbo].[Contact] WHERE Id = @Id;
END;
GO
