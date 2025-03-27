CREATE TABLE "Departamento" (
  "id_departamento" SERIAL PRIMARY KEY,
  "nome_departamento" varchar(255) UNIQUE NOT NULL,
  "codigo" varchar(20)
);

CREATE TABLE "Aluno" (
  "ra" varchar(20) PRIMARY KEY,
  "nome_aluno" varchar(100) NOT NULL,  -- Nome separado
  "sobrenome_aluno" varchar(100) NOT NULL,  -- Sobrenome separado
  "email" varchar(255) UNIQUE,
  "id_departamento" integer NOT NULL,
  "semestre" integer,
  FOREIGN KEY ("id_departamento") REFERENCES "Departamento" ("id_departamento")
);

CREATE TABLE "Professor" (
  "ra" varchar(20) PRIMARY KEY,
  "nome_professor" varchar(100) NOT NULL,  -- Nome separado
  "sobrenome_professor" varchar(100) NOT NULL,  -- Sobrenome separado
  "email" varchar(255) UNIQUE,
  "id_departamento" integer NOT NULL,
  FOREIGN KEY ("id_departamento") REFERENCES "Departamento" ("id_departamento")
);

-- O restante das tabelas permanece IGUAL ao modelo revisado anterior:
CREATE TABLE "Disciplina" (
  "id_disciplina" varchar(20) PRIMARY KEY,
  "nome_disciplina" varchar(255) NOT NULL,
  "ra_professor" varchar(20) NOT NULL,
  "id_departamento" integer NOT NULL,
  "carga_horaria" integer,
  FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra"),
  FOREIGN KEY ("id_departamento") REFERENCES "Departamento" ("id_departamento")
);

CREATE TABLE "Historico_escolar" (
  "ra_aluno" varchar(20) NOT NULL,
  "id_disciplina" varchar(20) NOT NULL,
  "media" FLOAT CHECK (media >= 0 AND media <= 10),
  "data" date NOT NULL,
  "situacao" varchar(20) CHECK (situacao IN ('Aprovado', 'Reprovado', 'Cursando')),
  PRIMARY KEY ("ra_aluno", "id_disciplina", "data"),
  FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra"),
  FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina")
);

CREATE TABLE "Historico_Professor" (
  "ra_professor" varchar(20) NOT NULL,
  "id_disciplina" varchar(20) NOT NULL,
  "data" date NOT NULL,
  "semestre" varchar(10) NOT NULL,
  PRIMARY KEY ("ra_professor", "id_disciplina", "data"),
  FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra"),
  FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina")
);

CREATE TABLE "TCC" (
  "id_tcc" varchar(20) PRIMARY KEY,
  "nome_trabalho" varchar(255) NOT NULL,
  "data" date NOT NULL,
  "ra_orientador" varchar(20) NOT NULL,
  "status" varchar(20) DEFAULT 'Em andamento',
  FOREIGN KEY ("ra_orientador") REFERENCES "Professor" ("ra")
);

CREATE TABLE "TCC_aluno" (
  "ra_aluno" varchar(20) NOT NULL,
  "id_tcc" varchar(20) NOT NULL,
  "funcao" varchar(50),
  PRIMARY KEY ("ra_aluno", "id_tcc"),
  FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra"),
  FOREIGN KEY ("id_tcc") REFERENCES "TCC" ("id_tcc")
);
