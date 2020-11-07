-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Livros] (
    [ID] int  NOT NULL ,
    [Titulo] string  NOT NULL ,
    [Status] string  NOT NULL ,
    [Genero] char  NULL ,
    [Preco] money  NOT NULL ,
    [Quantidade] int  NOT NULL ,
    [IdDoAutor] int  NOT NULL ,
    [IdEditora] int  NOT NULL ,
    [Local] string  NOT NULL ,
    CONSTRAINT [PK_Livros] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Utentes] (
    [Id] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Morada] string  NOT NULL ,
    [Numero] int  NOT NULL ,
    [Andar] int  NOT NULL ,
    [CodigoPostal] int  NOT NULL ,
    [Contacto] int  NOT NULL ,
    [Telefone] int  NOT NULL ,
    [DataDeNascimento] date  NOT NULL ,
    [CC] int  NOT NULL ,
    CONSTRAINT [PK_Utentes] PRIMARY KEY CLUSTERED (
        [Id] ASC
    ),
    CONSTRAINT [UK_Utentes_CC] UNIQUE (
        [CC]
    )
)

CREATE TABLE [Editoras] (
    [Id] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Morada] string  NOT NULL ,
    [Numero] int  NOT NULL ,
    [Andar] int  NOT NULL ,
    [CodigoPostal] int  NOT NULL ,
    [Telefone] int  NOT NULL ,
    [Contacto] string  NOT NULL ,
    [WebSite] string  NOT NULL ,
    [Id_Localdide] string  NOT NULL ,
    CONSTRAINT [PK_Editoras] PRIMARY KEY CLUSTERED (
        [Id] ASC
    )
)

CREATE TABLE [Autores] (
    [Id] int  NOT NULL ,
    [Nome] string  NOT NULL ,
    [Pais] string  NOT NULL ,
    [Lingua] string  NOT NULL ,
    CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED (
        [Id] ASC
    )
)

CREATE TABLE [Requisicoes] (
    [Id] int  NOT NULL ,
    [IdDoLivro] int  NOT NULL ,
    [IdDoUtente] int  NOT NULL ,
    [Data_Requisiçao] data  NOT NULL ,
    [Data_Devoluçao] data  NOT NULL ,
    CONSTRAINT [PK_Requisicoes] PRIMARY KEY CLUSTERED (
        [Id] ASC
    )
)

CREATE TABLE [Localidades] (
    [Id] int  NOT NULL ,
    [CodigoPostal] string  NOT NULL ,
    [Localidade] string  NOT NULL ,
    CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED (
        [Id] ASC
    )
)

CREATE TABLE [LivroAutores] (
    [id] int  NOT NULL ,
    [idLivro] int  NOT NULL ,
    [idAutores] int  NOT NULL ,
    CONSTRAINT [PK_LivroAutores] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [Editoras] WITH CHECK ADD CONSTRAINT [FK_Editoras_Id] FOREIGN KEY([Id])
REFERENCES [Livros] ([IdEditora])

ALTER TABLE [Editoras] CHECK CONSTRAINT [FK_Editoras_Id]

ALTER TABLE [Editoras] WITH CHECK ADD CONSTRAINT [FK_Editoras_Id_Localdide] FOREIGN KEY([Id_Localdide])
REFERENCES [Localidades] ([Id])

ALTER TABLE [Editoras] CHECK CONSTRAINT [FK_Editoras_Id_Localdide]

ALTER TABLE [Requisicoes] WITH CHECK ADD CONSTRAINT [FK_Requisicoes_IdDoLivro] FOREIGN KEY([IdDoLivro])
REFERENCES [Livros] ([ID])

ALTER TABLE [Requisicoes] CHECK CONSTRAINT [FK_Requisicoes_IdDoLivro]

ALTER TABLE [Requisicoes] WITH CHECK ADD CONSTRAINT [FK_Requisicoes_IdDoUtente] FOREIGN KEY([IdDoUtente])
REFERENCES [Utentes] ([Id])

ALTER TABLE [Requisicoes] CHECK CONSTRAINT [FK_Requisicoes_IdDoUtente]

ALTER TABLE [LivroAutores] WITH CHECK ADD CONSTRAINT [FK_LivroAutores_idLivro] FOREIGN KEY([idLivro])
REFERENCES [Livros] ([IdDoAutor])

ALTER TABLE [LivroAutores] CHECK CONSTRAINT [FK_LivroAutores_idLivro]

ALTER TABLE [LivroAutores] WITH CHECK ADD CONSTRAINT [FK_LivroAutores_idAutores] FOREIGN KEY([idAutores])
REFERENCES [Autores] ([Id])

ALTER TABLE [LivroAutores] CHECK CONSTRAINT [FK_LivroAutores_idAutores]

COMMIT TRANSACTION QUICKDBD