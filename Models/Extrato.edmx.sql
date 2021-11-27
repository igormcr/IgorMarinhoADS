
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/25/2021 20:28:44
-- Generated from EDMX file: C:\Users\Usuário\Downloads\IgorMarinhoADS-main(1)\IgorMarinhoADS-main\Models\Extrato.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Extratoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Extratoes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Extratoes'
CREATE TABLE [dbo].[Extratoes] (
    [id_extrato] int IDENTITY(1,1) NOT NULL,
    [vl_extrato] int  NOT NULL,
    [data_extrato] datetime  NOT NULL,
    [id_contas] int  NOT NULL,
    [id_cliente] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_extrato] in table 'Extratoes'
ALTER TABLE [dbo].[Extratoes]
ADD CONSTRAINT [PK_Extratoes]
    PRIMARY KEY CLUSTERED ([id_extrato] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------