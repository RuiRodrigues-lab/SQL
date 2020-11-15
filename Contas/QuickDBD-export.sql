-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XJLcPm
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

-- Rui Rodrigues
CREATE TABLE [Contas] (
    [ID] int  NOT NULL ,
    [ID_Movimentos] int  NOT NULL ,
    [ID_Emprestimos] int  NOT NULL ,
    [ID_Cartoes] int  NOT NULL ,
    [Saldo] double  NOT NULL ,
    CONSTRAINT [PK_Contas] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Titulares] (
    [ID] int  NOT NULL ,
    [ID_Clientes] int  NOT NULL ,
    [ID_Contas] int  NOT NULL ,
    CONSTRAINT [PK_Titulares] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Cartoes] (
    [ID] int  NOT NULL ,
    CONSTRAINT [PK_Cartoes] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Emprestimos] (
    [ID] int  NOT NULL ,
    CONSTRAINT [PK_Emprestimos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Movimentos] (
    [ID] int  NOT NULL ,
    [ID_Cliente] int  NOT NULL ,
    CONSTRAINT [PK_Movimentos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Clientes] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Pass] string  NOT NULL ,
    CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

ALTER TABLE [Titulares] WITH CHECK ADD CONSTRAINT [FK_Titulares_ID_Clientes] FOREIGN KEY([ID_Clientes])
REFERENCES [Clientes] ([ID])

ALTER TABLE [Titulares] CHECK CONSTRAINT [FK_Titulares_ID_Clientes]

ALTER TABLE [Titulares] WITH CHECK ADD CONSTRAINT [FK_Titulares_ID_Contas] FOREIGN KEY([ID_Contas])
REFERENCES [Contas] ([ID])

ALTER TABLE [Titulares] CHECK CONSTRAINT [FK_Titulares_ID_Contas]

ALTER TABLE [Cartoes] WITH CHECK ADD CONSTRAINT [FK_Cartoes_ID] FOREIGN KEY([ID])
REFERENCES [Contas] ([ID_Cartoes])

ALTER TABLE [Cartoes] CHECK CONSTRAINT [FK_Cartoes_ID]

ALTER TABLE [Emprestimos] WITH CHECK ADD CONSTRAINT [FK_Emprestimos_ID] FOREIGN KEY([ID])
REFERENCES [Contas] ([ID_Emprestimos])

ALTER TABLE [Emprestimos] CHECK CONSTRAINT [FK_Emprestimos_ID]

ALTER TABLE [Movimentos] WITH CHECK ADD CONSTRAINT [FK_Movimentos_ID] FOREIGN KEY([ID])
REFERENCES [Contas] ([ID_Movimentos])

ALTER TABLE [Movimentos] CHECK CONSTRAINT [FK_Movimentos_ID]

ALTER TABLE [Movimentos] WITH CHECK ADD CONSTRAINT [FK_Movimentos_ID_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [Clientes] ([ID])

ALTER TABLE [Movimentos] CHECK CONSTRAINT [FK_Movimentos_ID_Cliente]

COMMIT TRANSACTION QUICKDBD