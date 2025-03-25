import psycopg2
from psycopg2 import sql

# Configurações de conexão (substitua com suas credenciais)
conn = psycopg2.connect(
    host="db.your-project.supabase.co",
    database="postgres",
    user="postgres",
    password="your-password",
    port="5432"
)

def verificar_consistencia():
    cursor = conn.cursor()
    
    # Verificar se há alunos sem histórico
    cursor.execute("""
        SELECT COUNT(*) 
        FROM ALUNO 
        WHERE id_aluno NOT IN (SELECT id_aluno FROM HISTORICO_ESCOLAR)
    """)
    sem_historico = cursor.fetchone()[0]
    print(f"Alunos sem histórico: {sem_historico}")
    
    # Verificar se há disciplinas sem professores
    cursor.execute("""
        SELECT COUNT(*) 
        FROM DISCIPLINA 
        WHERE id_disc NOT IN (SELECT id_disc FROM PROFESSOR_DISCIPLINA)
    """)
    sem_professor = cursor.fetchone()[0]
    print(f"Disciplinas sem professores: {sem_professor}")
    
    # Verificar TCCs sem alunos
    cursor.execute("""
        SELECT COUNT(*) 
        FROM TCC 
        WHERE id_tcc NOT IN (SELECT id_tcc FROM ALUNO_TCC)
    """)
    sem_alunos = cursor.fetchone()[0]
    print(f"TCCs sem alunos: {sem_alunos}")
    
    cursor.close()
    conn.close()

if __name__ == "__main__":
    verificar_consistencia()