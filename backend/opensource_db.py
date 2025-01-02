import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()
DRF_SECRET_KEY = os.getenv("DRF_SECRET_KEY")
POSTGRES_NAME = os.getenv("POSTGRES_NAME")
POSTGRES_USER = os.getenv("POSTGRES_USER")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD")
POSTGRES_HOST = os.getenv("POSTGRES_HOST")

# 1. Postgres 연결 설정
db_config = {
    'dbname': POSTGRES_NAME,
    'user': POSTGRES_USER,
    'password': POSTGRES_PASSWORD,
    'host': POSTGRES_HOST,
    'port':'5432'
}

# 2. 폴더 경로 설정
folder_path = 'dataset'  # txt 파일들이 있는 폴더 경로

try:
    # 데이터베이스 연결
    conn = psycopg2.connect(**db_config)
    cursor = conn.cursor()
    print("Database connection established.")

    # 3. dataset 폴더 내 'OPENSOURCE'로 시작하는 파일만 찾기
    files_to_process = [f for f in os.listdir(folder_path) if f.startswith('OPENSOURCE') and f.endswith('.txt')]
    
    if len(files_to_process) != 7:
        print(f"Warning: Expected 7 'OPENSOURCE' files, found {len(files_to_process)}.")
    
    # 4. 각 파일 처리
    for filename in files_to_process:
        file_path = os.path.join(folder_path, filename)
        
        # 파일 내용 읽기
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        # 5. material 컬럼에 들어갈 내용 작성 (사용자 입력)
        print(f"Enter material content for file {filename}:")
        material = input("내용 작성 필요")

        # 6. name은 모두 'OPENSOURCE'로 설정
        name = 'OPENSOURCE'

        # 7. 테이블에 데이터 삽입
        query = "INSERT INTO quizzes_category (name, material, content) VALUES (%s, %s, %s)"
        cursor.execute(query, (name, material, content))
        print(f"Inserted content from {filename} into database.")

    # 변경사항 저장
    conn.commit()
    print("All data has been committed.")

except Exception as e:
    print(f"An error occurred: {e}")

finally:
    # 연결 종료
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()
    print("Database connection closed.")
