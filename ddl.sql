CREATE TABLE "Professor" (
  "ra" varchar(20) PRIMARY KEY,
  "nome_professor" varchar(100),
  "sobrenome_professor" varchar(100) 
);

CREATE TABLE "Departamento" (
  "id_departamento" varchar(20) PRIMARY KEY,
  "nome_departamento" varchar(255) UNIQUE,
  "ra_chefe_departamento" varchar(255),
  FOREIGN KEY ("ra_chefe_departamento") REFERENCES "Professor" ("ra")
);

CREATE TABLE "Curso" (
  "id_curso" varchar(20) PRIMARY KEY,
  "nome_curso" varchar(255) UNIQUE,
  "ra_cordenador_curso" varchar(255),
  FOREIGN KEY ("ra_cordenador_curso") REFERENCES "Professor" ("ra")
);

CREATE TABLE "Aluno" (
  "ra" varchar(20) PRIMARY KEY,
  "nome_aluno" varchar(100),  
  "sobrenome_aluno" varchar(100), 
  "id_curso" varchar(20),
  "semestre" integer
);

CREATE TABLE "Disciplina" (
  "id_disciplina" varchar(20) PRIMARY KEY,
  "nome_disciplina" varchar(255),
  "ra_professor" varchar(20),
  "id_departamento" varchar(20),
  FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra"),
  FOREIGN KEY ("id_departamento") REFERENCES "Departamento" ("id_departamento")
);

CREATE TABLE "Historico_escolar" (
  "ra_aluno" varchar(20),
  "id_disciplina" varchar(20),
  "media" float,
  "semestre" integer,
  "situacao" varchar(20),
  FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra"),
  FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina")
);

CREATE TABLE "Historico_Professor" (
  "ra_professor" varchar(20),
  "id_disciplina" varchar(20),
  "data" date,
  "situacao" varchar(20),
  FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra"),
  FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina")
);

CREATE TABLE "TCC" (
  "id_tcc" varchar(20) PRIMARY KEY,
  "nome_trabalho" varchar(255),
  "data" date,
  "ra_orientador" varchar(20),
  "status" varchar(20),
  FOREIGN KEY ("ra_orientador") REFERENCES "Professor" ("ra")
);

CREATE TABLE "TCC_aluno" (
  "ra_aluno" varchar(20),
  "id_tcc" varchar(20),
  FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra"),
  FOREIGN KEY ("id_tcc") REFERENCES "TCC" ("id_tcc")
);
