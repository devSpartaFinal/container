import os
import psycopg2
from dotenv import load_dotenv
import re

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
    print("데이터베이스 연결 시작")

    # 3. dataset 폴더 내 모든 파일 읽기
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
            
        # 파일 내용 읽기
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        # 4. name 추출: 파일 이름에서 '_dataset' 전까지의 부분
        name = filename.split('_dataset')[0]  # '_dataset' 앞의 부분 추출
        
        # 5. material 추출: '📘[SCC]' 전까지 또는 '📕' 전까지의 내용
        # '📘[SCC]'와 '📕'의 위치를 찾고, 더 작은 위치를 선택
        scc_index = content.find('📘[SCC]')
        book_index = content.find('📕')

        # 두 인덱스 중 더 작은 값을 찾기
        if scc_index != -1 and book_index != -1:
            material_end = min(scc_index, book_index)
        elif scc_index != -1:
            material_end = scc_index
        elif book_index != -1:
            material_end = book_index
        else:
            material_end = len(content)  # 두 문자열이 없다면 전체 내용을 사용

        material = content[:material_end]  # 해당 부분까지 추출

        # 6. 테이블에 데이터 삽입
        query = "INSERT INTO quizzes_category (name, material, content) VALUES (%s, %s, %s)"
        cursor.execute(query, (name, material, content))
        print(f"{filename}을 데이터베이스에 저장했습니다.")

    # 변경사항 저장
    conn.commit()
    print("모든 데이터가 커밋됐습니다.")

except Exception as e:
    print(f"에러 발생 : {e}")

finally:
    # 연결 종료
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()
    print("데이터 베이스 연결 종료")