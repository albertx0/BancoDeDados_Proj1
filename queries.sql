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

--SELECT DISTINCT
--  disc.nome_disciplina
--  ,disc.id_disciplina
--FROM "Aluno" as aluno
--JOIN "Historico_escolar" AS his ON his.ra_aluno = aluno.ra
--JOIN "Disciplina" AS disc ON disc.id_disciplina = his.id_disciplina
--WHERE aluno.semestre = 8 AND aluno.id_curso = 'EELEC'
--ORDER BY disc.nome_disciplina

--SELECT DISTINCT
--  disc.nome_disciplina
--  ,disc.id_disciplina
--FROM "Aluno" as aluno
--JOIN "Historico_escolar" AS his ON his.ra_aluno = aluno.ra
--JOIN "Disciplina" AS disc ON disc.id_disciplina = his.id_disciplina
--WHERE aluno.semestre = 8 AND aluno.id_curso = 'CC'
--ORDER BY disc.nome_disciplina

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

-- 7) Liste as discplinas que foram lecionadas pelos professores Carlos e Maria.

--SELECT DISTINCT p.nome_professor AS nome, d.id_disciplina AS "id da materia", d.nome_disciplina AS materia
--FROM "Disciplina" d
--JOIN "Professor" p ON d.ra_professor = p.ra
--WHERE p.nome_professor IN ('Carlos', 'Maria');

-- /////////////////////////////////////////////////////

-- 8) Lista os cursos ministrados pelo professora Isabelly

--SELECT DISTINCT c.id_curso, c.nome_curso
--FROM "Curso" c
--JOIN "Aluno" a ON c.id_curso = a.id_curso
--JOIN "Historico_escolar" h ON a.ra = h.ra_aluno
--JOIN "Disciplina" d ON h.id_disciplina = d.id_disciplina
--JOIN "Professor" p ON d.ra_professor = p.ra
--WHERE p.nome_professor = 'Isabelly';

-- /////////////////////////////////////////////////////

-- 9) Lista os nomes dos estudantes que não cursaram engenharia eletrica ou adminsitracao

--SELECT a.nome_aluno AS nome, a.ra, c.nome_curso AS curso
--FROM "Aluno" a
--JOIN "Curso" c ON a.id_curso = c.id_curso
--WHERE c.nome_curso NOT IN ('Engenharia Eletrica', 'Administracao');

-- /////////////////////////////////////////////////////

-- 10) Listar quantos TCCs cada proferssor orienta em ordem decrescente

--SELECT p."ra", p."nome_professor", COUNT(t."id_tcc") AS quantidade_tccs
--FROM "Professor" p
--LEFT JOIN "TCC" t ON p."ra" = t."ra_orientador"
--GROUP BY p."ra", p."nome_professor"
--ORDER BY quantidade_tccs DESC

-- /////////////////////////////////////////////////////

-- 11) Listar todos TCCs dos alunos de ciencia da computação
--SELECT  a."nome_aluno", a."sobrenome_aluno", ta."id_tcc", t."nome_trabalho"
--FROM "Aluno" a
--INNER JOIN "TCC_aluno" ta ON a."ra" = ta."ra_aluno"
--INNER JOIN "TCC" t ON ta."id_tcc" = t."id_tcc"
--INNER JOIN "Curso" c ON a."id_curso" = c."id_curso"
--WHERE c."nome_curso" = 'Ciencia da Computacao';

-- /////////////////////////////////////////////////////

-- 12) Listar Todos TCCs do ano de 2020

--SELECT "id_tcc", "nome_trabalho", "data", "ra_orientador", "status"
--FROM "TCC"
--WHERE EXTRACT(YEAR FROM "data") = 2020;

-- /////////////////////////////////////////////////////

-- 13) Listar todas materias do curso de ADM

--SELECT d."id_disciplina" as id, d."nome_disciplina" as "nome"
--FROM "Disciplina" d
--INNER JOIN "Departamento" dep ON d."id_departamento" = dep."id_departamento"
--INNER JOIN "Curso" c ON dep."id_departamento" = c."id_curso"
--WHERE c."nome_curso" = 'Administracao';

-- /////////////////////////////////////////////////////

-- 14) Lista o nome dos estudantes  que são orientados por um professor de engharia mecanica
--SELECT a."nome_aluno" as "nome", a."sobrenome_aluno" as "sobrenome", p."nome_professor" as "orientador"
--FROM "Aluno" a
--INNER JOIN "TCC_aluno" ta ON a."ra" = ta."ra_aluno"
--INNER JOIN "TCC" tcc ON ta."id_tcc" = tcc."id_tcc"
--INNER JOIN "Professor" p ON tcc."ra_orientador" = p."ra"
--INNER JOIN "Departamento" d ON p."ra" = d."ra_chefe_departamento"
--WHERE d."nome_departamento" = 'Engenharia Mecanica';

-- /////////////////////////////////////////////////////

-- 15) Listar os RAs dos professores que ensinam mais de uma discplina.

--SELECT p.ra, COUNT(d.id_disciplina) AS numero_discplina
--FROM "Professor" p
--INNER JOIN "Disciplina" d ON p.ra = d.ra_professor
--GROUP BY p.ra
--HAVING COUNT(d.id_disciplina) > 1;

-- /////////////////////////////////////////////////////
