import random
import string

# Função para gerar nomes aleatórios
def gerar_nome():
    nomes = ["João", "Maria", "Pedro", "Ana", "Carlos", "Juliana", "Lucas", "Fernanda"]
    sobrenomes = ["Silva", "Santos", "Oliveira", "Souza", "Pereira", "Costa", "Rodrigues"]
    return random.choice(nomes) + " " + random.choice(sobrenomes)

# Gerar dados para Aluno
alunos = [(i, gerar_nome(), random.randint(1, 2)) for i in range(1, 101)]

# Gerar dados para Professor
professores = [(i, gerar_nome(), random.randint(1, 2)) for i in range(1, 21)]

# Gerar dados para Departamento
departamentos = [(1, "Ciência da Computação"), (2, "Matemática")]

# Gerar dados para Curso
cursos = [(1, "Ciência da Computação", 1), (2, "Ciência de Dados", 1)]

# Gerar dados para Disciplina
disciplinas = [(i, f"Disciplina {i}", random.randint(1, 2)) for i in range(1, 21)]

# Gerar dados para HistoricoEscolar
historicos = [(random.randint(1, 100), random.randint(1, 20), f"202{random.randint(1, 3)}.{random.randint(1, 2)}", random.uniform(0, 10), random.choice(["Aprovado", "Reprovado"])) for _ in range(500)]

# Gerar dados para TCC
tccs = [(i, f"TCC {i}", random.randint(1, 20)) for i in range(1, 31)]

# Gerar dados para AlunoTCC
alunos_tcc = [(random.randint(1, 30), random.randint(1, 100)) for _ in range(100)]

# Gerar dados para CoordenadorCurso
coordenadores = [(random.randint(1, 20), random.randint(1, 2)) for _ in range(2)]

# Gerar dados para ChefeDepartamento
chefes = [(random.randint(1, 20), random.randint(1, 2)) for _ in range(2)]