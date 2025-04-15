-- 1) Mostre todo o histórico escolar de um aluno que teve reprovação em uma disciplina, 
--retornando inclusive a reprovação em um semestre e a aprovação no semestre seguinte

--SELECT 
--    aluno.nome_aluno
--    ,aluno.sobrenome_aluno
--    ,disc.nome_disciplina
--    ,disc.id_disciplina
--    ,his.semestre 
--    ,his.situacao
--    ,his.media
--FROM "Historico_escolar" his
--JOIN "Aluno" aluno ON his.ra_aluno = aluno.ra
--JOIN "Disciplina" disc ON his.id_disciplina = disc.id_disciplina
--WHERE his.ra_aluno = '020053511' 
--ORDER BY his.semestre, disc.id_disciplina, his.situacao DESC

-- /////////////////////////////////////////////////////

-- 2) Mostre todos os TCCs orientados por um professor junto com os nomes dos alunos que fizeram o projeto

--SELECT 
--    tcc.nome_trabalho
--    ,tcc.id_tcc
--    ,aluno.nome_aluno
--    ,aluno.sobrenome_aluno
--    ,tcc.ra_orientador
--FROM "TCC" AS tcc
--JOIN "TCC_aluno" AS tccAluno ON tcc.id_tcc = tccAluno.id_tcc
--JOIN "Aluno" AS aluno ON tccAluno.ra_aluno = aluno.ra
--WHERE tcc.ra_orientador = '514041791'
--ORDER BY tcc.id_tcc

-- /////////////////////////////////////////////////////

-- 3)

-- /////////////////////////////////////////////////////

-- 4) Para um determinado aluno, mostre os códigos e nomes das diciplinas já cursadas 
--junto com os nomes dos professores que lecionaram a disciplina para o aluno

--SELECT DISTINCT
--    aluno.nome_aluno
--    ,aluno.sobrenome_aluno
--    ,aluno.ra
--    ,disc.id_disciplina
--    ,disc.nome_disciplina
--    ,prof.nome_professor
--    ,prof.sobrenome_professor
--FROM "Aluno" as aluno
--JOIN "Historico_escolar" AS his ON his.ra_aluno = aluno.ra
--JOIN "Disciplina" AS disc ON disc.id_disciplina = his.id_disciplina
--JOIN "Professor" AS prof ON disc.ra_professor = prof.ra
--WHERE aluno.ra = '039636825'
--ORDER BY disc.nome_disciplina

-- /////////////////////////////////////////////////////

-- 5) Liste todos os chefes de departamento e coordenadores de curso em apenas uma query de forma que a primeira coluna seja o nome do professor, 
-- a segunda o nome do departamento coordena e a terceira o nome do curso que coordena. 
-- Substitua os campos em branco do resultado da query pelo texto "nenhum"

--SELECT 
--    prof.nome_professor
--    ,COALESCE(depart.nome_departamento, 'Nenhum') AS nome_departamento
--    ,COALESCE(curso.nome_curso, 'Nenhum') AS nome_curso
--FROM "Professor" AS prof
--LEFT JOIN "Departamento" AS depart ON depart.ra_chefe_departamento = prof.ra
--LEFT JOIN "Curso" AS curso ON curso.ra_cordenador_curso = prof.ra
--ORDER BY prof.ra

-- /////////////////////////////////////////////////////

-- 6) Encontra os nomes de todos os estudantes que cursaram Cinecia da computação 

--SELECT a.nome_aluno as nome, a.sobrenome_aluno as sobrenome
--FROM "Aluno" a
--JOIN "Curso" c ON a.id_curso = c.id_curso
--WHERE c.nome_curso = 'Ciencia da Computacao';


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////


-- /////////////////////////////////////////////////////
