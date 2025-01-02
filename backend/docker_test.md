```bash
# .env - 테스트용
POSTGRES_USER="user"
POSTGRES_PASSWORD="password"
POSTGRES_DB="postgres"
POSTGRES_HOST="db"
# db 확인용
docker exec -it postgres_database psql -U user -d my_database
\l
\dt
SELECT * FROM sample;
# 관리자 db 확인
docker exec -it postgres_database psql -U user -d postgres
\dt
SELECT * FROM accounts_user;

git clone -b <branchname> <remote-repo-url>

#pgadmin
http://localhost:5050
# Name : 서버명(지정)
# Host name : Postgres 컨테이너 이름
```