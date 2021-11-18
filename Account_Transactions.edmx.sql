
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/17/2021 23:13:25
-- Generated from EDMX file: E:\source\IgorMarinho_WebApp\Account_Transactions.edmx
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

IF OBJECT_ID(N'[dbo].[Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts];
GO
IF OBJECT_ID(N'[dbo].[reminders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[reminders];
GO
IF OBJECT_ID(N'[dbo].[reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[reports];
GO
IF OBJECT_ID(N'[dbo].[acc_trans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[acc_trans];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Accounts'
CREATE TABLE [dbo].[Accounts] (
    [acc_id] int IDENTITY(1,1) NOT NULL,
    [acc_name] nvarchar(max)  NOT NULL,
    [trans] nvarchar(max)  NULL,
    [ins_total] nvarchar(max)  NULL,
    [outs_total] nvarchar(max)  NULL,
    [user_id] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'reminders'
CREATE TABLE [dbo].[reminders] (
    [reminder_id] int IDENTITY(1,1) NOT NULL,
    [user_id] nvarchar(max)  NOT NULL,
    [rem_date] nvarchar(max)  NOT NULL,
    [repeat] nvarchar(max)  NOT NULL,
    [fullname] nvarchar(max)  NOT NULL,
    [acc_name] nvarchar(max)  NOT NULL,
    [in_id] int  NOT NULL,
    [out_id] int  NULL
);
GO

-- Creating table 'reports'
CREATE TABLE [dbo].[reports] (
    [report_id] int IDENTITY(1,1) NOT NULL,
    [trans_id] int  NOT NULL,
    [trans_name] nvarchar(max)  NOT NULL,
    [trans_value] nvarchar(max)  NOT NULL,
    [trans_reg_date] nvarchar(max)  NOT NULL,
    [trans_rem_date] nvarchar(max)  NOT NULL,
    [repeat] nvarchar(max)  NOT NULL,
    [acc_id] int  NOT NULL,
    [user_id] nvarchar(max)  NOT NULL,
    [acc_name] nvarchar(max)  NOT NULL,
    [ins_total] nvarchar(max)  NOT NULL,
    [outs_total] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'acc_trans'
CREATE TABLE [dbo].[acc_trans] (
    [trans_id] int IDENTITY(1,1) NOT NULL,
    [acc_id] nvarchar(max)  NOT NULL,
    [trans_name] nvarchar(max)  NOT NULL,
    [trans_value] nvarchar(max)  NULL,
    [trans_reg_date] nvarchar(max)  NOT NULL,
    [trans_rem_date] nvarchar(max)  NULL,
    [repeat] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [acc_id] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [PK_Accounts]
    PRIMARY KEY CLUSTERED ([acc_id] ASC);
GO

-- Creating primary key on [reminder_id] in table 'reminders'
ALTER TABLE [dbo].[reminders]
ADD CONSTRAINT [PK_reminders]
    PRIMARY KEY CLUSTERED ([reminder_id] ASC);
GO

-- Creating primary key on [report_id] in table 'reports'
ALTER TABLE [dbo].[reports]
ADD CONSTRAINT [PK_reports]
    PRIMARY KEY CLUSTERED ([report_id] ASC);
GO

-- Creating primary key on [trans_id] in table 'acc_trans'
ALTER TABLE [dbo].[acc_trans]
ADD CONSTRAINT [PK_acc_trans]
    PRIMARY KEY CLUSTERED ([trans_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------