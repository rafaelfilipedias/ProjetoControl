CREATE DATABASE bdProjetoControl
GO
USE bdProjetoControl
GO

CREATE TABLE Empresa(
	nomeFantasia	VARCHAR (100) NOT NULL,
	telefone		VARCHAR (13) NOT NULL,
	razaoSocial		VARCHAR (20) NOT NULL,
	endereco		VARCHAR (150) NOT NULL,
	cnjp			VARCHAR (20) PRIMARY KEY  NOT NULL,
	email			VARCHAR (100) NOT NULL,
	responsavel		VARCHAR (100) NOT NULL
);

CREATE TABLE Semestre (
	dataInicio		DATE NOT NULL,
	dataFim			DATE NOT NULL,
	codSemestre		INT PRIMARY KEY NOT NULL,
	numAlunos		INT NOT  NULL,
);
CREATE TABLE Aluno(
	raAluno			INT PRIMARY KEY NOT NULL,
	nomeAluno		VARCHAR (100) NOT NULL,
	dataNas			DATE NOT NULL,
	idade			INT NOT NULL,
	sexo			CHAR (1) NOT NULL,
	grau_instrucao	VARCHAR (50) NOT NULL,
	rua				VARCHAR (100) NOT NULL,
	numero			INT NOT NULL,
	complemento		VARCHAR (50) NOT NULL,
	bairro			VARCHAR (50) NOT NULL,
	estado			CHAR (2) NOT NULL,
	cidade			CHAR (50) NOT NULL,
	cep				CHAR (9) NOT NULL,
	telefone1		VARCHAR(13) NOT NULL,
	identidade		VARCHAR (13) NOT NULL,
	cpf				CHAR (12) NOT NULL,
	email			VARCHAR (100) NOT NULL,
	carteira_de_trabalho VARCHAR (15) NOT NULL,
	nomePai			VARCHAR (100) NOT NULL,
	telefonePai		VARCHAR(13) NOT NULL,
	nomeMae			VARCHAR (100) NOT NULL,
	telefoneMae		VARCHAR(13) NOT NULL,
	nomeCurso		VARCHAR (30) NOT NULL,
	codTurma		VARCHAR (15) NOT NULL,
	statusAluno		VARCHAR (20) NOT NULL,
	telefoneAluno2	VARCHAR (13) NOT NULL,
	Empresa_cnpj	VARCHAR (20) NOT NULL,
	FOREIGN KEY (Empresa_cnpj) REFERENCES Empresa (cnpj),
	Semestre_codSemestre INT NOT NULL,
	FOREIGN KEY (Semestre_codSemestre) REFERENCES Semestre (codSemestre),
);

CREATE TABLE Funcionario (
	usuario VARCHAR (15),
	tipoFunc INT,
	senha VARCHAR (8),
	cpf VARCHAR (13) PRIMARY KEY NOT NULL,
);
