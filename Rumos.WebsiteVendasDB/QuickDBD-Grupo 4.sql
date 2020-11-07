-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Nf2oAc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Tabelas do Grupo 4 - RUMOS - ADS
-- Membros:
-- Rui Rodrigues
-- Eduardo
-- Alexandre Couto
-- Amanda Nunes

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Produtos] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [Preço] money  NOT NULL ,
    [Altura] double  NULL ,
    [Largura] double  NULL ,
    [Comprimento] double  NULL ,
    [Descrição] nvarchar(50)  NULL ,
    [Peso] double  NULL ,
    [Marca] nvarchar(20)  NULL ,
    [ID_Localizacao] int  NOT NULL ,
    [DataRegisto] datetime  NOT NULL ,
    [ID_FamiliaProdutos] int  NOT NULL ,
    [ID_CategoriasProdutos] int  NOT NULL ,
    [Foto] int  NULL ,
    CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Localizacao] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    [Tipo] int  NULL ,
    [Morada] string  NULL ,
    CONSTRAINT [PK_Localizacao] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Colaboradores] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    [Telefone] nvarchar(9)  NULL ,
    [Morada] nvarchar(50)  NULL ,
    [Data_admissao] date  NOT NULL ,
    [Area] string  NOT NULL ,
    [Departamento] string  NOT NULL ,
    [Nivel_Permissao] int  NOT NULL ,
    [Pass] string  NOT NULL ,
    [Foto] string  NULL ,
    [eMail] string?  NOT NULL ,
    [CC] nvarchar(9)?  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Colaboradores] PRIMARY KEY CLUSTERED (
        [ID] ASC
    ),
    CONSTRAINT [UK_Colaboradores_CC] UNIQUE (
        [CC]
    )
)

CREATE TABLE [Clientes] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    [Telefone] nvarchar(9)  NOT NULL ,
    [email] string  NOT NULL ,
    [Data_Registo] date  NOT NULL ,
    [Morada] nvchar(60)  NULL ,
    [Foto] string  NULL ,
    [Pass] string  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Fornecedores] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    [Morada] string  NOT NULL ,
    [Telefone] int  NOT NULL ,
    [Pais] string  NOT NULL ,
    [eMail] string  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [CategoriasProdutos] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    CONSTRAINT [PK_CategoriasProdutos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [FamiliaProdutos] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [Nome] string  NOT NULL ,
    CONSTRAINT [PK_FamiliaProdutos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Compras] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [ID_Fornecedores] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [Preco] money  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Movimentos] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [ID_Colaboradores] int  NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Movimentos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Vendas] (
    [ID] int IDENTITY(1,1) NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [ID_Clientes] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [Fatura] int?  NOT NULL ,
    [Descrição] nvarchar(50)?  NULL ,
    CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED (
        [ID] ASC
    ),
    CONSTRAINT [UK_Vendas_Fatura] UNIQUE (
        [Fatura]
    )
)

ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [FK_Produtos_ID_FamiliaProdutos] FOREIGN KEY([ID_FamiliaProdutos])
REFERENCES [FamiliaProdutos] ([ID])

ALTER TABLE [Produtos] CHECK CONSTRAINT [FK_Produtos_ID_FamiliaProdutos]

ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [FK_Produtos_ID_CategoriasProdutos] FOREIGN KEY([ID_CategoriasProdutos])
REFERENCES [CategoriasProdutos] ([ID])

ALTER TABLE [Produtos] CHECK CONSTRAINT [FK_Produtos_ID_CategoriasProdutos]

ALTER TABLE [Localizacao] WITH CHECK ADD CONSTRAINT [FK_Localizacao_ID] FOREIGN KEY([ID])
REFERENCES [Produtos] ([ID_Localizacao])

ALTER TABLE [Localizacao] CHECK CONSTRAINT [FK_Localizacao_ID]

ALTER TABLE [Compras] WITH CHECK ADD CONSTRAINT [FK_Compras_ID_Produtos] FOREIGN KEY([ID_Produtos])
REFERENCES [Produtos] ([ID])

ALTER TABLE [Compras] CHECK CONSTRAINT [FK_Compras_ID_Produtos]

ALTER TABLE [Compras] WITH CHECK ADD CONSTRAINT [FK_Compras_ID_Fornecedores] FOREIGN KEY([ID_Fornecedores])
REFERENCES [Fornecedores] ([ID])

ALTER TABLE [Compras] CHECK CONSTRAINT [FK_Compras_ID_Fornecedores]

ALTER TABLE [Movimentos] WITH CHECK ADD CONSTRAINT [FK_Movimentos_ID_Colaboradores] FOREIGN KEY([ID_Colaboradores])
REFERENCES [Colaboradores] ([ID])

ALTER TABLE [Movimentos] CHECK CONSTRAINT [FK_Movimentos_ID_Colaboradores]

ALTER TABLE [Movimentos] WITH CHECK ADD CONSTRAINT [FK_Movimentos_ID_Produtos] FOREIGN KEY([ID_Produtos])
REFERENCES [Produtos] ([ID])

ALTER TABLE [Movimentos] CHECK CONSTRAINT [FK_Movimentos_ID_Produtos]

ALTER TABLE [Vendas] WITH CHECK ADD CONSTRAINT [FK_Vendas_ID_Produtos] FOREIGN KEY([ID_Produtos])
REFERENCES [Produtos] ([ID])

ALTER TABLE [Vendas] CHECK CONSTRAINT [FK_Vendas_ID_Produtos]

ALTER TABLE [Vendas] WITH CHECK ADD CONSTRAINT [FK_Vendas_ID_Clientes] FOREIGN KEY([ID_Clientes])
REFERENCES [Clientes] ([ID])

ALTER TABLE [Vendas] CHECK CONSTRAINT [FK_Vendas_ID_Clientes]

CREATE INDEX [idx_Produtos_Nome]
ON [Produtos] ([Nome])

CREATE INDEX [idx_Colaboradores_Nome]
ON [Colaboradores] ([Nome])

CREATE INDEX [idx_Clientes_Nome]
ON [Clientes] ([Nome])

CREATE INDEX [idx_Fornecedores_Nome]
ON [Fornecedores] ([Nome])

COMMIT TRANSACTION QUICKDBD