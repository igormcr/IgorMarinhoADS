
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/24/2021 01:38:16
-- Generated from EDMX file: E:\source\WebApplication1_IgorMarinhoCarneiroRodrigues2021\Models\Contas.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Contas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contas];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Contas'
CREATE TABLE [dbo].[Contas] (
    [id_conta] int IDENTITY(1,1) NOT NULL,
    [nome_conta] nvarchar(max)  NOT NULL,
    [numero_conta] nvarchar(max)  NOT NULL,
    [id_cliente] int  NOT NULL,
    [saldo] int  NOT NULL,
    [tipo_conta] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_conta] in table 'Contas'
ALTER TABLE [dbo].[Contas]
ADD CONSTRAINT [PK_Contas]
    PRIMARY KEY CLUSTERED ([id_conta] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------