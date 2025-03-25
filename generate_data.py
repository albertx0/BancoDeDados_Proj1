import random
from datetime import datetime, timedelta

def gerar_nome():
    nomes = ["João", "Maria", "Pedro", "Ana", "Carlos", "Juliana", "Lucas", "Fernanda", "Ricardo", "Amanda"]
    sobrenomes = ["Silva", "Santos", "Oliveira", "Souza", "Pereira", "Costa", "Rodrigues", "Almeida", "Lima", "Gomes"]
    return f"{random.choice(nomes)} {random.choice(sobrenomes)}"

def gerar_ra():
    return f"{random.randint(1000, 9999)}-{random.randint(10000, 99999)}"

def gerar_data(min_year=2018, max_year=2023):
    year = random.randint(min_year, max_year)
    month = random.randint(1, 12)
    day = random.randint(1, 28)
    return f"{year}-{month:02d}-{day:02d}"

def gerar_semestre():
    ano = random.randint(2018, 2023)
    semestre = random.randint(1, 2)
    return f"{ano}.{semestre}"

# Gerar departamentos
departamentos = [
    (1, "Ciência da Computação", "CC"),
    (2, "Matemática", "MAT"),
    (3, "Engenharia", "ENG")
]

# Gerar cursos
cursos = [
    (1, "Ciência da Computação", 1),
    (2, "Engenharia de Software", 1),
    (3, "Ciência de Dados", 1),
    (4, "Matemática Aplicada", 2),
    (5, "Engenharia Civil", 3)
]

# Gerar disciplinas
disciplinas = []
for i in range(1, 31):
    curso_id = random.choice([1, 2, 3, 4, 5])
    disciplinas.append((i, f"Disciplina {i}", f"DISC{i:03d}", curso_id))

# Gerar professores
professores = []
for i in range(1, 21):
    dept_id = random.choice([1, 2, 3])
    professores.append((i, gerar_nome(), dept_id))

# Gerar alunos
alunos = []
for i in range(1, 101):
    curso_id = random.choice([1, 2, 3, 4, 5])
    alunos.append((i, gerar_nome().split()[0], gerar_nome().split()[1], gerar_ra(), curso_id, random.randint(1, 10)))

# Gerar histórico escolar
historicos = []
for _ in range(500):
    aluno_id = random.randint(1, 100)
    disc_id = random.randint(1, 30)
    semestre = gerar_semestre()
    nota = round(random.uniform(0, 10), 2)
    situacao = "Aprovado" if nota >= 5 else "Reprovado"
    historicos.append((aluno_id, disc_id, semestre, nota, situacao))

# Gerar TCCs
tccs = []
for i in range(1, 31):
    orientador_id = random.randint(1, 20)
    data = gerar_data(2022, 2023)
    tccs.append((i, f"TCC {i}", orientador_id, data))

# Gerar Aluno_TCC
alunos_tcc = []
for tcc_id in range(1, 31):
    num_alunos = random.randint(1, 3)
    alunos_selecionados = random.sample(range(1, 101), num_alunos)
    for aluno_id in alunos_selecionados:
        alunos_tcc.append((tcc_id, aluno_id))

# Gerar Chefes de Departamento
chefes = [
    (1, 1, "2020-01-01"),
    (5, 2, "2021-01-01"),
    (10, 3, "2019-01-01")
]

# Gerar Coordenadores de Curso
coordenadores = [
    (2, 1, "2020-01-01"),
    (6, 2, "2021-01-01"),
    (8, 3, "2019-01-01"),
    (12, 4, "2020-01-01"),
    (15, 5, "2021-01-01")
]

# Gerar Professor_Disciplina
professores_disciplinas = []
for semestre in ["2023.1", "2023.2", "2022.1", "2022.2"]:
    for disc_id in range(1, 31):
        prof_id = random.randint(1, 20)
        professores_disciplinas.append((prof_id, disc_id, semestre))

