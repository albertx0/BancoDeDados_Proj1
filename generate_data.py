import random
import string
import csv
from datetime import datetime, timedelta

disciplinas = {
    "CIV001": "Mecânica dos Solos",
    "CIV002": "Concreto Armado",
    "CIV003": "Estruturas Metálicas",
    "CIV004": "Hidráulica Aplicada",
    "CIV005": "Geotecnia",
    "CIV006": "Topografia e Geodésia",
    "CIV007": "Materiais de Construção",
    "CIV008": "Infraestrutura de Transportes",
    "CIV009": "Saneamento Básico",
    "CIV010": "Planejamento Urbano",
    "COMP001": "Estruturas de Dados",
    "COMP002": "Inteligência Artificial",
    "COMP003": "Banco de Dados",
    "COMP004": "Redes de Computadores",
    "COMP005": "Segurança da Informação",
    "COMP006": "Sistemas Operacionais",
    "COMP007": "Computação Gráfica",
    "COMP008": "Programação Paralela",
    "COMP009": "Engenharia de Software",
    "COMP010": "Aprendizado de Máquina",
}

nomes = ["Ana", "Bruno", "Carlos", "Daniela", "Eduardo", "Fernanda", "Gabriel", "Helena", "Igor", "Juliana"]
sobrenomes = ["Silva", "Oliveira", "Souza", "Pereira", "Almeida", "Ferreira", "Costa", "Rodrigues", "Martins", "Lima"]
letras = string.ascii_lowercase
nums = string.digits
ids_departamento = {
    "1": "Engenharia Civil",
    "2": "Ciencia da Computacao",
    "3": "Engenharia de Producao",
    "4": "Engenharia Mecanica"
}

departamentos = [
    {"id_departamento": "1", "nome_departamento": "Engenharia Civil"},
    {"id_departamento": "2", "nome_departamento": "Ciencia da Computacao"},
    {"id_departamento": "3", "nome_departamento": "Engenharia de Producao"},
    {"id_departamento": "4", "nome_departamento": "Engenharia Mecanica"},
]

def gerar_data(inicio="1990-01-01", fim="2055-01-01"):
    formato = "%Y-%m-%d"
    data_inicio = datetime.strptime(inicio, formato)
    data_fim = datetime.strptime(fim, formato)
    dias_aleatorios = random.randint(0, (data_fim - data_inicio).days)
    return (data_inicio + timedelta(days=dias_aleatorios)).strftime(formato)

def gerar_email():
    return "".join(random.choices(letras, k=8)) + "@gmail.com"

def gerar_ra():
    return "".join(random.choices(nums, k=9))

def gerar_aluno():
    return {
        "ra": gerar_ra(),
        "nome_aluno": random.choice(nomes),
        "sobrenome_aluno": random.choice(sobrenomes),
        "email": gerar_email(),
        "id_departamento": str(random.randint(1, 4)),
        "semestre": random.randint(1, 8)
    }

def gerar_professor():
    return {
        "ra": gerar_ra(),
        "nome_professor": random.choice(nomes),
        "sobrenome_professor": random.choice(sobrenomes),
        "email": gerar_email(),
        "id_departamento": str(random.randint(1, 4))
    }

def gerar_disciplina(professores):
    if not disciplinas:
        return None
    disciplinas_disponiveis = list(disciplinas.items())
    codigo_disciplina, nome_disciplina = random.choice(disciplinas_disponiveis)
    professor = random.choice(professores)
    disciplina = {
        "id_disciplina": codigo_disciplina,
        "nome_disciplina": nome_disciplina,
        "ra_professor": professor["ra"],
        "id_departamento": professor["id_departamento"]
    }
    disciplinas.pop(codigo_disciplina)
    return disciplina

def gerar_historico_aluno(alunos, disciplinas_validas):
    historico = []
    for aluno in alunos:
        disciplinas_cursadas = set()
        for semestre in range(1, aluno["semestre"] + 1):
            data_conclusao = gerar_data("2015-01-01", "2025-01-01")
            disponiveis = [d["id_disciplina"] for d in disciplinas_validas if d["id_disciplina"] not in disciplinas_cursadas]
            disciplinas_semestre = random.sample(disponiveis, k=min(5, len(disponiveis)))
            for id_disciplina in disciplinas_semestre:
                historico.append({
                    "ra_aluno": aluno["ra"],
                    "id_disciplina": id_disciplina,
                    "media": round(random.uniform(0, 10), 2),
                    "data": data_conclusao,
                    "situacao": random.choice(["Aprovado", "Reprovado", "Cursando"])
                })
                disciplinas_cursadas.add(id_disciplina)
    return historico

def gerar_historico_professor(professores, disciplinas_validas):
    historico = []
    for prof in professores:
        disciplinas_possiveis = [d["id_disciplina"] for d in disciplinas_validas]
        disciplinas_prof = random.sample(disciplinas_possiveis, k=min(len(disciplinas_possiveis), random.randint(1, 5)))
        for id_disciplina in disciplinas_prof:
            historico.append({
                "ra_professor": prof["ra"],
                "id_disciplina": id_disciplina,
                "data": gerar_data(),
                "situacao": random.choice(["Lecionando", "Nao lecionando"])
            })
    return historico

def gerar_tcc(professores, alunos):
    return [{
        "id_tcc": "".join(random.choices(nums, k=5)),
        "nome_trabalho": "".join(random.choices(letras, k=10)),
        "data": gerar_data(),
        "ra_orientador": random.choice(professores)["ra"],
        "status": random.choice(["Em andamento", "Finalizado"])
    } for _ in range(len(alunos) // 2)]

def gerar_tcc_aluno(alunos, tccs):
    return [{
        "ra_aluno": aluno["ra"],
        "id_tcc": random.choice(tccs)["id_tcc"]
    } for aluno in alunos]

def gerar_csv(lista, nome_arquivo):
    if not lista:
        return
    with open(nome_arquivo, mode="w", newline="") as arquivo:
        escritor = csv.DictWriter(arquivo, fieldnames=lista[0].keys())
        escritor.writeheader()
        escritor.writerows(lista)

if __name__ == "__main__":
    disciplinas_original = disciplinas.copy()
    alunos = [gerar_aluno() for _ in range(5)]
    professores = [gerar_professor() for _ in range(5)]
    disciplinas_geradas = []
    for _ in range(min(10, len(disciplinas))):
        d = gerar_disciplina(professores)
        if d:
            disciplinas_geradas.append(d)
    historico_aluno = gerar_historico_aluno(alunos, disciplinas_geradas)
    historico_professores = gerar_historico_professor(professores, disciplinas_geradas)
    tccs = gerar_tcc(professores, alunos)
    tcc_aluno = gerar_tcc_aluno(alunos, tccs)
    gerar_csv(alunos, "Aluno.csv")
    gerar_csv(departamentos, "Departamentos.csv")
    gerar_csv(professores, "Professor.csv")
    gerar_csv(disciplinas_geradas, "Disciplina.csv")
    gerar_csv(historico_aluno, "Historico_escolar.csv")
    gerar_csv(historico_professores, "Historico_Professor.csv")
    gerar_csv(tccs, "TCC.csv")
    gerar_csv(tcc_aluno, "TCC_aluno.csv")
