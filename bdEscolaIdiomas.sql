CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
codAluno INT PRIMARY KEY IDENTITY (1,1)
, nomeAluno CHAR (60)NOT NULL
, dataNasc DATE NOT NULL
, rgAluno CHAR (12) UNIQUE
, naturalidadeAluno CHAR (2)
)

CREATE TABLE tbCurso (
codCurso INT PRIMARY KEY IDENTITY (1,1)
, nomeCurso CHAR (60) NOT NULL
, cargaHorariaCurso CHAR (4) NOT NULL
, valorCurso MONEY NOT NULL
)

CREATE TABLE tbTurma(
codTurma INT PRIMARY KEY IDENTITY(1,1)
, nomeTurma CHAR (60) NOT NULL
, horarioTurma TIME NOT NULL
, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
)

CREATE TABLE tbMatricula (
codMatricula INT PRIMARY KEY IDENTITY (1,1)
, dataMatricula DATE NOT NULL
, codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
, codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)