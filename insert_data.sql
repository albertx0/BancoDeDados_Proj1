-- Inserção de dados fictícios

INSERT INTO Departamento (ID, Nome) VALUES
(1, 'Ciência da Computação'),
(2, 'Matemática');

INSERT INTO Curso (ID, Nome, DepartamentoID) VALUES
(1, 'Ciência da Computação', 1),
(2, 'Ciência de Dados', 1);

INSERT INTO Aluno (RA, Nome, CursoID) VALUES
(1, 'João Silva', 1),
(2, 'Maria Santos', 2);


