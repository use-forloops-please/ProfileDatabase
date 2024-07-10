CREATE DATABASE ProfileDatabase;
GO

USE ProfileDatabase;
GO

CREATE TABLE [dbo].[Header] (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    [Profession] NVARCHAR(100) NOT NULL,
    [ProfileImageUrl] NVARCHAR(200),
    [BackgroundImageUrl] NVARCHAR(200)
);

CREATE TABLE [dbo].[Skills] (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [SkillName] NVARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[About] (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Description] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE [dbo].[Project] (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ProjectName] NVARCHAR(100) NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE [dbo].[Contact] (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Email] NVARCHAR(100) NOT NULL,
    [PhoneNumber] NVARCHAR(15)
);
