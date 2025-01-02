# container

```bash
# 컨테이너 실행
docker-compose up --build

# 컨테이너 종료
ctrl + c

# 컨테이너 삭제
docker-compose down
```

```
project/
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   ├── package-lock.json
│   ├── src/
├── backend/
│   ├── Dockerfile
│   ├── manage.py
│   └── ...
├── db/
├── docker-compose.yml
```