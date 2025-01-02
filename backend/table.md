### 테이블 설계

1. 카테고리 테이블 (Category)
    - id : 카테고리 고유 ID (Primary Key)
    - name : 카테고리 이름 (파이썬_라이브러리, 머신러닝, 딥러닝, LLM_RAG, OPENSOURCE)
    - material : 각 카테고리별 교재 이름 (예: 'Pandas 설치 및 Jupyter Notebook 설정하기', '머신러닝 개요와 구성요소' 등)

2. 퀴즈 테이블 (Quiz)
    - id : 퀴즈 고유 ID (Primary Key)
    - category : 카테고리 고유 ID (Foreign Key, Category 테이블과 연결)
    - question : 퀴즈 문제
    - answer : 퀴즈 답 (챗봇 답)
    - created_at : 퀴즈 생성일

3. 사용자 테이블 (User)
    - id: 사용자 고유 ID (Primary Key)
    - username: 사용자 이름 (예: 'user1', 'ysooj')

4. 사용자 답변 테이블 (UserAnswer)
    - id : 사용자 답변 고유 ID (Primary Key)
    - user : 사용자 고유 ID (Foreign Key, User 테이블과 연결)
    - quiz : 퀴즈 고유 ID (Foreign Key, Quiz 테이블과 연결)
    - answer : 사용자 답변
    - right_or_not : 정답 여부  # 정답 여부를 저장할 수 있다면 추가해도 될 것 같습니다.
    
5. 피드백 테이블 (Feedback)
    - id : 피드백 고유 ID (Primary Key)
    - user_answer : 사용자 답변 ID (Foreign Key, UserAnswer 테이블과 연결)
    - feedback : 피드백
    - created_at : 피드백 생성일

### 테이블 관계
- Category - Quiz
    1:N 관계 (하나의 카테고리에는 여러 개의 퀴즈가 존재할 수 있다.) Quiz 모델은 category_id 필드를 통해 Category와 연결된다.

- User - UserAnswer
    1:N 관계 (한 명의 사용자는 여러 퀴즈를 풀 수 있다.) 따라서 UserAnswer 모델에서 user_id quiz_id로 User와 Quizzes로 각각 연결된다.

- UserAnswer - Feedback
    1:N 관계 (하나의 퀴즈에 대해 여러 번 피드백을 받을 수 있다.) Feedback 모델은 user_answer_id 필드를 통해 UserAnswer과 연결된다.