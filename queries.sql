-- Query 1: Mostre todo o histórico escolar de um aluno que teve reprovação em uma disciplina
SELECT h1.AlunoRA, h1.DisciplinaCodigo, h1.Semestre AS SemestreReprovado, h1.Nota AS NotaReprovado, h2.Semestre AS SemestreAprovado, h2.Nota AS NotaAprovado
FROM HistoricoEscolar h1
JOIN HistoricoEscolar h2 ON h1.AlunoRA = h2.AlunoRA AND h1.DisciplinaCodigo = h2.DisciplinaCodigo
WHERE h1.Situacao = 'Reprovado' AND h2.Situacao = 'Aprovado' AND h1.Semestre < h2.Semestre;

-- Query 2: Mostre todos os TCCs orientados por um professor junto com os nomes dos alunos
SELECT t.Titulo, a.Nome
FROM TCC t
JOIN AlunoTCC at ON t.ID = at.TCCID
JOIN Aluno a ON at.AlunoRA = a.RA
WHERE t.OrientadorID = 1;

-- Query 3: sei la

