CREATE TABLE "Aluno" (
  "nome_aluno" varchar(255),
  "sobrenome_aluno" varchar(255),
  "ra_aluno" varchar(255) PRIMARY KEY,
  "nome_departamento" varchar(255),
  "semestre" integer
);

CREATE TABLE "Departamento" (
  "nome_departamento" varchar(255) PRIMARY KEY,
  "codigo" varchar(255)
);

CREATE TABLE "Professor" (
  "nome_professor" varchar(255),
  "sobrenome_professor" varchar(255),
  "ra_professor" varchar(255) PRIMARY KEY,
  "nome_departamento" varchar(255),
  "disciplinas" varchar(255)
);

CREATE TABLE "Disciplina" (
  "id_disciplina" varchar(255) PRIMARY KEY,
  "nome_disciplina" varchar(255),
  "ra_professor" varchar(255),
  "nome_departamento" varchar(255)
);

CREATE TABLE "Historico_escolar" (
  "ra_aluno" varchar(255),
  "id_disciplina" varchar(255),
  "media" FLOAT,
  "data" date,
  PRIMARY KEY ("ra_aluno", "id_disciplina")
);

CREATE TABLE "Historico_Professor" (
  "ra_professor" varchar(255),
  "id_disciplina" varchar(255),
  "data" date,
  PRIMARY KEY ("ra_professor", "id_disciplina")
);

CREATE TABLE "TCC" (
  "nome_trabalho" varchar(255),
  "id_tcc" varchar(255) PRIMARY KEY,
  "data" date,
  "ra_orientador" varchar(255)
);

CREATE TABLE "TCC_aluno" (
  "ra_aluno" varchar(255),
  "id_tcc" varchar(255)
);

-- Definindo as chaves estrangeiras

ALTER TABLE "Aluno" ADD FOREIGN KEY ("nome_departamento") REFERENCES "Departamento" ("nome_departamento");

ALTER TABLE "Professor" ADD FOREIGN KEY ("nome_departamento") REFERENCES "Departamento" ("nome_departamento");

ALTER TABLE "Disciplina" ADD FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra_professor");

ALTER TABLE "Disciplina" ADD FOREIGN KEY ("nome_departamento") REFERENCES "Departamento" ("nome_departamento");

ALTER TABLE "Historico_escolar" ADD FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra_aluno");

ALTER TABLE "Historico_escolar" ADD FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina");

ALTER TABLE "Historico_Professor" ADD FOREIGN KEY ("ra_professor") REFERENCES "Professor" ("ra_professor");

ALTER TABLE "Historico_Professor" ADD FOREIGN KEY ("id_disciplina") REFERENCES "Disciplina" ("id_disciplina");

ALTER TABLE "TCC" ADD FOREIGN KEY ("ra_orientador") REFERENCES "Professor" ("ra_professor");

ALTER TABLE "TCC_aluno" ADD FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("ra_aluno");

ALTER TABLE "TCC_aluno" ADD FOREIGN KEY ("id_tcc") REFERENCES "TCC" ("id_tcc");
