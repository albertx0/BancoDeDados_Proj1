--1. Histórico com reprovação e aprovação na disciplina

SELECT 
    a."ra_aluno",
    a."nome_aluno" || ' ' || a."sobrenome_aluno" AS aluno,
    d."id_disciplina",
    d."nome_disciplina",
    h_reprov."semestre" AS semestre_reprovacao,
    h_reprov."media" AS nota_reprovacao,
    h_aprov."semestre" AS semestre_aprovacao,
    h_aprov."media" AS nota_aprovacao
FROM "Historico_escolar" h_reprov
JOIN "Historico_escolar" h_aprov ON 
    h_reprov."ra_aluno" = h_aprov."ra_aluno" AND 
    h_reprov."id_disciplina" = h_aprov."id_disciplina"
JOIN "Aluno" a ON h_reprov."ra_aluno" = a."ra_aluno"
JOIN "Disciplina" d ON h_reprov."id_disciplina" = d."id_disciplina"
WHERE 
    h_reprov."situacao" = 'Reprovado' AND 
    h_aprov."situacao" = 'Aprovado' AND
    h_reprov."semestre" < h_aprov."semestre";

--2. TCCs orientados por professor com alunos
SELECT 
    p."nome_professor" || ' ' || p."sobrenome_professor" AS orientador,
    t."nome_trabalho" AS tcc,
    STRING_AGG(a."nome_aluno" || ' ' || a."sobrenome_aluno", ', ') AS alunos
FROM "TCC" t
JOIN "Professor" p ON t."ra_orientador" = p."ra_professor"
JOIN "TCC_aluno" ta ON t."id_tcc" = ta."id_tcc"
JOIN "Aluno" a ON ta."ra_aluno" = a."ra_aluno"
GROUP BY p."nome_professor", p."sobrenome_professor", t."nome_trabalho";


--3. Matriz curricular de 2 cursos (2 queries)

--Query para Ciência da Computação:

sql
Copy
SELECT 
    d."id_disciplina",
    d."nome_disciplina"
FROM "Disciplina" d
JOIN "Curso" c ON d."id_curso" = c."id_curso"
WHERE c."nome" = 'Ciência da Computação';

-- Query para Ciência de Dados:

sql
Copy
SELECT 
    d."id_disciplina",
    d."nome_disciplina"
FROM "Disciplina" d
JOIN "Curso" c ON d."id_curso" = c."id_curso"
WHERE c."nome" = 'Ciência de Dados';

--4. Disciplinas cursadas por aluno com professores
SELECT 
    a."ra_aluno",
    a."nome_aluno" || ' ' || a."sobrenome_aluno" AS aluno,
    d."id_disciplina",
    d."nome_disciplina",
    p."nome_professor" || ' ' || p."sobrenome_professor" AS professor
FROM "Historico_escolar" h
JOIN "Aluno" a ON h."ra_aluno" = a."ra_aluno"
JOIN "Disciplina" d ON h."id_disciplina" = d."id_disciplina"
JOIN "Professor" p ON d."ra_professor" = p."ra_professor"
WHERE a."ra_aluno" = '5845-42136';  -- Substitua pelo RA do aluno

-- 5. Chefes e coordenadores com substituição de nulos
SELECT 
    p."nome_professor" || ' ' || p."sobrenome_professor" AS professor,
    COALESCE(d."nome_departamento", 'nenhum') AS departamento,
    COALESCE(c."nome", 'nenhum') AS curso_coordenado
FROM "Professor" p
LEFT JOIN "Chefe_Departamento" cd ON p."ra_professor" = cd."ra_professor"
LEFT JOIN "Departamento" d ON cd."id_depart" = d."id_depart"
LEFT JOIN "Coordenador_Curso" cc ON p."ra_professor" = cc."ra_professor"
LEFT JOIN "Curso" c ON cc."id_curso" = c."id_curso";

-- procurar 10 queries extras no exercicio
