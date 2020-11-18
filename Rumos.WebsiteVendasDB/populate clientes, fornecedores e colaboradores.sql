--populate de fornecedores, colaboradores e cliente

INSERT INTO Fornecedores (ID,Nome,Morada,Numero,Andar,CodigoPostal,Telefone,Nome_Contacto,WebSite,País,eMail,Descrição) VALUES (1,'Herb','Rua da Herb', null,null,null,915332002,'Joaquim Herb',null,'Portugal',null,null);
INSERT INTO Fornecedores (ID,Nome,Morada,Numero,Andar,CodigoPostal,Telefone,Nome_Contacto,WebSite,País,eMail,Descrição) VALUES (2,'Raposo','Rua do Raposo', null,null,null,915332002,'Joaquim Raposo',null,'Portugal',null,null);
INSERT INTO Fornecedores (ID,Nome,Morada,Numero,Andar,CodigoPostal,Telefone,Nome_Contacto,WebSite,País,eMail,Descrição) VALUES (3,'Famec','Rua da Famec', null,null,null,915332002,'Joaquim Famec',null,'Portugal',null,null);
INSERT INTO Fornecedores (ID,Nome,Morada,Numero,Andar,CodigoPostal,Telefone,Nome_Contacto,WebSite,País,eMail,Descrição) VALUES (4,'Horta','Rua da Horta', null,null,null,915332002,'Joaquim Horta',null,'Portugal',null,null);

INSERT INTO Clientes (ID,Nome,Genero,Telefone,email,Data_Registo,Distrito,Morada,Numero,Andar,CodigoPostal,Foto,Pass,Descrição) VALUES (1,'Jacinta Santader','F',915043991,null,'1994.08.15','%Y.%m.%d',null,null,null,null,null,'Qwerty',null);
INSERT INTO Clientes (ID,Nome,Genero,Telefone,email,Data_Registo,Distrito,Morada,Numero,Andar,CodigoPostal,Foto,Pass,Descrição) VALUES (2,'Alberto Santader','M',915043991,null,'1994.08.15','%Y.%m.%d',null,null,null,null,null,'Qwerty',null);
INSERT INTO Clientes (ID,Nome,Genero,Telefone,email,Data_Registo,Distrito,Morada,Numero,Andar,CodigoPostal,Foto,Pass,Descrição) VALUES (3,'Jaquina Santader','F',915043991,null,'1994.08.15','%Y.%m.%d',null,null,null,null,null,'Qwerty',null);

INSERT INTO Colaboradores (ID,Nome,Telefone,Morada,Numero,Andar,CodigoPostal,Data_admissao,Area,Departamento,Nivel_Permissao,Pass,Foto,eMail,CC,Descrição) VALUES (1,'Emanuel Ferrador',null,null,null,null,'1994.08.15','%Y.%m.%d','Gestão','Adminstração',1,'Qwerty',null,null,null,null);
INSERT INTO Colaboradores (ID,Nome,Telefone,Morada,Numero,Andar,CodigoPostal,Data_admissao,Area,Departamento,Nivel_Permissao,Pass,Foto,eMail,CC,Descrição) VALUES (2,'Albertina Ferrador',null,null,null,null,'1994.08.15','%Y.%m.%d','Gestão','Adminstração',2,'Qwerty',null,null,null,null);
INSERT INTO Colaboradores (ID,Nome,Telefone,Morada,Numero,Andar,CodigoPostal,Data_admissao,Area,Departamento,Nivel_Permissao,Pass,Foto,eMail,CC,Descrição) VALUES (3,'Rogerio Mineiro',null,null,null,null,'1994.08.15','%Y.%m.%d','Gestão','Adminstração',3,'Qwerty',null,null,null,null);
INSERT INTO Colaboradores (ID,Nome,Telefone,Morada,Numero,Andar,CodigoPostal,Data_admissao,Area,Departamento,Nivel_Permissao,Pass,Foto,eMail,CC,Descrição) VALUES (4,'Tatiano dos Melos',null,null,null,null,'1994.08.15','%Y.%m.%d','Gestão','Adminstração',3,'Qwerty',null,null,null,null);



