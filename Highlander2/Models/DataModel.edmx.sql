
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/10/2016 13:44:40
-- Generated from EDMX file: C:\Users\maxon\Documents\Visual Studio 2015\Projects\Highlander2\Highlander2\Models\DataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TestDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TemplateDocument]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet_Template] DROP CONSTRAINT [FK_TemplateDocument];
GO
IF OBJECT_ID(N'[dbo].[FK_TagArtifact_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TagArtifact] DROP CONSTRAINT [FK_TagArtifact_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_TagArtifact_Artifact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TagArtifact] DROP CONSTRAINT [FK_TagArtifact_Artifact];
GO
IF OBJECT_ID(N'[dbo].[FK_InformationBlockTemplate_InformationBlock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformationBlockTemplate] DROP CONSTRAINT [FK_InformationBlockTemplate_InformationBlock];
GO
IF OBJECT_ID(N'[dbo].[FK_InformationBlockTemplate_Template]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformationBlockTemplate] DROP CONSTRAINT [FK_InformationBlockTemplate_Template];
GO
IF OBJECT_ID(N'[dbo].[FK_DirectoryDirectory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DirectorySet] DROP CONSTRAINT [FK_DirectoryDirectory];
GO
IF OBJECT_ID(N'[dbo].[FK_ArtifactDirectory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet] DROP CONSTRAINT [FK_ArtifactDirectory];
GO
IF OBJECT_ID(N'[dbo].[FK_InformationBlock_inherits_Artifact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet_InformationBlock] DROP CONSTRAINT [FK_InformationBlock_inherits_Artifact];
GO
IF OBJECT_ID(N'[dbo].[FK_Template_inherits_InformationBlock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet_Template] DROP CONSTRAINT [FK_Template_inherits_InformationBlock];
GO
IF OBJECT_ID(N'[dbo].[FK_Document_inherits_Artifact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet_Document] DROP CONSTRAINT [FK_Document_inherits_Artifact];
GO
IF OBJECT_ID(N'[dbo].[FK_Atom_inherits_InformationBlock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArtifactSet_Atom] DROP CONSTRAINT [FK_Atom_inherits_InformationBlock];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ArtifactSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArtifactSet];
GO
IF OBJECT_ID(N'[dbo].[TagSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TagSet];
GO
IF OBJECT_ID(N'[dbo].[DirectorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DirectorySet];
GO
IF OBJECT_ID(N'[dbo].[ArtifactSet_InformationBlock]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArtifactSet_InformationBlock];
GO
IF OBJECT_ID(N'[dbo].[ArtifactSet_Template]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArtifactSet_Template];
GO
IF OBJECT_ID(N'[dbo].[ArtifactSet_Document]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArtifactSet_Document];
GO
IF OBJECT_ID(N'[dbo].[ArtifactSet_Atom]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArtifactSet_Atom];
GO
IF OBJECT_ID(N'[dbo].[TagArtifact]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TagArtifact];
GO
IF OBJECT_ID(N'[dbo].[InformationBlockTemplate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InformationBlockTemplate];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ArtifactSet'
CREATE TABLE [dbo].[ArtifactSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Version] int  NOT NULL,
    [EditorRequired] bit  NOT NULL,
    [Directory_Id] int  NOT NULL
);
GO

-- Creating table 'TagSet'
CREATE TABLE [dbo].[TagSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DirectorySet'
CREATE TABLE [dbo].[DirectorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Parent_Id] int  NULL
);
GO

-- Creating table 'ArtifactSet_InformationBlock'
CREATE TABLE [dbo].[ArtifactSet_InformationBlock] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'ArtifactSet_Template'
CREATE TABLE [dbo].[ArtifactSet_Template] (
    [Id] int  NOT NULL,
    [Document_Id] int  NULL
);
GO

-- Creating table 'ArtifactSet_Document'
CREATE TABLE [dbo].[ArtifactSet_Document] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'ArtifactSet_Atom'
CREATE TABLE [dbo].[ArtifactSet_Atom] (
    [Text] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'TagArtifact'
CREATE TABLE [dbo].[TagArtifact] (
    [Tag_Id] int  NOT NULL,
    [Artifact_Id] int  NOT NULL
);
GO

-- Creating table 'InformationBlockTemplate'
CREATE TABLE [dbo].[InformationBlockTemplate] (
    [Blocks_Id] int  NOT NULL,
    [LinkedTemplates_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ArtifactSet'
ALTER TABLE [dbo].[ArtifactSet]
ADD CONSTRAINT [PK_ArtifactSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TagSet'
ALTER TABLE [dbo].[TagSet]
ADD CONSTRAINT [PK_TagSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DirectorySet'
ALTER TABLE [dbo].[DirectorySet]
ADD CONSTRAINT [PK_DirectorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArtifactSet_InformationBlock'
ALTER TABLE [dbo].[ArtifactSet_InformationBlock]
ADD CONSTRAINT [PK_ArtifactSet_InformationBlock]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArtifactSet_Template'
ALTER TABLE [dbo].[ArtifactSet_Template]
ADD CONSTRAINT [PK_ArtifactSet_Template]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArtifactSet_Document'
ALTER TABLE [dbo].[ArtifactSet_Document]
ADD CONSTRAINT [PK_ArtifactSet_Document]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ArtifactSet_Atom'
ALTER TABLE [dbo].[ArtifactSet_Atom]
ADD CONSTRAINT [PK_ArtifactSet_Atom]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Tag_Id], [Artifact_Id] in table 'TagArtifact'
ALTER TABLE [dbo].[TagArtifact]
ADD CONSTRAINT [PK_TagArtifact]
    PRIMARY KEY CLUSTERED ([Tag_Id], [Artifact_Id] ASC);
GO

-- Creating primary key on [Blocks_Id], [LinkedTemplates_Id] in table 'InformationBlockTemplate'
ALTER TABLE [dbo].[InformationBlockTemplate]
ADD CONSTRAINT [PK_InformationBlockTemplate]
    PRIMARY KEY CLUSTERED ([Blocks_Id], [LinkedTemplates_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Document_Id] in table 'ArtifactSet_Template'
ALTER TABLE [dbo].[ArtifactSet_Template]
ADD CONSTRAINT [FK_TemplateDocument]
    FOREIGN KEY ([Document_Id])
    REFERENCES [dbo].[ArtifactSet_Document]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TemplateDocument'
CREATE INDEX [IX_FK_TemplateDocument]
ON [dbo].[ArtifactSet_Template]
    ([Document_Id]);
GO

-- Creating foreign key on [Tag_Id] in table 'TagArtifact'
ALTER TABLE [dbo].[TagArtifact]
ADD CONSTRAINT [FK_TagArtifact_Tag]
    FOREIGN KEY ([Tag_Id])
    REFERENCES [dbo].[TagSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Artifact_Id] in table 'TagArtifact'
ALTER TABLE [dbo].[TagArtifact]
ADD CONSTRAINT [FK_TagArtifact_Artifact]
    FOREIGN KEY ([Artifact_Id])
    REFERENCES [dbo].[ArtifactSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TagArtifact_Artifact'
CREATE INDEX [IX_FK_TagArtifact_Artifact]
ON [dbo].[TagArtifact]
    ([Artifact_Id]);
GO

-- Creating foreign key on [Blocks_Id] in table 'InformationBlockTemplate'
ALTER TABLE [dbo].[InformationBlockTemplate]
ADD CONSTRAINT [FK_InformationBlockTemplate_InformationBlock]
    FOREIGN KEY ([Blocks_Id])
    REFERENCES [dbo].[ArtifactSet_InformationBlock]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [LinkedTemplates_Id] in table 'InformationBlockTemplate'
ALTER TABLE [dbo].[InformationBlockTemplate]
ADD CONSTRAINT [FK_InformationBlockTemplate_Template]
    FOREIGN KEY ([LinkedTemplates_Id])
    REFERENCES [dbo].[ArtifactSet_Template]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InformationBlockTemplate_Template'
CREATE INDEX [IX_FK_InformationBlockTemplate_Template]
ON [dbo].[InformationBlockTemplate]
    ([LinkedTemplates_Id]);
GO

-- Creating foreign key on [Parent_Id] in table 'DirectorySet'
ALTER TABLE [dbo].[DirectorySet]
ADD CONSTRAINT [FK_DirectoryDirectory]
    FOREIGN KEY ([Parent_Id])
    REFERENCES [dbo].[DirectorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirectoryDirectory'
CREATE INDEX [IX_FK_DirectoryDirectory]
ON [dbo].[DirectorySet]
    ([Parent_Id]);
GO

-- Creating foreign key on [Directory_Id] in table 'ArtifactSet'
ALTER TABLE [dbo].[ArtifactSet]
ADD CONSTRAINT [FK_ArtifactDirectory]
    FOREIGN KEY ([Directory_Id])
    REFERENCES [dbo].[DirectorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArtifactDirectory'
CREATE INDEX [IX_FK_ArtifactDirectory]
ON [dbo].[ArtifactSet]
    ([Directory_Id]);
GO

-- Creating foreign key on [Id] in table 'ArtifactSet_InformationBlock'
ALTER TABLE [dbo].[ArtifactSet_InformationBlock]
ADD CONSTRAINT [FK_InformationBlock_inherits_Artifact]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[ArtifactSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'ArtifactSet_Template'
ALTER TABLE [dbo].[ArtifactSet_Template]
ADD CONSTRAINT [FK_Template_inherits_InformationBlock]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[ArtifactSet_InformationBlock]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'ArtifactSet_Document'
ALTER TABLE [dbo].[ArtifactSet_Document]
ADD CONSTRAINT [FK_Document_inherits_Artifact]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[ArtifactSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'ArtifactSet_Atom'
ALTER TABLE [dbo].[ArtifactSet_Atom]
ADD CONSTRAINT [FK_Atom_inherits_InformationBlock]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[ArtifactSet_InformationBlock]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------