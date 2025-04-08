CREATE DATABASE SistemaAcademico;
USE SistemaAcademico;

CREATE TABLE Curso (
	CodCurso CHAR (3),
    Nome VARCHAR (20),
    Mensalidade NUMERIC (10, 2),
    PRIMARY KEY (CodCurso)
);

CREATE TABLE Aluno (
	RA CHAR (9),
    RG CHAR (9),
    Nome VARCHAR (30),
    CodCurso CHAR (3),
    PRIMARY KEY (RA),
	FOREIGN KEY (CodCurso) REFERENCES Curso (CodCurso)
);

CREATE TABLE Disciplinas (
	CodDisc INT,
    Nome CHAR (30),
    NroCred	INT (11),
    CodCurso CHAR (3),
	PRIMARY KEY (CodDisc),
	FOREIGN KEY (CodCurso) REFERENCES Curso (CodCurso)
);

CREATE TABLE Boletim (
	RA INT,
    CodDisc INT(11),
	Nota DECIMAL (10, 2),
    PRIMARY KEY (RA, CodDisc),
    FOREIGN KEY (RA) REFERENCES Aluno (RA),
    FOREIGN KEY (CodDisc) REFERENCES Disciplina (CodDisc)
);

INSERT INTO Aluno VALUES (
('123456789' , '123456789', 'Eduardo Costa'),
('987654321', '987654321', 'Jose Carlos')
);

