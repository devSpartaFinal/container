# Python 이미지를 사용하여 기본 이미지 설정
FROM python:3.10-slim

# PostgreSQL 설치
RUN apt-get update && \
    apt-get install -y postgresql-client && \
    rm -rf /var/lib/apt/lists/*

# dockerize 설치 / 의존성 관리 도구
RUN apt-get update && \
    # 패키지 목록을 업데이트
    apt-get install -y wget && \
    # wget 설치 / HTTP, HTTPS, FTP 에서 파일 다운로드 / -y 모두 확인
    wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-linux-amd64-v0.6.1.tar.gz && \
    tar -xvzf dockerize-linux-amd64-v0.6.1.tar.gz && \
    # tar : 압축 해제 / -x 압축 해제 /-v는 과정 표시 / -z는 .tar.gz 형식, -f 이름 지정
    mv dockerize /usr/local/bin/
    # mv 이동

# 작업 디렉토리 설정
WORKDIR /app/backend

# 종속성 설치를 위한 requirements.txt 복사
COPY requirements.txt .

# 종속성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY . .

# 포트 8000을 노출
EXPOSE 8000