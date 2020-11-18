--Inserts de SQL das tabelas FamiliaProduto, CategoriasProdutos, Localizacao e Produtos - Parte 3
INSERT INTO FamiliaProduto (ID,Nome) VALUES (1,'Limpeza');
INSERT INTO FamiliaProduto (ID,Nome) VALUES (2,'Alimentares');
INSERT INTO FamiliaProduto (ID,Nome) VALUES (3,'Casa');
INSERT INTO FamiliaProduto (ID,Nome) VALUES (4,'Vestuario');
INSERT INTO FamiliaProduto (ID,Nome) VALUES (5,'Pets');


INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (1,'Produtos de Limpeza',1);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (2,'Frutas e Legumes',2);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (3,'Lacticinios',2);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (4,'Jardim',3);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (5,'Moveis',3);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (6,'Decoração',3);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (7,'Roupa',4);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (8,'Calçado',4);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (9,'Comida para Animais',5);
INSERT INTO CategoriasProdutos (ID,Nome,ID_FamiliaProdutos) VALUES (10,'Outros',5);


INSERT INTO Localizacao (ID,Nome,Tipo,Morada,Numero,Andar,CodigoPostal,Contacto,WebSite) VALUES (1,'Armazem De Cima','Armazem','Rua do Armazem de Cima',2,null,'2138-196',213894331,null);
INSERT INTO Localizacao (ID,Nome,Tipo,Morada,Numero,Andar,CodigoPostal,Contacto,WebSite) VALUES (2,'Armazem De Baixo','Armazem','Rua do Armazem de Baixo',10,null,'2800-113',265498831,null);
INSERT INTO Localizacao (ID,Nome,Tipo,Morada,Numero,Andar,CodigoPostal,Contacto,WebSite) VALUES (3,'Loja Online','Loja',null,null,null,null,214556789,null);


INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (1,'Lixivia',100,6,null,null,null,null,1,'Famec',1,str_to_date('2020.11.14','%Y.%m.%d'),1,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (2,'Lava-Loiça',100,6,null,null,null,null,1,'Famec',1,str_to_date('2020.11.14','%Y.%m.%d'),1,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (3,'Detergente',100,6,null,null,null,null,1,'Famec',1,str_to_date('2020.11.14','%Y.%m.%d'),1,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (4,'Detergente',100,6,null,null,null,null,1,'Famec',2,str_to_date('2020.11.14','%Y.%m.%d'),1,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (5,'Batata',100,1,null,null,null,null,1,'HortaFoods',1,str_to_date('2020.11.14','%Y.%m.%d'),2,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (6,'Batata',100,1,null,null,null,null,1,'HortaFoods',2,str_to_date('2020.11.14','%Y.%m.%d'),2,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (7,'Couve',100,1,null,null,null,null,1,'HortaFoods',1,str_to_date('2020.11.14','%Y.%m.%d'),2,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (8,'Couve',100,1,null,null,null,null,1,'HortaFoods',2,str_to_date('2020.11.14','%Y.%m.%d'),2,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (9,'Morangos',100,1,null,null,null,null,1,'HortaFoods',1,str_to_date('2020.11.14','%Y.%m.%d'),2,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (10,'Leite',100,2,null,null,null,null,1,'HortaFoods',1,str_to_date('2020.11.14','%Y.%m.%d'),3,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (11,'Queijo',100,2,null,null,null,null,1,'HortaFoods',2,str_to_date('2020.11.14','%Y.%m.%d'),3,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (12,'Mesa de Jardim',25,30,null,null,null,null,1,'OriHerb',1,str_to_date('2020.11.14','%Y.%m.%d'),4,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (13,'Cadeira de Jardim',100,8,null,null,null,null,1,'OriHerb',1,str_to_date('2020.11.14','%Y.%m.%d'),4,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (14,'Mesa de Sala',100,40,null,null,null,null,1,'OriHouse',1,str_to_date('2020.11.14','%Y.%m.%d'),5,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (15,'Cadeira de Sala',100,10,null,null,null,null,1,'OriHouse',1,str_to_date('2020.11.14','%Y.%m.%d'),5,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (16,'Gnomo de Jardim',100,40,null,null,null,null,1,'OriHerb',1,str_to_date('2020.11.14','%Y.%m.%d'),6,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (17,'Baloiço',100,10,null,null,null,null,1,'OriHerb',1,str_to_date('2020.11.14','%Y.%m.%d'),6,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (18,'Calças de Ganga',100,20,null,null,null,null,1,'Raposo',1,str_to_date('2020.11.14','%Y.%m.%d'),7,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (19,'Polos',100,10,null,null,null,null,1,'Raposo',1,str_to_date('2020.11.14','%Y.%m.%d'),7,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (20,'Botas',100,50,null,null,null,null,1,'Raposo',1,str_to_date('2020.11.14','%Y.%m.%d'),8,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (21,'Chinelos',100,10,null,null,null,null,1,'Raposo',1,str_to_date('2020.11.14','%Y.%m.%d'),8,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (22,'Comida Seca',100,35,null,null,null,null,1,'HortaPets',1,str_to_date('2020.11.14','%Y.%m.%d'),9,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (23,'Pâté',100,1,null,null,null,null,1,'HortaPets',1,str_to_date('2020.11.14','%Y.%m.%d'),9,null);

INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (22,'Areia para Gatos',100,5,null,null,null,null,1,'HortaPets',1,str_to_date('2020.11.14','%Y.%m.%d'),10,null);
INSERT INTO Produtos (ID,Nome, Quantidade,Preço,Altura,Largura,Comprimento,Descrição,Peso,Marca,ID_Localizacao,DataRegisto,ID_CategoriasProdutos,Foto) VALUES (23,'Arranhador',100,10,null,null,null,null,1,'HortaPets',1,str_to_date('2020.11.14','%Y.%m.%d'),10,null);


