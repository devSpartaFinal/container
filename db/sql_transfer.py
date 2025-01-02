import json
import os
# Json 데이터 호출
with open('DB_test/test_set.json', 'r') as json_file:
    data = json.load(json_file)

# SQL 쿼리 작성
# sample : 테이블 이름
# AUTO_INCREMENT : MySQL
# SERIAL : PostgreSQL
sql_query = """
CREATE TABLE IF NOT EXISTS sample (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    content VARCHAR(3000)
);

INSERT INTO sample (title, content) VALUES
"""

values = []
for entry in data:
    # 작은 따옴표 제거
    title = entry['title'].replace("'", "''")  
    content = entry['content'].replace("'", "''")
    values.append(f"('{title}', '{content}')")

# SQL IN
sql_query += ",\n".join(values) + ";"

output_dir = 'DB_test/init'
os.makedirs(output_dir, exist_ok=True)  # 경로가 없으면 생성
with open(os.path.join(output_dir, 'sample_dataset.sql'), 'w') as file:
    file.write(sql_query)