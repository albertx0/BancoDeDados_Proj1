from faker import Faker 
import string
import random
import csv
import os

faker = Faker("pt-BR")
nums = string.digits
# ///////////////////////////
# intervalo dos dados
qtd_aluno = 200
qtd_prof = 80
qtd_tcc = (qtd_aluno//2)
# ///////////////////////////

# ///////////////////////////
# sets com letras maisusculas
# para sinalizar array globais e assim
#       evitar repeticoes de elementos unicos

NOMES = set()
RA = set()
TCC = set()
DISCIPLINAS_CURSOS = {} 
# ///////////////////////////

DEPARTAMENTOS = {
    "COM" : "Ciencia da Computacao", 
    "ELE" : "Engenharia Eletrica", 
    "MEC" : "Engenharia Mecanica", 
    "ADM" : "Adminstracao", 
    "MAT" : "Matematica", 
    "FIS" : "Fisica", 
}

CURSOS = {
    "CC" : "Ciencia da Computacao",
    "EELEC" : "Engenharia Eletrica",
    "EMEC" : "Engenharia Mecanica",
    "ADM" : "Administracao",
}

DISCIPLINAS = {
    # ciencia da Computacao
    "COMP001": "Algoritmos e Estruturas de Dados",
    "COMP002": "Programacao Orientada a Objetos",
    "COMP003": "Banco de Dados",
    "COMP004": "Sistemas Operacionais",
    "COMP005": "Engenharia de Software",
    "COMP006": "Inteligencia Artificial",
    "COMP007": "Redes de Computadores",
    "COMP008": "Compiladores",
    "COMP009": "Seguranca da Informacao",
    "COMP010": "Aprendizado de Maquina",

    # engenharia Eletrica
    "ELEC001": "Circuitos Eletricos",
    "ELEC002": "Eletronica Analogica",
    "ELEC003": "Eletronica Digital",
    "ELEC004": "Sistemas de Controle",
    "ELEC005": "Instrumentacao",
    "ELEC006": "Conversao de Energia",
    "ELEC007": "Eletromagnetismo Aplicado",
    "ELEC008": "Instalacoes Eletricas",
    "ELEC009": "Energia Solar e Sustentabilidade",

    # engenharia Mecanica
    "MEC001": "Mecanica dos Solidos",
    "MEC002": "Termodinamica",
    "MEC003": "Mecanica dos Fluidos",
    "MEC004": "Dinamica e Vibracoes",
    "MEC005": "Materiais de Engenharia",
    "MEC006": "Processos de Fabricacao",
    "MEC007": "Projeto Mecanico",
    "MEC008": "Desenho Tecnico",
    "MEC009": "Automacao Industrial",

    # administracao
    "ADM001": "Teoria Geral da Administracao",
    "ADM002": "Gestao Financeira",
    "ADM003": "Contabilidade",
    "ADM004": "Comportamento Organizacional",
    "ADM005": "Marketing",
    "ADM006": "Gestao de Pessoas",
    "ADM007": "Planejamento Estrategico",
    "ADM008": "Empreendedorismo",
    "ADM009": "Gestao da Qualidade",

    # matematica
    "MAT001": "Calculo I",
    "MAT002": "Calculo II",
    "MAT003": "Algebra Linear",
    "MAT004": "Geometria Analitica",
    "MAT005": "Estatistica",
    "MAT006": "Matematica Discreta",
    "MAT007": "Probabilidade",
    "MAT008": "Equacoes Diferenciais",

    # fisica
    "FIS001": "Fisica I - Mecanica",
    "FIS002": "Fisica II - Eletromagnetismo",
    "FIS003": "Fisica III - Termodinamica",
    "FIS004": "Fisica Moderna",
    "FIS005": "Laboratorio de Fisica",
}

def gerar_ra():
    return "".join(random.choices(nums, k=9))

def lista_nomes(lista, qtd):
    while len(lista) < qtd:
        nome = faker.name()

        if nome in NOMES:
            continue
        lista.append(nome)
        NOMES.add(nome)

def lista_ra(lista, qtd):
    while len(lista) < qtd:
        ra = gerar_ra()

        if ra in RA:
            continue
        lista.append(ra)
        RA.add(ra)

def gerar_professores():
    # cria duas listas em que o nome do prof
    # estara com o ra associado ao 
    # ao msm indice listas

    nome_profs = []
    ra_profs = []
    
    lista_nomes(nome_profs, qtd_prof)
    lista_ra(ra_profs, qtd_prof)
    
    professores = []

    for i in range(qtd_prof):
        professores.append({
            "ra" : ra_profs[i],
            "nome_professor" : nome_profs[i].split()[0],
            "sobrenome_professor" : nome_profs[i].split()[-1]
        })

    return professores

def gerar_departamentos():
    departamentos = []
    codigos = list(DEPARTAMENTOS.keys())
    
    for i in range(len(codigos)):
        nome_depart = DEPARTAMENTOS[codigos[i]]
        
        # gera departamentos com ids e nomes fixos
        # porem com pros selecionados aleatoriamente
        departamentos.append({
            "id_departamento" : codigos[i],
            "nome_departamento" : nome_depart,
            # nao vai dar conflito com ra de alunos
            # pois o codigo ate aq somente gerou ras de profs
            "ra_chefe_departamento" : faker.random_element(list(RA))
        })
    return departamentos

def gerar_cursos():
    cursos = []
    codigos = list(CURSOS.keys())

    for i in range(len(codigos)):
        nome_curso = CURSOS[codigos[i]]

        # gera cursos com ids e nomes fixos
        # e seleciona um cordenador de maneira aleatoria

        cursos.append({
            "id_curso" : codigos[i],
            "nome_curso" : nome_curso,
            # nao vai dar conflito com ra de alunos
            # pois o codigo ate aq somente gerou ras de profs
            "ra_cordenador_curso" : faker.random_element(list(RA))
        })
    return cursos

def gerar_disciplinas():
    codigo_disciplinas = list(DISCIPLINAS.keys())
    disciplinas = []

    for codigo in codigo_disciplinas:
        nome = DISCIPLINAS[codigo]
        cursos_possiveis = random.sample(list(CURSOS.keys()), k=random.randint(1, 2))
        DISCIPLINAS_CURSOS[codigo] = cursos_possiveis

        disciplinas.append({
            "id_disciplina": codigo,
            "nome_disciplina": nome,
            "ra_professor": faker.random_element(list(RA)),
            "id_departamento": codigo[:3]
        })

    return disciplinas

def gerar_tcc():
    tccs = []
    nomes_tccs = set()

    while len(tccs) < qtd_tcc:
        id_tcc = faker.bothify("??###") 
        nome = faker.catch_phrase()

        if id_tcc in TCC or nome in nomes_tccs:
            continue

        tccs.append({
            "id_tcc" : id_tcc,
            "nome_trabalho" : nome,
            "data" : faker.date_this_decade(),
            # nao vai dar conflito com ra de alunos
            # pois o codigo ate aq somente gerou ras de profs
            "ra_orientador" : faker.random_element(list(RA)),
            "status" : faker.random_element(["Aprovado", "Reprovado", "Em andamento"])
        })
    return tccs

def gerar_alunos():
    nome_alunos = []
    ra_alunos = []

    lista_nomes(nome_alunos, qtd_aluno)
    lista_ra(ra_alunos, qtd_aluno)

    ids_curso = list(CURSOS.keys())
    
    alunos = []

    for i in range(len(nome_alunos)):
        alunos.append({
            "ra" : ra_alunos[i],
            "nome_aluno" : nome_alunos[i].split()[0],
            "sobrenome_aluno" : nome_alunos[i].split()[-1],
            "id_curso" : faker.random_element(list(CURSOS.keys())),
            "semestre" : random.randint(1,8)
        })
    return alunos

def gerar_historico_aluno(Aluno, Disciplina):
    historico_aluno = []

    disciplina_por_id = {d["id_disciplina"]: d for d in Disciplina}

    for aluno in Aluno:
        selecionadas = []
        ra = aluno["ra"]
        curso = aluno["id_curso"]
        semestre = aluno["semestre"]
        qtd_disciplinas = 4 * semestre

        # filtra disciplinas de acordo com o curso do aluno
        disciplinas_validas = [
            d for d in Disciplina
            if curso in DISCIPLINAS_CURSOS.get(d["id_disciplina"], [])
        ]

        if not disciplinas_validas:
            continue  

        while len(selecionadas) < qtd_disciplinas and len(selecionadas) < len(disciplinas_validas):
            disciplina = faker.random_element(disciplinas_validas)
            idd = disciplina["id_disciplina"]

            if idd in selecionadas:
                continue

            selecionadas.append(idd)
            media = random.uniform(0, 10)
            situacao = "Aprovado" if media >= 5.0 else "Reprovado"
            semestre = random.randint(1, semestre)

            historico_aluno.append({
                "ra_aluno": ra,
                "id_disciplina": idd,
                "media": media,
                "semestre": semestre,
                "situacao": situacao
            })

            # se reprovado, repete com nova nota
            # no semestre seguinte
            if media < 5:
                historico_aluno.append({
                    "ra_aluno": ra,
                    "id_disciplina": idd,
                    "media": random.uniform(5, 10),
                    "semestre": semestre+1,
                    "situacao": "Aprovado"
                })

    return historico_aluno

def gerar_tcc_aluno(Aluno, TCC):
    tcc_aluno = []

    for i in range(len(TCC)):
        ra = Aluno[i]["ra"]
        idd_tcc = TCC[i]["id_tcc"]

        tcc_aluno.append({
            "ra_aluno" : ra,
            "id_tcc" : idd_tcc
        })

    for i in range(len(TCC), len(Aluno)):
        ra = Aluno[i]["ra"]
        idd_tcc = faker.random_element(TCC)["id_tcc"]

        tcc_aluno.append({
            "ra_aluno" : ra,
            "id_tcc" : idd_tcc
        })

    return tcc_aluno

def gerar_historico_professor(Professor, Disciplina):
    historico_professor = []

    for prof in Professor:
        ra = prof["ra"]

        qtd = random.randint(1, 10)

        for i in range(qtd):
            disciplina = faker.random_element(Disciplina)

            historico_professor.append({
                "ra_professor" : ra,
                "id_disciplina" : disciplina["id_disciplina"],
                "data" : faker.date_this_decade(),
                "situacao" : faker.random_element(["Aplicando", "Nao aplicando"])
            })
    return historico_professor

def exportar_csv(nome_arquivo, lista_dicionarios):
    if not lista_dicionarios:
        print(f"[!] Lista vazia, não exportou: {nome_arquivo}")
        return
    
    os.makedirs("DadosCsv", exist_ok=True)
    
    caminho = os.path.join("DadosCsv", nome_arquivo)

    with open(caminho, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=lista_dicionarios[0].keys())
        writer.writeheader()
        writer.writerows(lista_dicionarios)
    print(f"[✓] Exportado: {nome_arquivo}")

if __name__ == "__main__":
    Professor = gerar_professores()
    Departamento = gerar_departamentos()
    Curso = gerar_cursos() 
    Disciplina = gerar_disciplinas()
    TCC = gerar_tcc()
    Aluno = gerar_alunos()
    Historico_escolar = gerar_historico_aluno(Aluno, Disciplina)
    TCC_aluno = gerar_tcc_aluno(Aluno, TCC)
    Historico_Professor = gerar_historico_professor(Professor, Disciplina)
    
    exportar_csv("professores.csv", Professor)
    exportar_csv("departamentos.csv", Departamento)
    exportar_csv("cursos.csv", Curso)
    exportar_csv("disciplinas.csv", Disciplina)
    exportar_csv("tcc.csv", TCC)
    exportar_csv("alunos.csv", Aluno)
    exportar_csv("historico_aluno.csv", Historico_escolar)
    exportar_csv("tcc_aluno.csv", TCC_aluno)
    exportar_csv("historico_professor.csv", Historico_Professor)
