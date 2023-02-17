
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/01/2022 17:44:50
-- Generated from EDMX file: C:\Users\Mai\source\repos\Assignment 2\ConsoleApp1\ConsoleApp1\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Assigments];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Stud_name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Enrollments'
CREATE TABLE [dbo].[Enrollments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Grade] int  NOT NULL,
    [StudentId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Enrollments'
ALTER TABLE [dbo].[Enrollments]
ADD CONSTRAINT [PK_Enrollments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentId] in table 'Enrollments'
ALTER TABLE [dbo].[Enrollments]
ADD CONSTRAINT [FK_StudentEnrollment]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentEnrollment'
CREATE INDEX [IX_FK_StudentEnrollment]
ON [dbo].[Enrollments]
    ([StudentId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------