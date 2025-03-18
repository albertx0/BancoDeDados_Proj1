CREATE TABLE "Aluno" (
  "nome_aluno" varchar,
  "sobrenome_aluno" varchar,
  "RA_aluno" varchar PRIMARY KEY,
  "nome_depart" varchar,
  "semestre" integer
);

CREATE TABLE "Departamento" (
  "nome_depart" varchar PRIMARY KEY,
  "codigo" varchar
);

CREATE TABLE "Professor" (
  "nome_prof" varchar,
  "sobrenome_prof" varchar,
  "RA_professor" varchar PRIMARY KEY,
  "nome_depart" varchar,
  "disciplinas" varchar
);

CREATE TABLE "Disciplina" (
  "id_disc" varchar PRIMARY KEY,
  "nome_disc" varchar,
  "nome_prof" varchar,
  "nome_depart" varchar
);

CREATE TABLE "Historico_escolar" (
  "nome_aluno" varchar,
  "sobrenome_aluno" varchar,
  "media" floating PRIMARY KEY,
  "ra_aluno" varchar,
  "id_disc" varchar,
  "data" date
);

CREATE TABLE "Historico_Professor" (
  "nome_prof" varchar,
  "sobrenome_prof" varchar,
  "ra_prof" varchar,
  "id_disc" varchar,
  "data" date
);

CREATE TABLE "TCC" (
  "nome_trabalho" varchar PRIMARY KEY,
  "id_tcc" varchar,
  "data" date,
  "ra_orientador" varchar
);

CREATE TABLE "TCC_aluno" (
  "ra_aluno" varchar,
  "id_tcc" varchar
);

ALTER TABLE "Aluno" ADD FOREIGN KEY ("nome_depart") REFERENCES "Departamento" ("nome_depart");

ALTER TABLE "Professor" ADD FOREIGN KEY ("nome_depart") REFERENCES "Departamento" ("nome_depart");

ALTER TABLE "Disciplina" ADD FOREIGN KEY ("nome_prof") REFERENCES "Professor" ("nome_prof");

ALTER TABLE "Disciplina" ADD FOREIGN KEY ("nome_depart") REFERENCES "Departamento" ("nome_depart");

ALTER TABLE "Historico_escolar" ADD FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("RA_aluno");

ALTER TABLE "Historico_escolar" ADD FOREIGN KEY ("id_disc") REFERENCES "Disciplina" ("id_disc");

ALTER TABLE "Historico_Professor" ADD FOREIGN KEY ("ra_prof") REFERENCES "Professor" ("RA_professor");

ALTER TABLE "Historico_Professor" ADD FOREIGN KEY ("id_disc") REFERENCES "Disciplina" ("id_disc");

ALTER TABLE "TCC" ADD FOREIGN KEY ("ra_orientador") REFERENCES "Professor" ("RA_professor");

ALTER TABLE "TCC_aluno" ADD FOREIGN KEY ("ra_aluno") REFERENCES "Aluno" ("RA_aluno");

ALTER TABLE "TCC_aluno" ADD FOREIGN KEY ("id_tcc") REFERENCES "TCC" ("id_tcc");