# Gerar arquivo SQL
with open("insert_data.sql", "w", encoding="utf-8") as f:
    # Inserir departamentos
    f.write("-- Departamentos\n")
    f.write("INSERT INTO DEPARTAMENTO (id_depart, nome, codigo) VALUES\n")
    f.write(",\n".join([f"({id}, '{nome}', '{codigo}')" for id, nome, codigo in departamentos]) + ";\n\n")
    
    # Inserir cursos
    f.write("-- Cursos\n")
    f.write("INSERT INTO CURSO (id_curso, nome, id_depart) VALUES\n")
    f.write(",\n".join([f"({id}, '{nome}', {id_depart})" for id, nome, id_depart in cursos]) + ";\n\n")
    
    # Inserir professores
    f.write("-- Professores\n")
    f.write("INSERT INTO PROFESSOR (id_prof, nome, sobrenome, id_depart) VALUES\n")
    f.write(",\n".join([f"({id}, '{nome.split()[0]}', '{nome.split()[1]}', {dept})" for id, nome, dept in professores]) + ";\n\n")
    
    # Inserir alunos
    f.write("-- Alunos\n")
    f.write("INSERT INTO ALUNO (id_aluno, nome, sobrenome, ra, id_curso, semestre) VALUES\n")
    f.write(",\n".join([f"({id}, '{nome}', '{sobrenome}', '{ra}', {curso}, {semestre})" for id, nome, sobrenome, ra, curso, semestre in alunos]) + ";\n\n")
    
    # Inserir disciplinas
    f.write("-- Disciplinas\n")
    f.write("INSERT INTO DISCIPLINA (id_disc, nome, codigo, id_curso) VALUES\n")
    f.write(",\n".join([f"({id}, '{nome}', '{codigo}', {curso})" for id, nome, codigo, curso in disciplinas]) + ";\n\n")
    
    # Inserir histórico escolar
    f.write("-- Histórico Escolar\n")
    f.write("INSERT INTO HISTORICO_ESCOLAR (id_aluno, id_disc, semestre, nota, situacao) VALUES\n")
    f.write(",\n".join([f"({aluno}, {disc}, '{semestre}', {nota}, '{situacao}'" for aluno, disc, semestre, nota, situacao in historicos]) + ";\n\n")
    
    # Inserir TCCs
    f.write("-- TCCs\n")
    f.write("INSERT INTO TCC (id_tcc, titulo, id_orientador, data_apresentacao) VALUES\n")
    f.write(",\n".join([f"({id}, '{titulo}', {orientador}, '{data}'" for id, titulo, orientador, data in tccs]) + ";\n\n")
    
    # Inserir Aluno_TCC
    f.write("-- Alunos_TCC\n")
    f.write("INSERT INTO ALUNO_TCC (id_tcc, id_aluno) VALUES\n")
    f.write(",\n".join([f"({tcc}, {aluno})" for tcc, aluno in alunos_tcc]) + ";\n\n")
    
    # Inserir Chefes de Departamento
    f.write("-- Chefes de Departamento\n")
    f.write("INSERT INTO CHEFE_DEPARTAMENTO (id_prof, id_depart, data_inicio) VALUES\n")
    f.write(",\n".join([f"({prof}, {dept}, '{data}')" for prof, dept, data in chefes]) + ";\n\n")
    
    # Inserir Coordenadores de Curso
    f.write("-- Coordenadores de Curso\n")
    f.write("INSERT INTO COORDENADOR_CURSO (id_prof, id_curso, data_inicio) VALUES\n")
    f.write(",\n".join([f"({prof}, {curso}, '{data}')" for prof, curso, data in coordenadores]) + ";\n\n")
    
    # Inserir Professor_Disciplina
    f.write("-- Professores_Disciplinas\n")
    f.write("INSERT INTO PROFESSOR_DISCIPLINA (id_prof, id_disc, semestre) VALUES\n")
    f.write(",\n".join([f"({prof}, {disc}, '{semestre}')" for prof, disc, semestre in professores_disciplinas]) + ";\n\n")
    
    f.write("COMMIT;\n")

print("Arquivo insert_data.sql gerado com sucesso!")