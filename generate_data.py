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

gerados_ras = set()

def gerar_data(inicio="1990-01-01", fim="2055-01-01"):
    formato = "%Y-%m-%d"
    data_inicio = datetime.strptime(inicio, formato)
    data_fim = datetime.strptime(fim, formato)
    dias_aleatorios = random.randint(0, (data_fim - data_inicio).days)
    return (data_inicio + timedelta(days=dias_aleatorios)).strftime(formato)

def gerar_email():
    return "".join(random.choices(letras, k=8)) + "@gmail.com"

def gerar_ra():
    while True:
        novo_ra = "".join(random.choices(nums, k=9))
        if novo_ra not in gerados_ras:
            gerados_ras.add(novo_ra)
            return novo_ra

def gerar_aluno():
    return {"ra": gerar_ra(), "nome_aluno": random.choice(nomes), "sobrenome_aluno": random.choice(sobrenomes), "email": gerar_email(), "id_departamento": random.choice(list(ids_departamento.keys())), "semestre": random.randint(1, 8)}

def gerar_professor():
    return {"ra": gerar_ra(), "nome_professor": random.choice(nomes), "sobrenome_professor": random.choice(sobrenomes), "email": gerar_email(), "id_departamento": random.choice(list(ids_departamento.keys()))}

def gerar_disciplina(professores):
    codigo_disciplina, nome_disciplina = random.choice(list(disciplinas.items()))
    professores_do_departamento = [p for p in professores if p["id_departamento"] == codigo_disciplina[:3]]
    professor = random.choice(professores_do_departamento) if professores_do_departamento else random.choice(professores)
    return {"id_disciplina": codigo_disciplina, "nome_disciplina": nome_disciplina, "ra_professor": professor["ra"], "id_departamento": professor["id_departamento"]}

def gerar_historico_aluno(alunos):
    historico = []
    for aluno in alunos:
        disciplinas_cursadas = set()
        for semestre in range(1, aluno["semestre"] + 1):
            data = gerar_data("2015-01-01", "2025-01-01")
            while True:
                disciplina = random.choice(list(disciplinas.keys()))
                if disciplina not in disciplinas_cursadas:
                    disciplinas_cursadas.add(disciplina)
                    historico.append({"ra_aluno": aluno["ra"], "id_disciplina": disciplina, "media": round(random.uniform(0, 10), 2), "data": data, "situacao": random.choice(["Aprovado", "Reprovado"])});
                    break
    return historico

def gerar_tcc(professores, alunos):
    tccs = []
    alunos_tcc = random.sample(alunos, len(alunos)//2)
    for aluno in alunos_tcc:
        tccs.append({"id_tcc": "".join(random.choices(nums, k=5)), "nome_trabalho": "".join(random.choices(letras, k=10)), "data": gerar_data(), "ra_orientador": random.choice(professores)["ra"], "status": random.choice(["Em andamento", "Finalizado"])})
    return tccs

def gerar_tcc_aluno(alunos, tccs):
    return [{"ra_aluno": aluno["ra"], "id_tcc": tccs[i]["id_tcc"]} for i, aluno in enumerate(alunos[:len(tccs)])]

def gerar_csv(lista, nome_arquivo):
    if not lista:
        return
    with open(nome_arquivo, mode="w", newline="") as arquivo:
        escritor = csv.DictWriter(arquivo, fieldnames=lista[0].keys())
        escritor.writeheader()
        escritor.writerows(lista)

if __name__ == "__main__":
    alunos = [gerar_aluno() for _ in range(5)]
    professores = [gerar_professor() for _ in range(5)]
    disciplinas_geradas = [gerar_disciplina(professores) for _ in range(5)]
    historico_aluno = gerar_historico_aluno(alunos)
    tccs = gerar_tcc(professores, alunos)
    tcc_aluno = gerar_tcc_aluno(alunos, tccs)
    gerar_csv(alunos, "Aluno.csv")
    gerar_csv(professores, "Professor.csv")
    gerar_csv(disciplinas_geradas, "Disciplina.csv")
    gerar_csv(historico_aluno, "Historico_escolar.csv")
    gerar_csv(tccs, "TCC.csv")
    gerar_csv(tcc_aluno, "TCC_aluno.csv")
