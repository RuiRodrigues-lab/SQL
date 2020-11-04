-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Nf2oAc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Produtos] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [Preço] double  NOT NULL ,
    [Altura] double  NULL ,
    [Largura] double  NULL ,
    [Comprimento] double  NULL ,
    [Descrição] nvarchar(50)  NOT NULL ,
    [Peso] double  NULL ,
    [Marca] nvarchar(20)  NOT NULL ,
    [ID_Localizacao] int  NOT NULL ,
    [DataRegisto] datetime  NOT NULL ,
    [ID_FamiliaProdutos] int  NOT NULL ,
    [ID_CategoriasProdutos] int  NOT NULL ,
    [Foto] string  NULL ,
    CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Localizacao] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Tipo] int  NOT NULL ,
    [Morada] string  NOT NULL ,
    CONSTRAINT [PK_Localizacao] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Colaboradores] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Telefone] nvarchar(9)  NOT NULL ,
    CONSTRAINT [PK_Colaboradores] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Clientes] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Telefone] nvarchar(9)  NOT NULL ,
    [email] string  NOT NULL ,
    [Data_Registo] date  NOT NULL ,
    [Morada] nvchar(60)  NOT NULL ,
    [Foto] string  NULL ,
    CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Fornecedores] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Morada] string  NOT NULL ,
    [Telefone] int  NOT NULL ,
    [Pais] string  NOT NULL ,
    CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [CategoriasProdutos] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    CONSTRAINT [PK_CategoriasProdutos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [FamiliaProdutos] (
    [ID] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    CONSTRAINT [PK_FamiliaProdutos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Compras] (
    [ID] int  NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [ID_Fornecedores] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Movimentos] (
    [ID] int  NOT NULL ,
    [ID_Colaboradores] int  NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    CONSTRAINT [PK_Movimentos] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Vendas] (
    [ID] int  NOT NULL ,
    [ID_Produtos] int  NOT NULL ,
    [ID_Clientes] int  NOT NULL ,
    [DataHora] datetime  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED (
        [ID] ASC
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

COMMIT TRANSACTION QUICKDBD