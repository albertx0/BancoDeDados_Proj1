# 🎓 Sistema de Banco de Dados para Universidade

## 👥 Integrantes do Grupo

| Nome                                  | RA             |
|---------------------------------------|----------------|
| Gabriel Albertini Pinheiro           | 22.124.094-8   |
| Alexandre Domiciano Pierri           | 22.125.061-6   |
| Kawan Mark Gerononimo da Silva       | 22.222.010-5   |

---

## 📌 Descrição do Projeto

Este projeto consiste em um **banco de dados relacional** para gerenciar informações acadêmicas de uma universidade, incluindo:

- ✅ Alunos, professores e departamentos  
- ✅ Cursos e disciplinas  
- ✅ Histórico escolar e desempenho acadêmico  
- ✅ TCCs (Trabalhos de Conclusão de Curso) e orientações  

---

## ⚙️ Como Executar o Projeto

### ✅ Pré-requisitos

- PostgreSQL  
- Python 3 ( para scripts de geração de dados)

### 📦 Passos para Configuração

1. **Crie o banco de dados:**

    ```sql
    CREATE DATABASE universidade;
    ```

2. **Execute o script DDL para criar as tabelas:**

    ```bash
    psql -U [usuário] -d universidade -f schema.sql
    ```

3. **(Opcional) Popule o banco com dados fictícios:**

    ```bash
    python gerarDados.py
    ```

4. **Execute as consultas SQL:**

    ```bash
    psql -U [usuário] -d universidade -f queries.sql
    ```

---

# 📊 Modelo Entidade-Relacionamento (MER)
# ![image (1)](https://github.com/user-attachments/assets/0df05408-86db-4703-b3a8-27fc81d3c62d)


# 🧩 Modelo Relacional (MR - 3ª Forma Normal)


