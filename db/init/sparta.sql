
CREATE TABLE IF NOT EXISTS reference (
    id SERIAL PRIMARY KEY,
    category VARCHAR(50),
    title VARCHAR(250),
    content TEXT,
    title_no INTEGER
);

INSERT INTO reference (category, title, content, title_no) VALUES
('PYTHON', 'Pandas 소개', 'Pandas 소개📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 1주차/1️⃣Pandas 소개1️⃣Pandas 소개수업 목표Pandas가 무엇인지와 활용 분야에 대해서 알아봅니다.목차판다스란?판다스 활용 분야 살펴보기판다스란?❗판다스(Pandas)는 Python에서 데이터를 쉽게 다룰 수 있게 해주는 데이터 분석 라이브러리예요!
데이터를 표(테이블) 형식으로 다루기 쉽게 만들어주고, 다양한 데이터 조작 기능을 제공해요. 
데이터를 정리하고 분석하는 데 아주 강력한 도구랍니다. 😎데이터프레임(DataFrame)판다스의 핵심 자료 구조로, 엑셀의 스프레드시트처럼 행(row)과 열(column)로 구성된 2차원 데이터 구조예요.시리즈(Series)단일 열을 나타내는 1차원 데이터 구조로, 데이터프레임의 구성 요소 중 하나예요.
판다스를 이용하면 데이터의 필터링, 정렬, 집계 등 다양한 작업을 간단한 코드로 수행할 수 있어요.판다스 활용 분야 살펴보기❗판다스는 다양한 분야에서 활용되고 있어요. 몇 가지 대표적인 예를 살펴볼게요!데이터 분석판다스는 방대한 양의 데이터를 효율적으로 처리하고 분석하는 데 매우 유용해요. 통계 분석, 트렌드 파악, 데이터 시각화 등 다양한 작업에 사용돼요.

데이터 전처리머신러닝 모델을 만들기 전에, 데이터를 정리하고 변환하는 과정에서 판다스는 없어서는 안 될 도구예요. 결측값 처리, 이상치 제거, 데이터 변환 등 다양한 작업을 지원해요.

비즈니스 인텔리전스(BI)기업에서 중요한 의사결정을 내리기 위해 데이터에서 인사이트를 도출하는 과정에서도 판다스가 널리 쓰여요. 고객 데이터 분석, 판매 데이터 추적 등 다양한 분석 작업에 활용돼요.

금융 데이터 분석금융 시장 데이터를 분석하고, 투자 전략을 수립하는 데도 판다스가 많이 사용돼요. 주식 가격 데이터, 경제 지표 등을 분석하는 데 강력한 도구예요.

연구 및 학술 분석연구 데이터의 수집, 정리, 분석에 판다스가 필수적이에요. 특히 사회과학, 생명과학 등 다양한 분야에서 데이터를 다루는 연구에 활용돼요.❗판다스는 데이터와 관련된 거의 모든 작업에서 활용될 수 있는 강력한 도구예요. 
앞으로 배울 기능들을 통해 여러분의 데이터 분석 능력을 한층 더 업그레이드해보세요! 💪', 1),
('PYTHON', 'Pandas 설치 및 Jupyter Notebook 설정하기', 'Pandas 설치 및 Jupyter Notebook 설정하기 📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 1주차/2️⃣Pandas 설치 및 Jupyter Notebook 설정하기 2️⃣Pandas 설치 및 Jupyter Notebook 설정하기 수업 목표Pandas 설치를 진행합니다.Jupyter Notebook 설정 방법에 대해서 학습합니다.목차판다스(Pandas) 설치하기Jupyter Notebook 설정하기 📝Conda와 가상환경 설정하기가상환경을 Jupyter Notebook과 연결하기알면 좋은 Tip!판다스(Pandas) 설치하기판다스(Pandas)란?📚판다스는 데이터 조작 및 분석을 위한 파이썬 라이브러리입니다.
데이터프레임(DataFrame)을 사용해 엑셀과 유사한 방식으로 데이터를 다룰 수 있습니다.판다스 설치하기ShellCopypip install pandas

​위 명령어를 실행하면 pip을 통해 판다스가 설치됩니다!Jupyter Notebook 설정하기 📝Jupyter Notebook이란?📚Jupyter Notebook은 코드, 텍스트, 이미지 등을 한 곳에서 관리할 수 있는 대화형 컴퓨팅 환경입니다.
데이터 분석, 머신러닝, 교육 등 다양한 분야에서 사용됩니다.Jupyter Notebook 설치하기ShellCopypip install jupyter

​이 명령어로 Jupyter Notebook을 설치할 수 있습니다.Jupyter Notebook 실행하기ShellCopyjupyter notebook

​명령어를 실행하면 웹 브라우저가 열리며 Jupyter Notebook 인터페이스로 이동합니다.Conda와 가상환경 설정하기Conda란?Conda는 파이썬 패키지 관리 및 가상환경 관리를 돕는 도구입니다.여러 프로젝트에 서로 다른 패키지 버전을 사용해야 할 때 유용합니다.

Conda 설치하기Anaconda나 Miniconda를 설치하여 Conda를 사용할 수 있습니다.설치 후, Conda 명령어를 사용할 수 있습니다.

가상환경 만들기ShellCopyconda create --name myenv

​위 명령어로 myenv라는 이름의 가상환경을 만듭니다.ShellCopyconda create --name myenv python=3.8 pandas
​원하는 파이썬 버전과 패키지를 지정할 수도 있습니다.가상환경 활성화 및 비활성화가상환경 활성화:ShellCopyconda activate myenv

​가상환경 비활성화:ShellCopyconda deactivate
​가상환경을 Jupyter Notebook과 연결하기ipykernel 설치가상환경을 Jupyter Notebook에서 사용하려면 ipykernel을 설치해야 합니다.ShellCopypip install ipykernel

​가상환경을 Jupyter Notebook에 추가하기ShellCopypython -m ipykernel install --user --name myenv --display-name "My Env"

​이 명령어를 실행하면 Jupyter Notebook에서 My Env라는 이름으로 가상환경을 선택할 수 있습니다.Jupyter Notebook에서 가상환경 사용하기ALTJupyter Notebook에서 새로운 노트북을 열 때,  My Env를 선택합니다.알면 좋은 Tip!Conda 가상환경 관리 conda env list 명령어로 현재 사용 가능한 가상환경을 확인할 수 있습니다.Jupyter Notebook 확장 다양한 Jupyter Notebook 확장을 설치해 기능을 확장해 보세요! nbextensions 패키지를 사용하면 많은 유용한 확장을 사용할 수 있습니다.📚이렇게 하면 판다스와 Jupyter Notebook 설정이 모두 완료되었습니다! ✨', 2),
('PYTHON', '판다스의 기본! 시리즈와 데이터 프레임 개념잡기', '판다스의 기본! 시리즈와 데이터 프레임 개념잡기📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 1주차/3️⃣판다스의 기본! 시리즈와 데이터 프레임 개념잡기3️⃣판다스의 기본! 시리즈와 데이터 프레임 개념잡기수업 목표판다스의 시리즈와 데이터 프레임 개념에 대해서 학습합니다.목차시리즈(Series)란? 데이터 프레임(DataFrame) 이해하기시리즈와 데이터 프레임의 차이점 및 공통점데이터 프레임에서 시리즈 다루기요약시리즈(Series)란? 📚시리즈에 대해서 알아봅시다!시리즈(Series)는 1차원 배열과 같은 데이터 구조입니다.엑셀의 한 열(column)을 떠올리면 이해가 쉬워요!인덱스(Index)와 데이터 값(Value)이 쌍으로 구성됩니다.Python복사import pandas as pd

# 예시: 시리즈 생성
s = pd.Series([10, 20, 30, 40], index=[''a'', ''b'', ''c'', ''d''])
print(s)

​s라는 시리즈는 다음과 같이 출력됩니다Plain Text복사a    10
b    20
c    30
d    40
dtype: int64

​🔎시리즈의 특징인덱스를 통해 데이터에 빠르게 접근할 수 있어요!데이터 타입은 자동으로 설정되지만, 원하는 타입으로 변경 가능해요.데이터 프레임(DataFrame) 이해하기📚데이터 프레임에 대해서 알아봅시다!데이터 프레임(DataFrame)은 2차원의 표 형태 데이터 구조입니다.엑셀의 전체 시트(sheet)를 생각해보세요!여러 개의 시리즈(Series)가 모여서 만들어집니다.Python복사# 예시: 데이터 프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수''],
''나이'': [25, 30, 35],
''직업'': [''학생'', ''회사원'', ''프리랜서'']
},

df = pd.DataFrame(data)
print(df)

​df라는 데이터 프레임은 다음과 같이 출력됩니다Plain Text복사   이름  나이     직업
0  철수  25     학생
1  영희  30    회사원
2  민수  35  프리랜서

​🔎데이터 프레임의 특징행(row)과 열(column)로 구성된 2차원 데이터.다양한 데이터 타입을 각 열에 담을 수 있어요.인덱스와 컬럼명을 사용해 특정 데이터에 접근할 수 있어요.시리즈와 데이터 프레임의 차이점 및 공통점❗차이점시리즈는 1차원, 데이터 프레임은 2차원.시리즈는 하나의 데이터 타입, 데이터 프레임은 다양한 데이터 타입 허용.❗공통점둘 다 인덱스를 가지고 있어 데이터에 쉽게 접근 가능.판다스에서 가장 기본적인 데이터 구조.데이터 프레임에서 시리즈 다루기데이터 프레임의 각 열(column)은 시리즈입니다.Python복사# 특정 열을 시리즈로 선택
age_series = df[''나이'']
print(age_series)
​age_series는 다음과 같이 출력됩니다:Plain Text복사0    25
1    30
2    35
Name: 나이, dtype: int64​📚Tip데이터 프레임의 열을 선택할 때 문자열을 사용하면 시리즈가 반환돼요!중복된 인덱스가 있을 때는 시리즈가 복잡해질 수 있으니, 유일한 인덱스를 사용하는 것이 좋습니다.요약📚요약시리즈(Series)는 1차원 데이터, 데이터 프레임(DataFrame)은 2차원 데이터.인덱스를 통해 데이터에 빠르고 효율적으로 접근 가능.데이터 프레임은 여러 시리즈의 집합으로, 다양한 데이터 타입을 담을 수 있어요.이제 판다스의 기본 개념을 잡았으니, 실습을 통해 더 익숙해져보세요! 😊', 3),
('PYTHON', 'NumPy 소개 및 설치', 'NumPy 소개 및 설치📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 2주차/1️⃣NumPy 소개 및 설치1️⃣NumPy 소개 및 설치수업 목표Numpy가 무엇인지 알아봅니다.Numpy 세팅을 진행합니다.목차NumPy란? NumPy 설치하기NumPy의 기본 사용법 요약NumPy란? 📚NumPy는 Numerical Python의 줄임말로,
과학 계산에 강력한 성능을 제공하는 파이썬 라이브러리입니다.NumPy?다차원 배열 객체인 ndarray와 배열을 효율적으로 처리할 수 있는 다양한 함수들을 제공합니다.데이터 분석, 머신러닝, 딥러닝에서 기초가 되는 라이브러리로, 판다스와 함께 자주 사용됩니다.🔎NumPy의 주요 특징고속 배열 연산: C언어로 작성되어 있어 파이썬 기본 리스트보다 훨씬 빠른 연산 가능.다양한 수학 함수: 배열 간의 덧셈, 뺄셈, 곱셈 등의 연산을 효율적으로 수행.선형대수, 통계 함수: 복잡한 수학 계산도 간단히 처리 가능.NumPy 설치하기NumPy를 사용하려면 먼저 설치가 필요합니다.
가상환경을 사용하고 있다면 해당 가상환경에 설치하면 됩니다.ShellCopypip install numpy

​설치가 완료되면, 파이썬 코드에서 import numpy as np로 NumPy를 사용할 수 있습니다.NumPy의 기본 사용법 배열(ndarray) 생성하기리스트를 사용해 배열을 생성할 수 있어요.PythonCopyimport numpy as np

# 1차원 배열 생성
arr = np.array([1, 2, 3, 4, 5])
print(arr)

​arr은 다음과 같이 출력됩니다:Plain TextCopy[1 2 3 4 5]

​배열의 연산NumPy 배열은 벡터화 연산이 가능하여, 반복문 없이 배열 전체에 연산을 적용할 수 있습니다.PythonCopy# 배열 덧셈
arr2 = arr + 10
print(arr2)

​arr2는 다음과 같이 출력됩니다:Plain TextCopy[11 12 13 14 15]

​배열의 다양한 기능배열의 모양 변경, 원소 접근 등 다양한 기능을 쉽게 사용할 수 있습니다.PythonCopy# 배열의 모양 변경
arr_reshaped = arr.reshape((1, 5))
print(arr_reshaped)

​arr_reshaped는 다음과 같이 출력됩니다:Plain TextCopy[[1 2 3 4 5]]​요약📚요약NumPy는 빠르고 효율적인 수치 계산을 위한 필수 라이브러리입니다.pip 명령어로 설치 가능하며, 다양한 수학 연산과 배열 조작 기능을 제공합니다.NumPy를 통해 복잡한 계산을 단순하게 만들 수 있어, 데이터 분석에서 자주 사용됩니다.NumPy로 데이터 처리의 기초를 다지고, 더 나아가 판다스와 함께 활용해보세요! 😊', 4),
('PYTHON', 'NumPy 배열(array) 생성 및 기초 연산', 'NumPy 배열(array) 생성 및 기초 연산📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 2주차/2️⃣NumPy 배열(array) 생성 및 기초 연산Made with2️⃣NumPy 배열(array) 생성 및 기초 연산수업 목표NumPy 배열 생성 및 기초 연산에 대해 학습합니다.목차NumPy 배열(array) 생성하기NumPy 배열의 기초 연산 배열의 인덱싱과 슬라이싱요약NumPy 배열(array) 생성하기📚NumPy 배열은 파이썬의 리스트와 비슷하지만, 더 강력하고 효율적인 기능을 제공합니다. 배열을 생성하는 다양한 방법을 살펴볼까요?리스트로부터 배열 생성리스트를 배열로 변환할 수 있습니다.PythonCopyimport numpy as np

# 리스트로부터 배열 생성
arr = np.array([1, 2, 3, 4, 5])
print(arr)

​출력 결과:Plain TextCopy[1 2 3 4 5]

​다양한 형태의 배열 생성0으로 채워진 배열 생성PythonCopyzero_arr = np.zeros((2, 3)) # 2x3 크기의 배열
print(zero_arr)

​출력 결과Plain TextCopy[[0. 0. 0.]
 [0. 0. 0.]]​1로 채워진 배열 생성PythonCopyones_arr = np.ones((3, 2)) # 3x2 크기의 배열
print(ones_arr)

​출력 결과Plain TextCopy[[1. 1.]
 [1. 1.]
 [1. 1.]]​특정 값으로 채워진 배열 생성PythonCopyfull_arr = np.full((2, 2), 7) # 2x2 크기의 7로 채워진 배열
print(full_arr)

​출력 결과Plain TextCopy[[7 7]
 [7 7]]

​연속적인 값으로 채워진 배열 생성:PythonCopyrange_arr = np.arange(10) # 0부터 9까지의 연속된 값
print(range_arr)

​출력 결과Plain TextCopy[0 1 2 3 4 5 6 7 8 9]

​NumPy 배열의 기초 연산 📚NumPy 배열에서는 반복문 없이 벡터화 연산을 통해 쉽게 연산을 수행할 수 있습니다.기본 연산덧셈, 뺄셈, 곱셈, 나눗셈 모두 가능합니다.PythonCopyarr = np.array([1, 2, 3, 4, 5])
# 각 원소에 2를 더하기
arr_add = arr + 2
print(arr_add)
# 각 원소에 2를 곱하기
arr_mul = arr * 2
print(arr_mul)

​출력 결과Plain TextCopy[3 4 5 6 7]
[ 2  4  6  8 10]

​배열 간의 연산배열 간의 덧셈과 곱셈도 쉽습니다.PythonCopyarr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
# 배열 간 덧셈
arr_sum = arr1 + arr2
print(arr_sum)
# 배열 간 곱셈
arr_mul = arr1 * arr2
print(arr_mul)

​출력 결과Plain TextCopy[5 7 9]
[ 4 10 18]

​배열의 인덱싱과 슬라이싱인덱싱(Indexing)배열의 특정 위치에 접근하는 방법입니다.PythonCopyarr = np.array([10, 20, 30, 40, 50])
# 첫 번째 원소
print(arr[0])
# 마지막 원소
print(arr[-1])

​출력 결과Plain TextCopy10
50

​슬라이싱(Slicing)배열의 일부분을 잘라내는 방법입니다.PythonCopyarr = np.array([10, 20, 30, 40, 50])
# 두 번째부터 네 번째 원소까지
sliced_arr = arr[1:4]
print(sliced_arr)

​출력 결과Plain TextCopy[20 30 40]

​다차원 배열의 인덱싱 및 슬라이싱다차원 배열의 경우, 콤마를 사용해 접근합니다.PythonCopyarr2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
# 특정 원소 접근 (2행 3열)
print(arr2d[1, 2])
# 슬라이싱 (2행까지, 2열까지)
sliced_arr2d = arr2d[:2, :2]
print(sliced_arr2d)

​출력 결과Plain TextCopy6
[[1 2]
 [4 5]]

​요약📚요약NumPy 배열은 리스트보다 강력한 기능을 제공하며, 다양한 방법으로 생성할 수 있습니다.배열 간의 벡터화 연산을 통해 복잡한 수학 연산을 쉽게 수행할 수 있습니다.인덱싱과 슬라이싱을 사용해 배열의 특정 원소나 부분 배열에 쉽게 접근 가능합니다.이제 NumPy 배열을 자유자재로 다뤄보세요! 😊Son minsuckSep 25토글 리스트로 변환', 5),
('PYTHON', '배열 연산 및 브로드캐스팅', '배열 연산 및 브로드캐스팅📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 2주차/3️⃣배열 연산 및 브로드캐스팅Made with3️⃣배열 연산 및 브로드캐스팅수업 목표Numpy의 배열 연산 및 브로드캐스팅에 대해서 학습합니다.목차배열 연산 및 브로드캐스팅기본적인 수학 함수와 통계 함수요약배열 연산 및 브로드캐스팅📚NumPy에서는 배열 간의 연산을 매우 효율적으로 수행할 수 있습니다. 특히 브로드캐스팅(Broadcasting) 기능은 크기가 다른 배열 간의 연산을 가능하게 해줍니다.배열 간의 기본 연산NumPy 배열 간의 덧셈, 뺄셈, 곱셈, 나눗셈 모두 요소별(element-wise)로 수행됩니다.PythonCopyimport numpy as np

arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
# 덧셈
add_result = arr1 + arr2
print(add_result)
# 곱셈
mul_result = arr1 * arr2
print(mul_result)

​출력 결과Plain TextCopy[5 7 9]
[ 4 10 18]

​브로드캐스팅(Broadcasting)📚브로드캐스팅이란?작은 배열이 큰 배열의 형태에 맞게 자동으로 확장되어 연산이 이루어지는 것을 의미해요. 
이 기능 덕분에 코드를 더 간결하게 작성할 수 있습니다.서로 다른 크기의 배열 간에도 연산이 가능합니다. 작은 배열이 자동으로 확장되어 연산됩니다.PythonCopyarr1 = np.array([1, 2, 3])
arr2 = np.array([[10], [20], [30]])
# 브로드캐스팅을 이용한 덧셈
broadcast_result = arr1 + arr2
print(broadcast_result)

​출력 결과Plain TextCopy[[11 12 13]
 [21 22 23]
 [31 32 33]]

​기본적인 수학 함수와 통계 함수📚NumPy는 배열을 다룰 때 자주 사용하는 다양한 수학 함수와 통계 함수를 제공합니다.기본적인 수학 함수배열의 합(sum)과 곱(prod)PythonCopyarr = np.array([1, 2, 3, 4])
# 합계
sum_result = np.sum(arr)
print(sum_result)
# 곱
prod_result = np.prod(arr)
print(prod_result)

​출력 결과Plain TextCopy10
24

​제곱근과 로그PythonCopy# 제곱근
sqrt_result = np.sqrt(arr)
print(sqrt_result)
# 자연로그
log_result = np.log(arr)
print(log_result)

​출력 결과Plain TextCopy[1.         1.41421356 1.73205081 2.        ]
[0.         0.69314718 1.09861229 1.38629436]

​기본적인 통계 함수평균(mean), 중간값(median), 표준편차(std)PythonCopyarr = np.array([1, 2, 3, 4, 5])
# 평균
mean_result = np.mean(arr)
print(mean_result)
# 중간값
median_result = np.median(arr)
print(median_result)
# 표준편차
std_result = np.std(arr)
print(std_result)

​출력 결과Plain TextCopy3.0
3.0
1.4142135623730951

​최대값(max)과 최소값(min)PythonCopyarr = np.array([1, 3, 2, 7, 5])
# 최대값
max_result = np.max(arr)
print(max_result)
# 최소값
min_result = np.min(arr)
print(min_result)

​출력 결과Plain TextCopy7
1

​요약📚요약배열 간 연산은 요소별로 수행되며, 크기가 다른 배열 간에도 브로드캐스팅을 통해 연산이 가능합니다.NumPy는 합계, 곱, 제곱근, 로그와 같은 다양한 수학 함수를 제공하며, 이를 통해 복잡한 계산을 간단하게 수행할 수 있어요.평균, 중간값, 표준편차, 최대값, 최소값 등의 통계 함수도 쉽게 사용할 수 있어 데이터 분석에 매우 유용합니다.이제 NumPy의 강력한 연산 능력을 활용해 더 복잡한 데이터 분석을 시도해보세요! 😊', 6),
('PYTHON', '판다스 사용을 위해 데이터를 불러오기와 저장하기', '판다스 사용을 위해 데이터를 불러오기와 저장하기📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 3주차/1️⃣판다스 사용을 위해 데이터를 불러오기와 저장하기1️⃣판다스 사용을 위해 데이터를 불러오기와 저장하기수업 목표판다스를 이용한 데이터 불러오기 및 저장 방법에 대해서 학습합니다.목차CSV, Excel, JSON 등 다양한 형식에서 데이터 불러오기CSV 파일 불러오기Excel 파일 불러오기JSON 파일 불러오기CSV, Excel, JSON, SQL 등 다양한 형식으로 데이터 저장하기CSV 파일로 저장하기Excel 파일로 저장하기JSON 파일로 저장하기 SQL 데이터베이스에 저장하기요약CSV, Excel, JSON 등 다양한 형식에서 데이터 불러오기CSV 파일 불러오기📚CSV 파일은 가장 많이 사용되는 데이터 형식 중 하나입니다. 판다스에서는 read_csv 함수를 사용해 쉽게 불러올 수 있어요.PythonCopyimport pandas as pd

# CSV 파일 불러오기
df_csv = pd.read_csv(''data.csv'')
print(df_csv.head())

​🔍 주요 옵션sep : 구분자를 지정합니다. 기본값은 ,입니다.header : 헤더 행을 지정합니다. 기본값은 첫 번째 행(0)입니다.예시: 만약 데이터가 탭으로 구분되어 있다면?PythonCopydf_csv = pd.read_csv(''data.csv'', sep=''\'')

​URL에서 CSV 파일 불러오기: 인터넷에 있는 CSV 파일을 바로 불러올 수 있습니다.PythonCopyurl = ''<https://example.com/data.csv>''
df_csv_url = pd.read_csv(url)
print(df_csv_url.head())
​Excel 파일 불러오기📚Excel 파일도 판다스로 쉽게 불러올 수 있습니다. read_excel 함수를 사용하세요.PythonCopy# Excel 파일 불러오기
df_excel = pd.read_excel(''data.xlsx'')
print(df_excel.head())

​🔍 주요 옵션sheet_name : 읽고자 하는 시트 이름 또는 번호를 지정합니다. 기본값은 첫 번째 시트(0)입니다.header : 헤더 행을 지정합니다. 기본값은 첫 번째 행(0)입니다.예시: 특정 시트의 데이터를 불러오고 싶다면?PythonCopydf_excel = pd.read_excel(''data.xlsx'', sheet_name=''Sheet2'')

​URL에서 Excel 파일 불러오기: URL을 통해 Excel 파일도 불러올 수 있습니다.PythonCopyurl = ''<https://example.com/data.xlsx>''
df_excel_url = pd.read_excel(url)
print(df_excel_url.head())

​JSON 파일 불러오기📚JSON 파일은 웹에서 자주 사용하는 데이터 형식입니다. 판다스에서는 read_json 함수를 사용해 불러올 수 있습니다.PythonCopy# JSON 파일 불러오기
df_json = pd.read_json(''data.json'')
print(df_json.head())

​🔍 주요 옵션orient : JSON 데이터의 형식을 지정합니다. 기본값은 columns입니다.URL에서 JSON 파일 불러오기: 웹에서 JSON 데이터를 직접 불러올 수도 있습니다.PythonCopyurl = ''<https://example.com/data.json>''
df_json_url = pd.read_json(url)
print(df_json_url.head())

​📚요약판다스는 CSV, Excel, JSON 등 다양한 형식의 데이터를 쉽게 불러올 수 있는 기능을 제공합니다.URL을 통해 웹에서 직접 데이터를 불러오는 것도 가능하며, 이 기능을 통해 데이터 수집이 매우 간편해집니다.다양한 파일 형식의 데이터 로드를 익히면, 다양한 소스의 데이터를 활용하여 데이터 분석을 할 수 있습니다.이제 다양한 데이터 소스를 자유롭게 불러와서 분석을 시작해보세요! 😊CSV, Excel, JSON, SQL 등 다양한 형식으로 데이터 저장하기CSV 파일로 저장하기📚CSV 파일은 데이터를 저장할 때 가장 널리 사용되는 형식 중 하나입니다. 판다스에서는 to_csv 함수를 사용해 데이터를 쉽게 CSV 파일로 저장할 수 있습니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
df = pd.DataFrame({
''이름'': [''철수'', ''영희'', ''민수''],
''나이'': [25, 30, 35],
''직업'': [''학생'', ''회사원'', ''프리랜서'']
},)
# CSV 파일로 저장하기
df.to_csv(''data.csv'', index=False)

​🔍 주요 옵션index=False : 인덱스를 제외하고 저장합니다.sep : 구분자를 지정합니다. 기본값은 ,입니다.URL로 저장하기: URL 경로가 아닌, 로컬 파일 시스템에 저장하는 방법이므로, URL을 지정할 수 없습니다.Excel 파일로 저장하기📚Excel 파일 형식으로 저장하려면 to_excel 함수를 사용합니다.PythonCopy# Excel 파일로 저장하기
df.to_excel(''data.xlsx'', index=False)

​🔍 주요 옵션sheet_name : 저장할 시트 이름을 지정합니다. 기본값은 Sheet1입니다.index=False : 인덱스를 제외하고 저장합니다.JSON 파일로 저장하기 📚JSON 파일 형식으로 데이터를 저장하려면 to_json 함수를 사용합니다.PythonCopy# JSON 파일로 저장하기
df.to_json(''data.json'')

​🔍 주요 옵션orient : JSON 형식을 지정합니다. 기본값은 columns입니다. records, index 등 다양한 형식으로 저장할 수 있습니다.PythonCopy# 예시: 레코드 형식으로 저장하기
df.to_json(''data_records.json'', orient=''records'')

​SQL 데이터베이스에 저장하기📚데이터를 SQL 데이터베이스에 저장하려면 to_sql 함수를 사용하고, 데이터베이스 연결이 필요합니다.PythonCopyimport sqlite3

# SQLite 데이터베이스 연결
conn = sqlite3.connect(''database.db'')
# 데이터프레임을 SQL 테이블로 저장하기
df.to_sql(''table_name'', conn, if_exists=''replace'', index=False)
# 연결 종료
conn.close()

​🔍 주요 옵션name : 저장할 테이블 이름을 지정합니다.', 7),
('PYTHON', '불러온 데이터 미리보기 및 기본 정보 확인', '불러온 데이터 미리보기 및 기본 정보 확인📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 3주차/2️⃣불러온 데이터 미리보기 및 기본 정보 확인2️⃣불러온 데이터 미리보기 및 기본 정보 확인수업 목표판다스를 통해 불러온 데이터를 확인하는 방법에 대해서 학습합니다.목차기초 정보를 확인하는 다양한 기능데이터 미리보기데이터프레임의 기본 정보 확인하기
데이터프레임의 개별 데이터 확인하기요약기초 정보를 확인하는 다양한 기능데이터 미리보기📚데이터를 불러온 후, 전체 데이터를 다 확인하기에는 부담이 될 수 있습니다. 그래서 판다스는 데이터를 미리보기 할 수 있는 다양한 방법을 제공합니다. head()로 상위 데이터 미리보기head() 함수는 데이터프레임의 상위 몇 개의 행을 미리보기 합니다. 기본적으로 5개 행을 보여줍니다.PythonCopyimport pandas as pd

# CSV 파일 불러오기
df = pd.read_csv(''data.csv'')
# 상위 5개 행 미리보기
print(df.head())

​특정 개수의 행을 보고 싶다면?PythonCopyprint(df.head(10)) # 상위 10개 행 미리보기
​tail()로 하위 데이터 미리보기tail() 함수는 하위 몇 개의 행을 미리보기 합니다. 역시 기본값은 5개 행입니다.PythonCopyprint(df.tail())

​특정 개수의 하위 행을 보고 싶다면?PythonCopyprint(df.tail(3)) # 하위 3개 행 미리보기
​데이터프레임의 기본 정보 확인하기📚데이터프레임의 기본 정보를 확인하면 데이터의 구조와 내용을 쉽게 파악할 수 있습니다.info()로 데이터프레임의 요약 정보 확인info() 함수는 데이터프레임의 전체 구조를 한눈에 보여줍니다. 각 열의 데이터 타입과 널 값 여부를 확인할 수 있습니다.PythonCopyprint(df.info())

​출력 예시:Plain TextCopy<class ''pandas.core.frame.DataFrame''>
RangeIndex: 100 entries, 0 to 99
Data columns (total 4 columns):
 #   Column   Non-Null Count  Dtype
---  ------   --------------  -----
 0   이름      100 non-null    object
 1   나이      100 non-null    int64
 2   직업      100 non-null    object
 3   지역      95 non-null     object
dtypes: int64(1), object(3)
memory usage: 3.2+ KB

​describe()로 주요 통계 정보 확인describe() 함수는 숫자형 데이터에 대한 주요 통계 정보를 제공합니다. 평균, 표준편차, 최소값, 최대값 등을 확인할 수 있습니다.PythonCopyprint(df.describe())

​특정 열에 대한 통계를 보고 싶다면?PythonCopyprint(df[''나이''].describe())

​출력 예시:Plain TextCopy              나이
count  100.000000
mean    30.500000
std      4.5
min     25.000000
25%     27.000000
50%     30.000000
75%     34.000000
max     35.000000

​columns와 index로 열과 행 정보 확인데이터프레임의 열 이름과 행 인덱스를 확인할 수 있습니다.PythonCopyprint(df.columns) # 열 이름 확인
print(df.index) # 행 인덱스 확인

​
데이터프레임의 개별 데이터 확인하기 loc[]로 행과 열의 위치를 지정하여 접근하기loc[]은 라벨(인덱스, 컬럼명)을 사용해 특정 데이터를 조회합니다.PythonCopy# 특정 행 조회
print(df.loc[0]) # 첫 번째 행
# 특정 행과 열 조회
print(df.loc[0, ''이름'']) # 첫 번째 행의 ''이름'' 열 데이터

​iloc[]로 행과 열의 위치 인덱스를 사용해 접근하기iloc[]은 정수 인덱스를 사용해 데이터를 조회합니다.PythonCopy# 첫 번째 행 조회
print(df.iloc[0])
# 첫 번째 행의 두 번째 열 데이터 조회
print(df.iloc[0, 1])

​특정 열이나 행 전체를 선택하기특정 열 전체를 선택할 수 있습니다.PythonCopyprint(df[''이름'']) # ''이름'' 열 전체

​여러 열을 선택하고 싶다면?PythonCopyprint(df[[''이름'', ''나이'']]) # ''이름''과 ''나이'' 열 전체

​특정 행 전체를 선택하려면 loc[] 또는 iloc[]을 사용하세요.요약📚요약데이터를 불러온 후, head()와 tail()로 데이터의 상위 및 하위 행을 미리 볼 수 있습니다.info()와 describe()를 사용해 데이터프레임의 구조와 주요 통계 정보를 확인할 수 있습니다.loc[], iloc[]을 사용해 개별 데이터나 특정 행과 열의 값을 쉽게 조회할 수 있습니다.이제 데이터를 미리 파악하고 분석을 시작해보세요! 😊', 8),
('PYTHON', '데이터를 선택하는 기본 방법', '데이터를 선택하는 기본 방법📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 3주차/3️⃣데이터를 선택하는 기본 방법3️⃣데이터를 선택하는 기본 방법수업 목표판다스에서 인덱스, 열, 행을 지정하는 방법에 대해서 학습합니다.목차인덱스를 사용한 데이터 선택열(Column) 지정하여 데이터 선택하기행(Row) 지정하여 데이터 선택하기요약인덱스를 사용한 데이터 선택📚데이터프레임에서 인덱스는 각 행을 고유하게 식별할 수 있는 라벨입니다. 인덱스를 사용해 특정 행이나 그룹을 쉽게 선택할 수 있습니다.set_index()로 인덱스 설정하기특정 열을 인덱스로 설정하면, 데이터 선택이 더 직관적이 됩니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수''],
''나이'': [25, 30, 35],
''직업'': [''학생'', ''회사원'', ''프리랜서'']
},
df = pd.DataFrame(data)
# ''이름'' 열을 인덱스로 설정
df = df.set_index(''이름'')
print(df)

​결과:Plain TextCopy      나이       직업
이름
철수   25      학생
영희   30    회사원
민수   35  프리랜서

​loc[]을 사용해 인덱스로 데이터 선택인덱스를 설정한 후, loc[]을 사용해 쉽게 데이터에 접근할 수 있습니다.PythonCopy# ''영희''의 데이터 선택
print(df.loc[''영희''])

​결과:Plain TextCopy나이       30
직업    회사원
Name: 영희, dtype: object​열(Column) 지정하여 데이터 선택하기📚데이터프레임의 열을 지정하여 특정 데이터에 접근하는 방법입니다.단일 열 선택열 이름을 사용해 단일 열을 선택할 수 있습니다.PythonCopy# ''나이'' 열 선택
print(df[''나이''])

​결과:Plain TextCopy이름
철수    25
영희    30
민수    35
Name: 나이, dtype: int64​여러 열 선택여러 열을 선택하고 싶다면, 열 이름의 리스트를 사용하세요.PythonCopy# ''나이''와 ''직업'' 열 선택
print(df[[''나이'', ''직업'']])

​결과:Plain TextCopy      나이       직업
이름
철수   25      학생
영희   30    회사원
민수   35  프리랜서

​행(Row) 지정하여 데이터 선택하기📚행을 지정하여 데이터프레임의 특정 부분을 선택하는 방법입니다.iloc[]을 사용한 행 선택iloc[]을 사용하면 정수 인덱스로 행을 선택할 수 있습니다.PythonCopy# 첫 번째 행 선택
print(df.iloc[0])

​결과:Plain TextCopy나이     25
직업     학생
Name: 철수, dtype: object

​loc[]을 사용한 특정 행 선택loc[]을 사용해 인덱스 라벨로 특정 행을 선택할 수 있습니다.PythonCopy# ''민수''의 데이터 선택
print(df.loc[''민수''])

​결과:Plain TextCopy나이       35
직업    프리랜서
Name: 민수, dtype: object

​여러 행 선택iloc[]이나 loc[]을 사용해 여러 행을 선택할 수 있습니다.PythonCopy# 첫 번째와 두 번째 행 선택
print(df.iloc[0:2])

​결과:Plain TextCopy      나이    직업
이름
철수   25   학생
영희   30  회사원

​요약📚요약인덱스는 데이터프레임의 특정 행을 고유하게 식별하는 데 사용되며, set_index()로 설정할 수 있습니다.loc[]은 인덱스와 열 라벨을 사용해 데이터에 접근하며, iloc[]은 정수 인덱스를 사용합니다.단일 열 또는 여러 열을 선택하여 특정 데이터를 추출할 수 있습니다.행과 열을 함께 지정해 정교한 데이터 선택이 가능합니다.이제 데이터프레임에서 원하는 데이터를 자유롭게 선택해보세요! 😊', 9),
('PYTHON', '조건부 필터링과 데이터 타입 변환', '조건부 필터링과 데이터 타입 변환📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 3주차/4️⃣조건부 필터링과 데이터 타입 변환4️⃣조건부 필터링과 데이터 타입 변환수업 목표판다스에서 필터링과 데이터 타입을 변환하는 방법에 대해서 학습합니다.목차조건부 필터링데이터 타입 변환요약조건부 필터링📚조건부 필터링을 통해 데이터프레임에서 특정 조건을 만족하는 데이터만 선택할 수 있습니다. 이 기능은 데이터 분석에서 매우 유용합니다.기본 조건부 필터링조건을 사용해 필터링된 데이터프레임을 반환할 수 있습니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수'', ''지수''],
''나이'': [25, 30, 22, 35],
''직업'': [''학생'', ''회사원'', ''학생'', ''프리랜서'']
},
df = pd.DataFrame(data)
# 나이가 25 이상인 행만 선택
filtered_df = df[df[''나이''] >= 25]
print(filtered_df)

​결과:Plain TextCopy   이름  나이       직업
0  철수   25      학생
1  영희   30    회사원
3  지수   35  프리랜서

​여러 조건을 사용한 필터링여러 조건을 결합하여 필터링할 수 있습니다. AND(&), OR(|) 연산자를 사용하세요.PythonCopy# 나이가 25 이상이고, 직업이 ''학생''인 행만 선택
filtered_df = df[(df[''나이''] >= 25) & (df[''직업''] == ''학생'')]
print(filtered_df)

​결과:Plain TextCopy   이름  나이  직업
0  철수   25  학생

​isin()을 사용한 필터링특정 값들이 포함된 행을 필터링할 때 유용합니다.PythonCopy# 직업이 ''학생'' 또는 ''프리랜서''인 행 선택
filtered_df = df[df[''직업''].isin([''학생'', ''프리랜서''])]
print(filtered_df)

​결과:Plain TextCopy   이름  나이       직업
0  철수   25      학생
2  민수   22      학생
3  지수   35  프리랜서

​~ 연산자를 사용한 반대 조건 필터링특정 조건을 부정하는 데이터를 선택할 때 사용합니다.PythonCopy# 직업이 ''학생''이 아닌 행 선택
filtered_df = df[~(df[''직업''] == ''학생'')]
print(filtered_df)

​결과:Plain TextCopy   이름  나이       직업
1  영희   30    회사원
3  지수   35  프리랜서

​데이터 타입 변환📚데이터프레임의 데이터 타입을 확인하고, 필요에 따라 변환하는 방법입니다. 데이터 분석 및 처리 시, 올바른 데이터 타입을 사용하는 것이 중요합니다.dtype으로 데이터 타입 확인각 열의 데이터 타입을 확인할 수 있습니다.PythonCopyprint(df.dtypes)

​결과:Plain TextCopy이름    object
나이     int64
직업    object
dtype: object

​astype()을 사용한 데이터 타입 변환astype() 함수로 특정 열의 데이터 타입을 변경할 수 있습니다.PythonCopy# ''나이'' 열을 정수형(int)에서 실수형(float)으로 변환
df[''나이''] = df[''나이''].astype(float)
print(df.dtypes)

​결과:Plain TextCopy이름    object
나이    float64
직업    object
dtype: object

​날짜 타입으로 변환날짜 데이터는 pd.to_datetime() 함수를 사용해 날짜 타입으로 변환할 수 있습니다.PythonCopy# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수''],
''가입일'': [''2023-01-01'', ''2022-12-15'', ''2023-05-22'']
},
df = pd.DataFrame(data)
# ''가입일''을 날짜 타입으로 변환
df[''가입일''] = pd.to_datetime(df[''가입일''])
print(df.dtypes)

​결과:Plain TextCopy이름            object
가입일    datetime64[ns]
dtype: object

​카테고리 데이터로 변환카테고리는 메모리를 절약하고, 성능을 높이기 위해 사용할 수 있습니다.PythonCopy# ''직업'' 열을 카테고리형으로 변환
df[''직업''] = df[''직업''].astype(''category'')
print(df.dtypes)

​결과:Plain TextCopy이름     object
나이    float64
직업   category
dtype: object

​요약📚요약조건부 필터링은 특정 조건을 만족하는 데이터만 선택하는 강력한 도구입니다. &, |, ~ 등의 연산자를 결합하여 복잡한 조건을 구성할 수 있습니다.데이터 타입 변환은 데이터를 올바르게 처리하기 위해 필수적이며, astype(), pd.to_datetime() 등을 사용해 변환할 수 있습니다.데이터의 정확한 타입을 지정함으로써 메모리 절약과 성능 향상을 기대할 수 있습니다.이제 다양한 조건으로 데이터를 필터링하고, 적절한 데이터 타입으로 변환하여 데이터 분석의 효율을 높여보세요! 😊', 10),
('PYTHON', '데이터 변형해보기: 데이터 정렬과 병합', '데이터 변형해보기: 데이터 정렬과 병합📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 4주차/1️⃣데이터 변형해보기: 데이터 정렬과 병합1️⃣데이터 변형해보기: 데이터 정렬과 병합수업 목표판다스를 통해 데이터를 정렬하고 병합하는 방법에 대해 학습합니다.목차데이터 정렬데이터 병합요약데이터 정렬📚데이터를 정렬하는 것은 데이터 분석의 기본입니다. 판다스에서는 sort_values()와 sort_index()를 사용해 쉽게 데이터를 정렬할 수 있습니다.sort_values()를 사용한 값(Value) 기준 정렬특정 열의 값을 기준으로 데이터를 오름차순 또는 내림차순으로 정렬할 수 있습니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수'', ''지수''],
''나이'': [25, 30, 22, 35],
''직업'': [''학생'', ''회사원'', ''학생'', ''프리랜서'']
},
df = pd.DataFrame(data)
# ''나이'' 기준으로 오름차순 정렬
sorted_df = df.sort_values(by=''나이'')
print(sorted_df)

​결과:Plain TextCopy   이름  나이       직업
2  민수   22      학생
0  철수   25      학생
1  영희   30    회사원
3  지수   35  프리랜서

​내림차순으로 정렬하려면 ascending=False를 지정하세요.PythonCopy# ''나이'' 기준으로 내림차순 정렬
sorted_df_desc = df.sort_values(by=''나이'', ascending=False)
print(sorted_df_desc)

​sort_values()를 사용한 여러 열 기준 정렬여러 열을 기준으로 정렬할 수 있습니다. 우선순위에 따라 첫 번째 열부터 정렬됩니다.PythonCopy# ''직업''을 기준으로, 같은 직업 내에서 ''나이'' 오름차순 정렬
sorted_df_multi = df.sort_values(by=[''직업'', ''나이''])
print(sorted_df_multi)

​sort_index()를 사용한 인덱스 기준 정렬인덱스를 기준으로 데이터를 정렬할 수 있습니다.PythonCopy# 인덱스 기준으로 정렬
sorted_index_df = df.sort_index()
print(sorted_index_df)

​내림차순으로 인덱스를 정렬하려면 ascending=False를 지정합니다.PythonCopy# 인덱스를 내림차순으로 정렬
sorted_index_df_desc = df.sort_index(ascending=False)
print(sorted_index_df_desc)

​데이터 병합📚데이터 분석 시 여러 개의 데이터를 병합하는 작업이 필요할 때가 많습니다. 판다스에서는 merge(), concat(), join()을 사용해 데이터를 병합할 수 있습니다.merge()를 사용한 데이터프레임 병합SQL의 JOIN과 유사하게 두 데이터프레임을 공통 열을 기준으로 병합합니다.PythonCopy# 예시 데이터프레임 생성
df1 = pd.DataFrame({
''이름'': [''철수'', ''영희'', ''민수''],
''나이'': [25, 30, 22]
},)

df2 = pd.DataFrame({
''이름'': [''철수'', ''영희'', ''지수''],
''직업'': [''학생'', ''회사원'', ''프리랜서'']
},)
# ''이름''을 기준으로 병합
merged_df = pd.merge(df1, df2, on=''이름'')
print(merged_df)

​결과:Plain TextCopy   이름  나이    직업
0  철수   25   학생
1  영희   30  회사원

​다양한 merge() 방식inner (기본값): 공통된 데이터만 병합.outer: 공통되지 않은 데이터도 포함하여 병합, 없는 값은 NaN으로 채움.left: 왼쪽 데이터프레임 기준으로 병합.right: 오른쪽 데이터프레임 기준으로 병합.PythonCopy# outer join을 사용한 병합
merged_df_outer = pd.merge(df1, df2, on=''이름'', how=''outer'')
print(merged_df_outer)

​결과:Plain TextCopy   이름   나이       직업
0  철수  25.0      학생
1  영희  30.0    회사원
2  민수  22.0      NaN
3  지수   NaN  프리랜서

​concat()을 사용한 데이터프레임 연결행(row) 또는 열(column) 단위로 데이터프레임을 연결할 수 있습니다.PythonCopy# 행 단위로 데이터프레임 연결
concat_df = pd.concat([df1, df2], axis=0)
print(concat_df)

​결과:Plain TextCopy    이름    나이       직업
0   철수  25.0       NaN
1   영희  30.0       NaN
2   민수  22.0       NaN
0   철수   NaN      학생
1   영희   NaN    회사원
2   지수   NaN  프리랜서

​열 단위로 연결하고 싶다면 axis=1을 지정하세요.PythonCopy# 열 단위로 데이터프레임 연결
concat_df_axis1 = pd.concat([df1, df2], axis=1)
print(concat_df_axis1)

​join()을 사용한 데이터프레임 병합인덱스를 기준으로 데이터프레임을 병합할 때 사용합니다.PythonCopy# 예시 데이터프레임 생성
df3 = pd.DataFrame({
''직업'': [''학생'', ''회사원'', ''프리랜서''],
''연봉'': [2000, 3000, 4000]
},, index=[''철수'', ''영희'', ''지수''])
# 인덱스를 기준으로 병합
joined_df = df1.set_index(''이름'').join(df3)
print(joined_df)

​결과:Plain TextCopy      나이       직업     연봉
이름
철수     25      학생  2000.0
영희     30    회사원  3000.0
민수     22      NaN     NaN

​요약📚요약데이터 정렬은 sort_values()로 특정 열 기준으로, sort_index()로 인덱스 기준으로 정렬할 수 있습니다.데이터 병합은 merge()를 사용해 공통 열을 기준으로 병합하거나, concat()을 사용해 행 또는 열 단위로 연결할 수 있습니다.인덱스를 기준으로 병합할 때는 join()을 사용할 수 있으며, 다양한 병합 방식(inner, outer, left, right)이 지원됩니다.이제 데이터를 효율적으로 정렬하고, 필요에 따라 병합하여 더 깊이 있는 분석을 진행해보세요! 😊', 11),
('PYTHON', '데이터 변형해보기: 그룹화 및 집계, 피벗테이블', '데이터 변형해보기: 그룹화 및 집계, 피벗테이블📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 4주차/2️⃣데이터 변형해보기: 그룹화 및 집계, 피벗테이블2️⃣데이터 변형해보기: 그룹화 및 집계, 피벗테이블수업 목표판다스에서 그룹화 및 피벗테이블을 생성하는 방법에 대해서 알아봅니다.목차데이터 그룹화 및 집계 피벗테이블 사용하기요약데이터 그룹화 및 집계 📚데이터 그룹화는 데이터를 특정 기준에 따라 그룹으로 나누고, 집계는 각 그룹에 대해 요약 통계를 계산하는 과정입니다. 판다스에서는 groupby()와 집계 함수들을 사용해 이를 손쉽게 수행할 수 있습니다.groupby()를 사용한 그룹화groupby() 함수는 데이터를 특정 열을 기준으로 그룹화합니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수'', ''지수'', ''철수'', ''영희''],
''과목'': [''수학'', ''수학'', ''과학'', ''과학'', ''영어'', ''영어''],
''점수'': [90, 85, 95, 80, 75, 88]
},
df = pd.DataFrame(data)
# ''이름''을 기준으로 그룹화
grouped = df.groupby(''이름'')

​집계 함수 사용하기그룹화한 데이터에 대해 다양한 집계 함수(mean, sum, count 등)를 사용할 수 있습니다.PythonCopy# 각 학생의 평균 점수 계산
mean_scores = grouped[''점수''].mean()
print(mean_scores)

​결과:Plain TextCopy이름
민수    95.0
영희    86.5
철수    82.5
지수    80.0
Name: 점수, dtype: float64

​여러 집계 함수를 동시에 사용할 수도 있습니다.PythonCopy# 각 학생의 점수 합계와 평균 계산
agg_scores = grouped[''점수''].agg([''sum'', ''mean''])
print(agg_scores)

​결과:Plain TextCopy      sum  mean
이름
민수    95  95.0
영희   173  86.5
철수   165  82.5
지수    80  80.0

​여러 열을 기준으로 그룹화하기여러 열을 기준으로 그룹화할 수도 있습니다.PythonCopy# ''이름''과 ''과목''을 기준으로 그룹화하여 점수 합계 계산
grouped_multi = df.groupby([''이름'', ''과목''])[''점수''].sum()
print(grouped_multi)

​결과:Plain TextCopy이름  과목
민수  과학    95
영희  수학    85
      영어    88
철수  수학    90
      영어    75
지수  과학    80
Name: 점수, dtype: int64

​피벗테이블 사용하기📚피벗테이블은 데이터를 요약하는 강력한 도구입니다. 엑셀의 피벗테이블과 유사하며, 특정 기준에 따라 데이터를 재구조화할 수 있습니다.pivot_table() 기본 사용법pivot_table() 함수는 데이터를 요약하고, 특정 기준에 따라 재구조화합니다.PythonCopy# 피벗테이블 생성: ''이름''을 인덱스로, ''과목''을 컬럼으로 하여 점수의 평균 계산
pivot = pd.pivot_table(df, index=''이름'', columns=''과목'', values=''점수'', aggfunc=''mean'')
print(pivot)

​결과:Plain TextCopy과목   과학    수학    영어
이름
민수  95.0   NaN   NaN
영희   NaN  85.0  88.0
철수   NaN  90.0  75.0
지수  80.0   NaN   NaN

​여러 집계 함수 사용하기aggfunc에 여러 집계 함수를 지정하면, 다양한 요약 통계를 얻을 수 있습니다.PythonCopy# 점수의 합계와 평균을 계산하는 피벗테이블 생성
pivot_multi = pd.pivot_table(df, index=''이름'', columns=''과목'', values=''점수'', aggfunc=[''sum'', ''mean''])
print(pivot_multi)

​결과:Plain TextCopy        sum          mean
과목     과학   수학   영어   과학   수학   영어
이름
민수   95.0   NaN   NaN  95.0   NaN   NaN
영희    NaN  85.0  88.0   NaN  85.0  88.0
철수    NaN  90.0  75.0   NaN  90.0  75.0
지수   80.0   NaN   NaN  80.0   NaN   NaN

​margins 옵션을 사용해 전체 합계 추가하기margins=True 옵션을 사용하면, 각 행과 열의 합계가 추가된 피벗테이블을 생성할 수 있습니다.PythonCopy# 각 이름별, 과목별 총합을 포함한 피벗테이블 생성
pivot_with_totals = pd.pivot_table(df, index=''이름'', columns=''과목'', values=''점수'', aggfunc=''sum'', margins=True)
print(pivot_with_totals)

​결과:Plain TextCopy과목      과학    수학    영어     All
이름
민수    95.0   NaN   NaN    95.0
영희     NaN  85.0  88.0   173.0
철수     NaN  90.0  75.0   165.0
지수    80.0   NaN   NaN    80.0
All   175.0  175.0  163.0  513.0

​요약📚요약그룹화는 groupby()를 사용해 데이터를 특정 기준에 따라 그룹으로 나누고, 집계 함수를 사용해 각 그룹에 대한 통계를 계산할 수 있습니다.피벗테이블은 pivot_table()을 사용해 데이터를 요약하고 재구조화할 수 있으며, 여러 집계 함수와 margins 옵션을 통해 전체 합계를 포함할 수 있습니다.그룹화와 피벗테이블은 데이터 분석에서 데이터를 효율적으로 요약하고 패턴을 발견하는 데 매우 유용합니다.이제 데이터를 그룹화하고 피벗테이블을 사용하여 분석을 한 단계 더 깊이 있게 진행해보세요! 😊', 12),
('PYTHON', '데이터 전처리: 결측치 탐지와 다양한 처리 방법', '데이터 전처리: 결측치 탐지와 다양한 처리 방법📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 5주차/1️⃣데이터 전처리: 결측치 탐지와 다양한 처리 방법Made with1️⃣데이터 전처리: 결측치 탐지와 다양한 처리 방법수업 목표불러온 데이터에서 결측치를 찾고 대체하는 방법에 대해서 학습합니다.목차결측치 탐지결측치 처리 방법고급 결측치 처리 방법요약결측치 탐지📚데이터 분석에서 결측치(Missing Values)는 흔히 발생하며, 이를 올바르게 처리하는 것이 중요합니다. 판다스는 결측치를 쉽게 탐지하고 처리할 수 있는 다양한 기능을 제공합니다.isna()와 isnull()로 결측치 탐지isna()와 isnull() 함수는 데이터프레임의 각 요소가 결측치인지 여부를 확인합니다. 두 함수는 동일한 기능을 합니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수'', ''지수''],
''나이'': [25, 30, None, 35],
''직업'': [''학생'', ''회사원'', ''학생'', None]
},
df = pd.DataFrame(data)
# 결측치 여부 확인
print(df.isna())

​결과:Plain TextCopy     이름     나이    직업
0  False  False  False
1  False  False  False
2  False   True  False
3  False  False   True

​sum()을 사용한 결측치 개수 확인결측치의 총 개수를 확인하려면 isna() 또는 isnull()과 sum()을 조합해 사용합니다.PythonCopy# 각 열별 결측치 개수 확인
print(df.isna().sum())

​결과:Plain TextCopy이름    0
나이    1
직업    1
dtype: int64

​결측치 처리 방법📚결측치를 적절하게 처리하는 방법은 데이터의 특성과 분석 목적에 따라 달라집니다. 여기서는 대표적인 처리 방법들을 소개합니다.결측치 제거결측치가 포함된 행이나 열을 삭제할 수 있습니다. dropna() 함수를 사용합니다.PythonCopy# 결측치가 있는 행 제거
df_dropped_rows = df.dropna()
print(df_dropped_rows)

​결과:Plain TextCopy   이름   나이    직업
0  철수  25.0   학생
1  영희  30.0  회사원

​결측치가 있는 열을 제거하려면 axis=1을 지정합니다.PythonCopy# 결측치가 있는 열 제거
df_dropped_columns = df.dropna(axis=1)
print(df_dropped_columns)

​결과:Plain TextCopy   이름
0  철수
1  영희
2  민수
3  지수

​결측치 대체(채우기)결측치를 특정 값으로 대체(채우기)할 수 있습니다. fillna() 함수를 사용합니다.PythonCopy# 결측치를 ''없음''으로 대체
df_filled = df.fillna(''없음'')
print(df_filled)

​결과:Plain TextCopy   이름    나이    직업
0  철수   25.0    학생
1  영희   30.0  회사원
2  민수  없음    학생
3  지수   35.0   없음

​평균, 중앙값, 최빈값 등으로 결측치를 채울 수 있습니다.PythonCopy# ''나이'' 열의 결측치를 평균값으로 대체
df[''나이''] = df[''나이''].fillna(df[''나이''].mean())
print(df)

​결과:Plain TextCopy   이름    나이    직업
0  철수  25.0    학생
1  영희  30.0  회사원
2  민수  30.0    학생
3  지수  35.0   없음

​결측치 보간(Interpolation)결측치를 주변 값들을 기반으로 보간할 수 있습니다. interpolate() 함수를 사용합니다. 특히 시간 데이터를 다룰 때 유용합니다.PythonCopy# 예시 데이터프레임 생성
data = {
''날짜'': pd.date_range(''2023-01-01'', periods=5),
''온도'': [20, 22, None, 24, 25]
},
df2 = pd.DataFrame(data)
# 선형 보간법으로 결측치 채우기
df2[''온도''] = df2[''온도''].interpolate()
print(df2)

​결과:Plain TextCopy         날짜    온도
0 2023-01-01  20.0
1 2023-01-02  22.0
2 2023-01-03  23.0
3 2023-01-04  24.0
4 2023-01-05  25.0

​고급 결측치 처리 방법특정 조건을 기반으로 결측치 처리특정 조건을 기반으로 결측치를 처리할 수도 있습니다. 예를 들어, 다른 열의 값을 기준으로 결측치를 채우는 방법입니다.PythonCopy# ''직업''이 ''학생''인 경우 ''나이''를 20으로 채우기
df.loc[(df[''직업''] == ''학생'') & (df[''나이''].isna()), ''나이''] = 20
print(df)

​결과:Plain TextCopy   이름    나이    직업
0  철수  25.0    학생
1  영희  30.0  회사원
2  민수  20.0    학생
3  지수  35.0   없음

​apply()를 사용한 사용자 정의 함수 적용apply() 함수를 사용해 결측치를 처리하는 사용자 정의 함수를 적용할 수 있습니다.PythonCopy# 예시: ''나이''가 결측치일 경우, 기본값으로 18을 채우는 함수
def fill_missing_age(x):
if pd.isna(x):
return 18
return x

df[''나이''] = df[''나이''].apply(fill_missing_age)
print(df)

​결과:Plain TextCopy   이름    나이    직업
0  철수  25.0    학생
1  영희  30.0  회사원
2  민수  20.0    학생
3  지수  35.0   없음

​요약📚요약결측치 탐지는 isna()와 isnull()을 사용해 수행하며, sum()을 통해 열별 결측치 개수를 확인할 수 있습니다.결측치 처리 방법으로는 행 또는 열 삭제(dropna()), 특정 값으로 채우기(fillna()), 보간법(interpolate()), 조건 기반 처리 및 사용자 정의 함수 적용 등이 있습니다.데이터의 특성과 분석 목적에 따라 적절한 결측치 처리 방법을 선택하는 것이 중요합니다.이제 결측치를 효과적으로 처리하여 더 정확한 분석 결과를 얻어보세요! 😊', 13),
('PYTHON', '데이터 전처리: 이상치 탐지 및 처리', '데이터 전처리: 이상치 탐지 및 처리📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 5주차/2️⃣데이터 전처리: 이상치 탐지 및 처리Made with2️⃣데이터 전처리: 이상치 탐지 및 처리수업 목표데이터의 이상치가 무엇인지 학습합니다.전처리 과정에서 이상치를 처리하는 방법에 대해서 학습합니다.목차이상치(Outlier)란이상치 탐지 방법이상치 처리 방법요약이상치(Outlier)란❗이상치는 데이터의 일반적인 패턴에서 벗어난 값을 의미합니다.

이러한 값들은 데이터 분석에 부정적인 영향을 미칠 수 있기 때문에,
탐지하고 적절히 처리하는 것이 중요합니다!이상치 탐지 방법📚이상치를 탐지하는 방법에는 여러 가지가 있습니다. 여기서는 기술 통계, 시각화, IQR(사분위수 범위)를 사용한 방법을 살펴보겠습니다.기술 통계 기반 이상치 탐지describe() 함수를 사용하여 데이터의 기본 통계량을 확인하고, 이상치를 의심할 수 있습니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''이름'': [''철수'', ''영희'', ''민수'', ''지수'', ''상수''],
''나이'': [25, 30, 22, 35, 120], # 120은 이상치로 의심됨
''점수'': [90, 85, 95, 80, 88]
},
df = pd.DataFrame(data)
# 기술 통계량 확인
print(df[''나이''].describe())

​결과:Plain TextCopycount      5.000000
mean      46.400000
std       41.892848
min       22.000000
25%       25.000000
50%       30.000000
75%       35.000000
max      120.000000
Name: 나이, dtype: float64

​평균(mean)과 표준편차(std)가 큰 차이를 보이는 경우, 또는 최대값(max)이 비정상적으로 높은 경우 이상치를 의심할 수 있습니다.시각화를 사용한 이상치 탐지박스플롯(Box Plot)과 히스토그램을 사용하면 데이터의 분포를 시각적으로 확인할 수 있어, 이상치를 탐지하기 용이합니다.PythonCopyimport matplotlib.pyplot as plt

# 박스플롯으로 이상치 시각화
plt.boxplot(df[''나이''])
plt.title(''나이의 박스플롯'')
plt.show()

​박스플롯의 이상치는 통상적으로 박스(사분위수 범위)의 위아래에 위치한 점으로 표시됩니다.IQR(Interquartile Range)을 사용한 이상치 탐지IQR은 1사분위수(Q1)와 3사분위수(Q3)의 차이로, 이 범위를 벗어나는 데이터를 이상치로 간주할 수 있습니다.PythonCopy# IQR 계산
Q1 = df[''나이''].quantile(0.25)
Q3 = df[''나이''].quantile(0.75)
IQR = Q3 - Q1

# IQR을 이용한 이상치 탐지
lower_bound = Q1 - 1.5 * IQR
upper_bound = Q3 + 1.5 * IQR

outliers = df[(df[''나이''] < lower_bound) | (df[''나이''] > upper_bound)]
print(outliers)

​결과:Plain TextCopy    이름   나이  점수
4  상수  120  88

​120이라는 값이 IQR 범위를 벗어나므로 이상치로 탐지됩니다.이상치 처리 방법📚이상치를 탐지한 후, 데이터의 특성과 분석 목적에 따라 적절히 처리해야 합니다. 대표적인 처리 방법들을 소개합니다.이상치 제거이상치를 데이터프레임에서 제거할 수 있습니다.PythonCopy# 이상치를 제거한 데이터프레임
df_without_outliers = df[(df[''나이''] >= lower_bound) & (df[''나이''] <= upper_bound)]
print(df_without_outliers)

​결과:Plain TextCopy   이름   나이  점수
0  철수  25  90
1  영희  30  85
2  민수  22  95
3  지수  35  80

​이상치를 특정 값으로 대체이상치를 특정 값으로 대체할 수 있습니다. 예를 들어, 해당 열의 중앙값으로 대체할 수 있습니다.PythonCopy# ''나이''의 중앙값으로 이상치 대체
median_age = df[''나이''].median()
df[''나이''] = df[''나이''].apply(lambda x: median_age if x > upper_bound or x < lower_bound else x)
print(df)

​결과:Plain TextCopy   이름   나이  점수
0  철수  25.0  90
1  영희  30.0  85
2  민수  22.0  95
3  지수  35.0  80
4  상수  30.0  88

​120이었던 이상치가 30으로 대체되었습니다.이상치를 그대로 유지이상치가 중요한 분석 포인트가 될 수 있다고 판단되면, 별도의 처리를 하지 않고 그대로 유지할 수도 있습니다.PythonCopy# 이상치를 그대로 유지하는 경우 (처리하지 않음)
print(df)

​이 방법은 분석 목적에 따라 선택적으로 사용됩니다.요약📚요약이상치는 데이터의 일반적인 패턴에서 벗어난 값이며, 분석 결과에 큰 영향을 줄 수 있습니다.탐지 방법으로는 기술 통계량 확인, 시각화(박스플롯, 히스토그램), IQR을 활용한 방법 등이 있습니다.처리 방법으로는 이상치 제거, 특정 값으로 대체, 또는 이상치를 그대로 유지하는 방법이 있습니다.이제 데이터의 이상치를 효과적으로 탐지하고, 적절히 처리하여 분석의 정확도를 높여보세요! 😊Son minsuckSep 25matplotlib 패키지 설치 명령어 추가하면 좋을 것 같습니다.

!pip install matplotlib', 14),
('PYTHON', '데이터 전처리: 데이터 정규화와 표준화 (비선형 변환 포함)', '데이터 전처리: 데이터 정규화와 표준화 (비선형 변환 포함)📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 5주차/3️⃣데이터 전처리: 데이터 정규화와 표준화 (비선형 변환 포함)Made with3️⃣데이터 전처리: 데이터 정규화와 표준화 (비선형 변환 포함)수업 목표데이터 전처리 과정에서의 정규화와 표준화 방법에 대해서 알아봅니다.목차1. 데이터 정규화(Normalization) 📏데이터 표준화(Standardization) 3. 비선형 변환(Non-linear Transformation) 🔄요약1. 데이터 정규화(Normalization) 📏📚정규화(Normalization)는 데이터의 범위를 0과 1 사이로 변환하는 과정입니다. 이는 서로 다른 범위를 가진 데이터를 동일한 스케일로 맞추어 비교하기 쉽게 만듭니다.Min-Max 정규화Min-Max 정규화는 가장 일반적인 정규화 방법으로, 각 데이터를 최소값을 0, 최대값을 1로 변환합니다.PythonCopyimport pandas as pd
from sklearn.preprocessing import MinMaxScaler

# 예시 데이터프레임 생성
data = {
''특성1'': [10, 20, 30, 40, 50],
''특성2'': [1, 2, 3, 4, 5]
},
df = pd.DataFrame(data)
# Min-Max 정규화
scaler = MinMaxScaler()
normalized_df = pd.DataFrame(scaler.fit_transform(df), columns=df.columns)
print(normalized_df)

​결과:Plain TextCopy   특성1  특성2
0   0.0   0.0
1   0.25  0.25
2   0.5   0.5
3   0.75  0.75
4   1.0   1.0

​이 방식으로 각 열의 모든 데이터가 0에서 1 사이의 값으로 변환되었습니다.데이터 표준화(Standardization) 📚표준화(Standardization)는 데이터를 평균이 0, 표준편차가 1이 되도록 변환하는 과정입니다. 이는 정규 분포를 가정한 많은 분석 기법에 유리합니다.Z-점수 표준화Z-점수 표준화는 데이터에서 평균을 빼고 표준편차로 나누어, 모든 데이터가 표준 정규분포(평균 0, 표준편차 1)를 따르도록 만듭니다.PythonCopyfrom sklearn.preprocessing import StandardScaler

# Z-점수 표준화
scaler = StandardScaler()
standardized_df = pd.DataFrame(scaler.fit_transform(df), columns=df.columns)
print(standardized_df)

​결과:Plain TextCopy      특성1      특성2
0 -1.414214 -1.414214
1 -0.707107 -0.707107
2  0.000000  0.000000
3  0.707107  0.707107
4  1.414214  1.414214

​각 열의 데이터가 평균이 0, 표준편차가 1이 되도록 변환되었습니다.3. 비선형 변환(Non-linear Transformation) 🔄📚비선형 변환은 데이터의 비정상적인 분포를 정규 분포에 가깝게 만들기 위해 사용됩니다. 대표적인 방법으로 로그 변환, 제곱근 변환, 박스-콕스 변환 등이 있습니다.로그(Log) 변환로그 변환은 양의 데이터에서 주로 사용되며, 데이터의 분포를 좁히는 데 유용합니다. 특히, 지수 분포를 가진 데이터를 다룰 때 효과적입니다.PythonCopyimport numpy as np

# 로그 변환
df[''특성1_log''] = np.log(df[''특성1''])
print(df)

​결과:Plain TextCopy   특성1  특성2  특성1_log
0    10     1   2.302585
1    20     2   2.995732
2    30     3   3.401197
3    40     4   3.688879
4    50     5   3.912023

​로그 변환 후 데이터의 분포가 평탄해지는 효과를 얻을 수 있습니다.제곱근(Square Root) 변환제곱근 변환은 데이터의 분포를 평탄하게 만들기 위한 또 다른 방법입니다. 특히, 포아송 분포를 가진 데이터에서 사용됩니다.PythonCopy# 제곱근 변환
df[''특성1_sqrt''] = np.sqrt(df[''특성1''])
print(df)

​결과:Plain TextCopy   특성1  특성2  특성1_log  특성1_sqrt
0    10     1   2.302585    3.162278
1    20     2   2.995732    4.472136
2    30     3   3.401197    5.477226
3    40     4   3.688879    6.324555
4    50     5   3.912023    7.071068

​제곱근 변환을 통해 분포가 줄어드는 효과를 얻습니다.박스-콕스(Box-Cox) 변환박스-콕스 변환은 다양한 형태의 데이터 분포를 정규분포에 가깝게 변환하기 위해 사용됩니다. 이 방법은 양수 데이터에서만 사용 가능합니다.PythonCopyfrom scipy.stats import boxcox

# 박스-콕스 변환
df[''특성1_boxcox''], _ = boxcox(df[''특성1''])
print(df)

​결과:Plain TextCopy   특성1  특성2  특성1_log  특성1_sqrt  특성1_boxcox
0    10     1   2.302585    3.162278      2.850350
1    20     2   2.995732    4.472136      3.992679
2    30     3   3.401197    5.477226      4.872105
3    40     4   3.688879    6.324555      5.609646
4    50     5   3.912023    7.071068      6.245548

​박스-콕스 변환을 통해 데이터의 분포가 정규분포에 가까워지는 효과를 얻습니다.요약📚요약정규화(Normalization)는 데이터의 범위를 0과 1 사이로 변환하는 과정으로, 주로 Min-Max 스케일링을 사용합니다.표준화(Standardization)는 데이터를 평균이 0, 표준편차가 1이 되도록 변환하는 과정으로, Z-점수 표준화가 대표적입니다.비선형 변환은 로그, 제곱근, 박스-콕스 변환 등을 통해 비정상적인 데이터 분포를 정규 분포에 가깝게 변환합니다.이제 데이터를 정규화하고 표준화하여 분석에 적합한 상태로 만들어 보세요! 😊Son minsuckSep 25pip install scikit-learn', 15),
('PYTHON', '데이터 전처리: 인코딩 (Encoding)', '데이터 전처리: 인코딩 (Encoding)📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 5주차/4️⃣데이터 전처리: 인코딩 (Encoding)Made with4️⃣데이터 전처리: 인코딩 (Encoding)수업 목표범주형 데이터를 수치형 데이터로 변환하는 과정에 대해서 학습합니다.목차인코딩(Encoding)이란?레이블 인코딩(Label Encoding) 원-핫 인코딩(One-Hot Encoding)차원 축소 인코딩 (Count or Frequency Encoding)순서형 인코딩 (Ordinal Encoding)임베딩(Embedding)요약인코딩(Encoding)이란?📚인코딩(Encoding)은 범주형 데이터(Categorical Data)를 수치형 데이터로 변환하는 과정입니다. 많은 머신러닝 모델은 수치형 데이터만 처리할 수 있기 때문에, 범주형 데이터를 인코딩하는 것이 필수적입니다.레이블 인코딩(Label Encoding) 📚레이블 인코딩은 범주형 데이터를 순서가 있는 숫자로 변환합니다. 각 범주에 고유한 숫자가 할당됩니다.PythonCopyimport pandas as pd
from sklearn.preprocessing import LabelEncoder

# 예시 데이터프레임 생성
data = {''과일'': [''사과'', ''바나나'', ''사과'', ''오렌지'', ''바나나'']},
df = pd.DataFrame(data)
# 레이블 인코딩
label_encoder = LabelEncoder()
df[''과일_인코딩''] = label_encoder.fit_transform(df[''과일''])
print(df)

​결과:Plain TextCopy      과일  과일_인코딩
0     사과       0
1    바나나       1
2     사과       0
3    오렌지       2
4    바나나       1

​사과는 0, 바나나는 1, 오렌지는 2로 인코딩되었습니다.❗레이블 인코딩의 주의점레이블 인코딩은 범주형 데이터에 순서가 있을 때 적합합니다. 순서가 없는 데이터에 사용하면, 모델이 이 값을 크기로 인식해 잘못된 결과를 초래할 수 있습니다.원-핫 인코딩(One-Hot Encoding)📚원-핫 인코딩은 각 범주를 이진 벡터로 변환합니다. 각 범주는 고유한 열을 가지며, 해당하는 열에는 1, 나머지 열에는 0이 할당됩니다.PythonCopy# 원-핫 인코딩
df_one_hot = pd.get_dummies(df[''과일''], prefix=''과일'')
print(df_one_hot)

​결과:Plain TextCopy   과일_바나나  과일_사과  과일_오렌지
0        0        1        0
1        1        0        0
2        0        1        0
3        0        0        1
4        1        0        0

​바나나, 사과, 오렌지 각각이 독립된 열로 변환되었고, 해당하는 위치에 1이 표시됩니다.❗원-핫 인코딩의 장점범주형 데이터에 순서가 없을 때 사용하기 좋습니다. 모델이 범주 간의 순서나 관계를 인식하지 않고 각 범주를 독립적으로 처리할 수 있습니다.차원 축소 인코딩 (Count or Frequency Encoding)📚차원 축소 인코딩은 범주형 데이터가 많을 때 유용합니다. 각 범주를 데이터셋 내에서의 출현 빈도로 인코딩합니다.PythonCopy# 빈도 기반 인코딩
df[''과일_빈도''] = df[''과일''].map(df[''과일''].value_counts())
print(df)

​결과:Plain TextCopy      과일  과일_인코딩  과일_빈도
0     사과       0       2
1    바나나       1       2
2     사과       0       2
3    오렌지       2       1
4    바나나       1       2

​사과와 바나나는 각각 2회, 오렌지는 1회 출현하여 해당 빈도로 인코딩되었습니다.❗주의점이 방법은 범주형 데이터의 빈도가 매우 중요한 경우에 적합하며, 범주의 고유성을 잃을 수 있으므로 주의해서 사용해야 합니다.순서형 인코딩 (Ordinal Encoding)📚순서형 인코딩은 순서가 있는 범주형 데이터를 그 순서에 따라 숫자로 변환하는 방식입니다.PythonCopy# 예시 데이터
data = {''등급'': [''낮음'', ''중간'', ''높음'', ''중간'', ''높음'']},
df = pd.DataFrame(data)
# 순서형 인코딩
order = {''낮음'': 1, ''중간'': 2, ''높음'': 3},
df[''등급_인코딩''] = df[''등급''].map(order)
print(df)

​결과:Plain TextCopy    등급  등급_인코딩
0  낮음       1
1  중간       2
2  높음       3
3  중간       2
4  높음       3

​낮음은 1, 중간은 2, 높음은 3으로 인코딩되었습니다.❗사용 예시순서형 인코딩은 만족도(낮음, 중간, 높음), 등급(A, B, C) 등 순서가 중요한 경우에 적합합니다.임베딩(Embedding)📚임베딩은 딥러닝에서 주로 사용되며, 범주형 데이터를 벡터 공간에 매핑하여 변환합니다. 이는 특히 고차원 범주형 데이터에 유용합니다.❗임베딩의 장점원-핫 인코딩보다 차원 축소와 메모리 절약 효과가 있으며, 범주 간의 내재된 관계를 학습할 수 있습니다.임베딩은 주로 텍스트 데이터에서 단어를 벡터로 변환할 때 사용되며, Keras 등의 라이브러리에서 쉽게 구현할 수 있습니다.요약📚요약인코딩은 범주형 데이터를 수치형 데이터로 변환하는 과정으로, 머신러닝 모델에서 데이터를 처리하기 위해 필수적입니다.레이블 인코딩은 순서가 있는 범주형 데이터에 적합하며, 원-핫 인코딩은 순서가 없는 범주형 데이터에 사용됩니다.빈도 인코딩은 범주의 출현 빈도를 사용하고, 순서형 인코딩은 순서가 중요한 범주형 데이터에 유용합니다.임베딩은 딥러닝에서 고차원 범주형 데이터를 처리할 때 주로 사용됩니다.이제 적절한 인코딩 기법을 사용하여 데이터 전처리를 완료하고, 모델 학습의 기초를 다져보세요! 😊', 16),
('PYTHON', '판다스 심화: 멀티 인덱스와 복합 인덱스', '판다스 심화: 멀티 인덱스와 복합 인덱스📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 6주차/1️⃣판다스 심화: 멀티 인덱스와 복합 인덱스Made with1️⃣판다스 심화: 멀티 인덱스와 복합 인덱스수업 목표판다스의 멀티 인덱스와 복합 인덱스에 대해서 학습합니다.다차원 데이터의 효과적인 관리 방법에 대해서 학습합니다.목차멀티 인덱스(MultiIndex)란?멀티 인덱스 생성하기멀티 인덱스 데이터 접근하기복합 인덱스(MultiIndex) 활용멀티 인덱스의 응용요약멀티 인덱스(MultiIndex)란?📚멀티 인덱스(MultiIndex)는 하나 이상의 인덱스를 사용하여 데이터프레임의 행과 열을 구조화하는 방법입니다. 이는 다차원 데이터를 보다 효율적으로 관리하고 분석할 수 있게 해줍니다.멀티 인덱스 생성하기set_index()로 멀티 인덱스 설정여러 열을 사용해 멀티 인덱스를 설정할 수 있습니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''도시'': [''서울'', ''서울'', ''부산'', ''부산''],
''년도'': [2021, 2022, 2021, 2022],
''인구수'': [9700000, 9720000, 3400000, 3450000]
},
df = pd.DataFrame(data)
# ''도시''와 ''년도''를 멀티 인덱스로 설정
df_multi_index = df.set_index([''도시'', ''년도''])
print(df_multi_index)

​결과:Plain TextCopy          인구수
도시   년도
서울  2021  9700000
     2022  9720000
부산  2021  3400000
     2022  3450000

​도시와 년도가 인덱스로 설정되어, 데이터가 더 구조화된 형태로 보입니다.pd.MultiIndex.from_tuples()로 멀티 인덱스 생성from_tuples()를 사용해 튜플로 구성된 멀티 인덱스를 생성할 수도 있습니다.PythonCopy# 멀티 인덱스를 튜플로 직접 생성
index = pd.MultiIndex.from_tuples([(''서울'', 2021), (''서울'', 2022), (''부산'', 2021), (''부산'', 2022)], names=[''도시'', ''년도''])
# 데이터프레임에 적용
df_multi_index = pd.DataFrame({''인구수'': [9700000, 9720000, 3400000, 3450000]},, index=index)
print(df_multi_index)

​결과:Plain TextCopy          인구수
도시   년도
서울  2021  9700000
     2022  9720000
부산  2021  3400000
     2022  3450000

​멀티 인덱스 데이터 접근하기loc[]을 사용한 데이터 접근loc[]을 사용해 멀티 인덱스에서 특정 데이터를 선택할 수 있습니다.PythonCopy# 특정 인덱스의 데이터 선택
print(df_multi_index.loc[''서울''])

​결과:Plain TextCopy        인구수
년도
2021  9700000
2022  9720000

​하위 레벨까지 지정하여 데이터를 더 구체적으로 접근할 수도 있습니다.PythonCopy# ''서울''의 2021년 데이터 선택
print(df_multi_index.loc[(''서울'', 2021)])

​결과:Plain TextCopy인구수    9700000
Name: (서울, 2021), dtype: int64

​슬라이싱(Slicing)으로 데이터 접근멀티 인덱스는 슬라이싱을 통해 특정 구간의 데이터를 쉽게 선택할 수 있습니다.PythonCopy# 부산의 모든 데이터를 선택
df_multi_index = df_multi_index.sort_index()
print(df_multi_index.loc[''부산'':''부산''])

​결과:Plain TextCopy          인구수
도시   년도
부산  2021  3400000
     2022  3450000

​xs()를 사용한 멀티 인덱스 교차 선택xs()는 특정 레벨에서 데이터를 선택하거나, 레벨을 넘어서 데이터를 선택할 때 유용합니다.PythonCopy# ''도시'' 레벨에서 ''서울''의 데이터를 선택
print(df_multi_index.xs(''서울'', level=''도시''))

​결과:Plain TextCopy        인구수
년도
2021  9700000
2022  9720000

​복합 인덱스(MultiIndex) 활용인덱스 정렬 및 정렬된 상태 확인멀티 인덱스를 사용한 데이터프레임은 정렬된 상태로 관리하는 것이 일반적입니다. sort_index()로 인덱스를 정렬할 수 있습니다.PythonCopy# 멀티 인덱스 정렬
df_sorted = df_multi_index.sort_index()
print(df_sorted)

​unstack()과 stack()으로 인덱스 변환unstack()은 멀티 인덱스를 열로 변환합니다. 반대로 stack()은 열을 인덱스로 변환합니다.PythonCopy# 멀티 인덱스를 열로 변환 (unstack)
df_unstacked = df_multi_index.unstack(level=''년도'')
print(df_unstacked)

​결과:Plain TextCopy         인구수
년도      2021      2022
도시
서울   9700000  9720000
부산   3400000  3450000

​*stack()**을 사용하면, 다시 인덱스로 변환할 수 있습니다.PythonCopy# 다시 인덱스로 변환 (stack)
df_stacked = df_unstacked.stack()
print(df_stacked)

​멀티 인덱스의 응용그룹화(Grouping)와 함께 사용📚멀티 인덱스는 그룹화와 함께 사용할 때 더 강력해집니다. 그룹화한 데이터를 멀티 인덱스로 변환하여 복잡한 분석을 수행할 수 있습니다.PythonCopy# 데이터프레임 생성
data = {
''도시'': [''서울'', ''서울'', ''부산'', ''부산'', ''서울'', ''부산''],
''년도'': [2021, 2022, 2021, 2022, 2021, 2022],
''인구수'': [9700000, 9720000, 3400000, 3450000, 9800000, 3500000],
''소득'': [60000, 62000, 45000, 46000, 63000, 47000]
},
df = pd.DataFrame(data)
# ''도시''와 ''년도''를 기준으로 그룹화하여 평균 계산
grouped_df = df.groupby([''도시'', ''년도'']).mean()
print(grouped_df)

​결과:Plain TextCopy             인구수      소득
도시  년도
부산  2021  3400000  45000
     2022  3450000  46500
서울  2021  9750000  61500
     2022  9720000  62000

​요약📚요약멀티 인덱스(MultiIndex)는 하나 이상의 인덱스를 사용하여 다차원 데이터를 효율적으로 관리하는 방법입니다.멀티 인덱스는 set_index()나 from_tuples()를 사용해 생성할 수 있으며, loc[], xs(), 슬라이싱 등을 통해 데이터를 선택할 수 있습니다.복합 인덱스를 사용하면 데이터를 정렬하거나, unstack()과 stack()을 통해 인덱스를 변환하는 작업이 용이합니다.멀티 인덱스는 그룹화와 같은 복잡한 데이터 분석 작업에도 유용하게 사용됩니다.이제 멀티 인덱스를 활용하여 더 복잡하고 깊이 있는 데이터 분석을 진행해보세요! 😊', 17),
('PYTHON', '판다스 심화: 데이터프레임 구조화 다시하기와 크기 조정하기', '판다스 심화: 데이터프레임 구조화 다시하기와 크기 조정하기📕인공지능을 위한 파이썬 라이브러리/📘인공지능을 위한 파이썬 라이브러리 - 6주차/2️⃣판다스 심화: 데이터프레임 구조화 다시하기와 크기 조정하기Made with2️⃣판다스 심화: 데이터프레임 구조화 다시하기와 크기 조정하기수업 목표판다스에서 데이터를 원하는 형태로 재구성하고 크기를 조정하는 방법에 대해 학습합니다.목차데이터프레임 구조화 다시하기데이터프레임 크기 조정하기요약데이터프레임 구조화 다시하기📚데이터프레임의 구조를 재조정하여, 데이터를 원하는 형태로 변형할 수 있습니다. 주요 작업으로는 피벗(pivot), 변경(melt), 스택(stack)과 언스택(unstack)이 있습니다.pivot()을 사용한 피벗 테이블 생성pivot() 함수는 열 데이터를 행 또는 열로 이동시켜 새로운 데이터프레임을 만듭니다. 이는 데이터를 재구성하고 분석하는 데 매우 유용합니다.PythonCopyimport pandas as pd

# 예시 데이터프레임 생성
data = {
''날짜'': [''2023-01-01'', ''2023-01-02'', ''2023-01-01'', ''2023-01-02''],
''도시'': [''서울'', ''서울'', ''부산'', ''부산''],
''온도'': [2, 3, 6, 7],
''습도'': [55, 60, 80, 85]
},
df = pd.DataFrame(data)
# ''도시''를 기준으로 ''날짜''를 인덱스로, ''온도''를 값으로 하는 피벗 테이블 생성
pivot_df = df.pivot(index=''날짜'', columns=''도시'', values=''온도'')
print(pivot_df)

​결과:Plain TextCopy도시        부산  서울
날짜
2023-01-01  6  2
2023-01-02  7  3

​날짜를 인덱스로, 도시를 열로 하여 각 온도 값을 피벗 테이블로 변환했습니다.melt()를 사용한 데이터 구조 해체melt() 함수는 피벗된 데이터를 다시 긴 형식(long format)으로 변환할 때 사용됩니다. 이는 여러 열을 하나의 열로 통합하는 데 유용합니다.PythonCopy# 데이터프레임 구조 해체 (melt)
melted_df = pd.melt(df, id_vars=[''날짜'', ''도시''], value_vars=[''온도'', ''습도''])
print(melted_df)

​결과:Plain TextCopy          날짜  도시  variable  value
0  2023-01-01  서울     온도      2
1  2023-01-02  서울     온도      3
2  2023-01-01  부산     온도      6
3  2023-01-02  부산     온도      7
4  2023-01-01  서울     습도     55
5  2023-01-02  서울     습도     60
6  2023-01-01  부산     습도     80
7  2023-01-02  부산     습도     85

​온도와 습도 열이 하나의 열(variable)로 통합되어 melt()되었습니다.stack()과 unstack()을 사용한 데이터 변환stack()은 열 데이터를 인덱스의 하위 레벨로 이동시키고, unstack()은 그 반대 작업을 수행합니다. 이는 멀티 인덱스 데이터프레임에서 유용합니다.PythonCopy# ''도시'' 레벨을 인덱스로 스택(stack)
stacked_df = pivot_df.stack()
print(stacked_df)

​결과:Plain TextCopy날짜          도시
2023-01-01  부산    6
            서울    2
2023-01-02  부산    7
            서울    3
dtype: int64

​도시가 인덱스로 변환되었습니다.PythonCopy# 다시 언스택(unstack)하여 원래 구조로 복원
unstacked_df = stacked_df.unstack()
print(unstacked_df)

​결과는 원래의 피벗 테이블 형태로 돌아옵니다.데이터프레임 크기 조정하기📚데이터프레임의 크기를 조정하는 방법에는 행과 열의 추가, 삭제, 데이터 병합 등이 있습니다. 이를 통해 데이터를 분석하기에 적합한 형태로 조정할 수 있습니다.행과 열 추가하기새로운 열을 추가할 때는 새로운 데이터를 할당하면 됩니다. 예를 들어, df[''새로운 열''] = 값의 형태로 추가할 수 있습니다.PythonCopy# 새로운 열 추가
df[''날씨''] = [''맑음'', ''흐림'', ''맑음'', ''흐림'']
print(df)

​결과:Plain TextCopy          날짜  도시  온도  습도  날씨
0  2023-01-01  서울    2   55  맑음
1  2023-01-02  서울    3   60  흐림
2  2023-01-01  부산    6   80  맑음
3  2023-01-02  부산    7   85  흐림

​새로운 열(날씨)이 추가되었습니다.행과 열 삭제하기행과 열 삭제는 drop() 함수를 사용합니다. axis=0은 행을, axis=1은 열을 삭제합니다.PythonCopy# ''습도'' 열 삭제
df_dropped = df.drop(columns=[''습도''])
print(df_dropped)

​결과:Plain TextCopy          날짜  도시  온도  날씨
0  2023-01-01  서울    2  맑음
1  2023-01-02  서울    3  흐림
2  2023-01-01  부산    6  맑음
3  2023-01-02  부산    7  흐림

​습도 열이 삭제되었습니다.PythonCopy# 특정 행 삭제 (예: 첫 번째 행)
df_dropped_row = df.drop(index=0)
print(df_dropped_row)

​결과:Plain TextCopy          날짜  도시  온도  습도  날씨
1  2023-01-02  서울    3   60  흐림
2  2023-01-01  부산    6   80  맑음
3  2023-01-02  부산    7   85  흐림

​첫 번째 행이 삭제되었습니다.데이터 병합하기데이터프레임을 병합할 때는 concat()과 merge()를 사용합니다. 이들은 데이터를 추가하거나 병합하는 데 사용됩니다.PythonCopy# 새로운 데이터프레임 생성
data2 = {
''날짜'': [''2023-01-03'', ''2023-01-04''],
''도시'': [''서울'', ''부산''],
''온도'': [5, 8],
''습도'': [70, 75],
''날씨'': [''맑음'', ''흐림'']
},
df2 = pd.DataFrame(data2)
# 행을 기준으로 데이터프레임 병합 (concat)
merged_df = pd.concat([df, df2], ignore_index=True)
print(merged_df)

​결과:Plain TextCopy          날짜  도시  온도  습도  날씨
0  2023-01-01  서울    2   55  맑음
1  2023-01-02  서울    3   60  흐림
2  2023-01-01  부산    6   80  맑음
3  2023-01-02  부산    7   85  흐림
4  2023-01-03  서울    5   70  맑음
5  2023-01-04  부산    8   75  흐림

​새로운 데이터가 병합되어 데이터프레임의 크기가 확장되었습니다.요약📚요약데이터프레임 구조화 다시하기에는 pivot(), melt(), stack(), unstack() 등이 사용되며, 이를 통해 데이터를 다양한 방식으로 변형하고 재구성할 수 있습니다.크기 조정에는 새로운 행과 열을 추가하거나, drop()을 사용해 삭제하는 방법이 있으며, concat()과 merge()를 통해 데이터를 병합할 수 있습니다.이러한 기능들은 데이터를 더 잘 분석할 수 있도록 적절한 형태로 변환하고 조정하는 데 필수적입니다.이제 판다스를 활용하여 데이터프레임을 원하는 형태로 구조화하고 크기를 조정하여 분석을 더욱 효과적으로 진행해보세요! 😊', 18),
('ML', '1강. 강의 소개', ' 1강. 강의 소개📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 1주차/📕 1강. 강의 소개Made with📕 1강. 강의 소개[수업 목표]강의 소개 및 머신러닝 기본 개념을 알아봅시다[목차]01. 강좌 소개🤔 딥러닝이 대세라던데, 왜 머신러닝부터 시작할까요?02. 머신러닝 소개💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 강좌 소개✔️이번 머신러닝 강좌목표와 커리큘럼에 대해 안내합니다.1) 강좌 목표머신러닝의 정의, 주요 개념, 다양한 알고리즘 학습개념적 이해와 실습을 통한 심화 학습Scikit-learn, TensorFlow, Keras 등 파이썬 라이브러리 활용🤖 인공지능, 머신러닝, 딥러닝? 뭐가 다른 걸까요?인공지능(AI): 사람처럼 생각하고 행동하는 기술 🧠머신러닝(ML): 데이터를 통해 스스로 배우고 똑똑해지는 기술 🎓딥러닝(DL): 이미지 인식, 자연어 처리 등에 뛰어난 머신러닝의 한 분야 🖼️🧮 수학? 걱정 마세요!수학 공식을 몰라도 괜찮아요! 이 강의에서는 머신러닝의 작동 원리와 코딩에 집중합니다. 필요한 수학 개념은 그때그때 함께 학습하면 됩니다! 😊2) 강좌 커리큘럼머신러닝 정의 및 개념 다양한 머신러닝 알고리즘데이터셋 활용과 실습실무 데이터 프로젝트💡이번 강좌에서는 파이썬 기본 개념이 필요합니다.
강의 뒤쪽에서 나오는 어려운 문법들은 강좌 내에서 설명 후에 실습을 진행할 예정이니 걱정하지 않으셔도 됩니다!강의 뒤쪽에서 나오는 어려운 문법들은 강좌 내에서 설명 후에 실습을 진행할 예정이니 걱정하지 않으셔도 됩니다!﻿​🤔 딥러닝이 대세라던데, 왜 머신러닝부터 시작할까요?딥러닝의 기초는 탄탄한 머신러닝 지식입니다. 기초를 튼튼히 쌓아야 딥러닝도 쉽게 이해할 수 있죠! 차근차근 기초부터 다지면, 딥러닝 정복도 문제없어요! 💪02. 머신러닝 소개✔️머신러닝에 대한 기본적인 개념 및 역사등을 소개합니다1)머신러닝 소개☑️ 머신러닝의 정의컴퓨터가 명시적으로 프로그래밍 되지 않아도 데이터를 통해 학습하고, 예측할 수 있도록 하는 기능대량의 데이터를 알고리즘에 입력하여 학습과정을 통해 모델을 생성하고 예측을 수행기존 프로그램은 명시적으로 작성된 규칙과 논리에 따라 동작한다는것에서 머신러닝과의 차이가 있습니다!기존 프로그램은 명시적으로 작성된 규칙과 논리에 따라 동작한다는것에서 머신러닝과의 차이가 있습니다!﻿​전통적인 프로그래밍:규칙과 논리를 프로그래머가 직접 정의 🖥️명시적 명령과 조건문을 통해 문제 해결 📝머신러닝:데이터를 이용해 패턴과 규칙을 스스로 학습 📊예측 모델을 통해 새로운 데이터에 대한 결과 도출 🔮프로그램이 아닌 모델이 중심 ⚙️☑️ 머신러닝의 구성요소데이터셋 : 모델을 학습시키기 위한 데이터 모음특징(Feature) : 데이터셋에서 모델이 학습할 수 있는 개별 속성레이블(label) : 예측하고자 하는 목표 변수훈련 : 모델이 데이터를 통해 학습하는 과정테스트 : 학습된 모델의 성능을 평가하는 과정2)머신러닝의 역사 및 발전 이유 ☑️ 머신러닝의 역사1950s : 앨런 튜링의 “튜링테스트”와 퍼셉트론의 개발1980s -90s : 백프로파게이션 알고리즘의 등장2000s :  대규모 데이터와 고성능 컴퓨팅 자원의 발전2010s - : 딥러닝의 부상과 다양한 산업에 적용☑️ 최근 머신러닝의 발전 이유데이터의 폭발적 증가컴퓨팅 파워의 향상알고리즘의 발전오픈소스 커뮤니티와 생태계의 발전🥳이 강좌에서는 파이썬을 활용한 머신러닝의 기본 개념과 실습을 다룰 예정입니다!
머신러닝의 기본적인 원리부터 실습을 통해 직접 모델 구축/평가하는 방법까지 모두 함께 배워봅시다!', 1),
('ML', '2강. 머신러닝 개요와 구성요소', ' 2강. 머신러닝 개요와 구성요소📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 1주차/📕 2강. 머신러닝 개요와 구성요소Made with📕 2강. 머신러닝 개요와 구성요소[수업 목표]머신러닝의 기본적인 구성요소, 학습과정을 알려 드립니다.다양한 머신러닝의 학습방법을 소개합니다.[목차]01. 머신러닝 구성 요소02. 머신러닝의 학습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 머신러닝 구성 요소✔️머신러닝의 필수 구성요소를 학습합니다1) 머신러닝의 구성요소☑️ 데이터셋머신러닝은 데이터셋을 통해서 학습하며, 일반적으로 데이터셋은 입력/출력 데이터로 구성됩니다.입력 데이터 : 모델이 학습할 수 있는 정보출력 데이터(레이블) : 모델이 예측해야 하는 목표 값☑️ Feature(특징)데이터에서 모델이 학습할 수 있는 개별 속성주택가격예측을 예시로 들 경우 주택의 크기, 위치, 방의 개수 등이 Feature에 해당합니다주택가격예측을 예시로 들 경우 주택의 크기, 위치, 방의 개수 등이 Feature에 해당합니다﻿​☑️ 레이블예측하고자 하는 목표 변수지도학습 모델에서는 레이블이 있는 데이터셋을 이용하여 모델을 학습 시킵니다☑️ 모델데이터의 특징으로 부터 정답(레이블)을 예측할 수 있는 지식을 학습할 수 있는 프로그램/함수입력데이터와 출력 데이터간의 관계를 학습하여 새로운 데이터에 대한 예측 수행☑️ 학습모델이 데이터를 통해서 패턴을 인식하고, 이를 기반으로 예측을 수행 할 수 있도록 함수 내의 가중치를 조정하는 과정02. 머신러닝의 학습✔️머신러닝의 학습과정과 다양한 학습 종류에 대해서 학습합니다1) 머신러닝의 학습 과정머신러닝 학습 과정ALT데이터 수집 : 모델을 학습시키기 위한 필요 데이터 수집데이터 전처리 : 결측값 처리, 이상치 제거, 정규화 등등Feature 선택 : 중요 feature(특징)을 선택하고 불필요한 피쳐를 제거하여 학습효율 높임모델 선택 : 문제에 적합한 머신러닝 알고리즘을 선택모델 훈련 : 트레이닝 데이터셋을 사용해서 모델을 학습시킴모델 평가 : 테스트 데이터셋을 사용하여 모델 성능을 평가모델 배포 : 학습된 모델을 실제 환경에 배포하여 예측 수행2) 학습 방법☑️ 지도 학습 (Supervised Learning)레이블이 있는 데이터셋을 이용하여 모델을 학습시키는 방법회귀(Regression) : 연속적인 값을 예측하는 문제ex : 주택 가격 예측, 주식 가격예측 : 주택 가격 예측, 주식 가격예측﻿​분류(Classification) : 이산적인 값을 예측하는 문제ex : 이메일 스팸 필터링, 이미지 분류 : 이메일 스팸 필터링, 이미지 분류﻿​☑️ 비지도 학습 (Unsupervised Learning)레이블이 없는 데이터셋을 이용하려 모델을 학습시키는 방법군집화(Clustering) : 데이터를 유사한 그룹으로 묶는 문제 ex : 고객 세분화, 이미지 세그멘테이션 : 고객 세분화, 이미지 세그멘테이션﻿​차원축소 (Dimensionality Reduction) : 고차원 데이터를 저차원으로 변환ex : PCA, t-SNE : PCA, t-SNE﻿​☑️ 앙상블 학습 (Ensemble Learning)여러개의 머신러닝 모델을 결합하여 더 나은 성능을 얻는 방법배깅(Bagging) : 여러 모델을 독립적으로 학습시키고, 예측을 평균내거나 다수결 투표로 최종 예측ex : 랜덤포레스트 : 랜덤포레스트﻿​부스팅(Boosting) : 여러 모델을 순차적으로 학습시키고, 이전 모델의 오차를 보완하여 최종 예측을 수행ex : 그래디언트 부스팅, XGboost : 그래디언트 부스팅, XGboost﻿​스태킹(Stacking) : 여러 모델을 학습시키고 예측결과를 새로운 데이터로 사용하여 메타 모델을 학습⚠️ 과적합이란?과적합(Overfitting):모델이 훈련 데이터에 지나치게 적응하여 새로운 데이터에 대한 일반화 성능이 떨어지는 현상입니다. 모델이 너무 복잡하여 훈련 데이터의 노이즈까지 학습해버리는 경우 발생합니다. 📉방지 방법:더 많은 데이터 수집 📊교차 검증(Cross-validation) 사용 🔄정규화(Regularization) 기법 적용 🔧간단한 모델 사용 🚀🚫 머신러닝에서는 "절대로 좋다"라는 개념이 없다!모델의 성능:모든 데이터셋에 대해 완벽한 성능을 보이는 모델은 없습니다. 각 모델은 특정 데이터와 상황에서만 최적의 성능을 발휘합니다. 🎯트레이드오프:모델의 복잡성과 일반화 성능 사이에는 항상 균형이 필요합니다. 너무 복잡한 모델은 과적합의 위험이 있고, 너무 단순한 모델은 충분히 학습하지 못할 수 있습니다. ⚖️', 2),
('ML', '3강. Anaconda 설치 및 라이브러리 소개', ' 3강. Anaconda 설치 및 라이브러리 소개📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 1주차/📕 3강. Anaconda 설치 및 라이브러리 소개Made with📕 3강. Anaconda 설치 및 라이브러리 소개[수업 목표]Anaconda 를 설치합니다머신러닝에서 사용하는 주요 라이브러리 기능을 배우고 실습합니다[목차]01. Anaconda 소개 및 설치02. 주요 라이브러리 소개💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. Anaconda 소개 및 설치✔️Anaconda가 무엇인지 알아보고, 같이 설치를 진행해 봅시다1) Anaconda 소개☑️ Anaconda 란데이터 과학 및 머신러닝을 위한 통합 개발 환경(IDE)다양한 데이터 과학 도구와 라이브러리를 포함하고 있어, 데이터 분석 및 머신러닝 작업을 쉽게 시작가능Anaconda는 Python과 R 프로그래밍 언어를 지원2) Anaconda 설치☑️ Anaconda 설치 방법Anaconda 다운로드: Anaconda 공식 웹사이트에서 운영 체제에 맞는 설치 파일을 다운로드 합니다설치 파일 실행: 다운로드한 설치 파일을 실행하여 설치를 진행 합니다환경 변수 설정: 설치 과정에서 "Add Anaconda to my PATH environment variable" 옵션을 선택하여 환경 변수를 설정 합니다설치 완료: 설치가 완료되면 Anaconda Navigator와 Anaconda Prompt를 사용할 수 있습니다.☑️ Anaconda 설치 확인Anaconda 설치 확인 {5px},Anaconda 설치 확인 ﻿​PythonCopy# Anaconda 버전 확인
conda --version
​☑️ Anaconda 주요 기능패키지 관리: conda 명령어를 사용하여 패키지를 설치, 업데이트, 제거할 수 있습니다.환경 관리: 가상 환경을 생성하고 관리할 수 있습니다.Jupyter Notebook: 웹 기반의 대화형 개발 환경을 제공합니다.Spyder: 통합 개발 환경(IDE)으로, 코드 편집기와 디버거를 포함합니다.가상환경 생성 및 관리 {5px},가상환경 생성 및 관리 ﻿​PythonCopy# 새로운 가상 환경 생성
conda create --name myenv

# 가상 환경 활성화
conda activate myenv

# 가상 환경 비활성화
conda deactivate

# 가상 환경 제거
conda remove --name myenv --all
​02. 주요 라이브러리 소개✔️머신러닝 강의에서 사용하는 주요 라이브러리를 소개드리고 간단한 실습을 진행해 봅시다1) Numpy 라이브러리 소개 ☑️ Numpy 라이브러리란?수치 계산을 위한 Python 라이브러리Numpy는 다차원 배열 객체인 ndarray를 제공벡터화 연산을 통해 빠르고 효율적인 수치 계산을 수행 가능☑️ Numpy 설치Numpy 설치 {5px},Numpy 설치 ﻿​PythonCopy# conda를 사용하여 Numpy 설치
conda install numpy

# pip를 사용하여 Numpy 설치
pip install numpy
​라이브러리는 conda 또는pip를 사용하여 설치할 수 있습니다. { conda },라이브러리는 conda 또는pip를 사용하여 설치할 수 있습니다.﻿​☑️ Numpy 주요 기능다차원 배열 객체(ndarray): 다차원 배열을 생성하고 조작할 수 있습니다.벡터화 연산: 배열 간의 연산을 빠르게 수행할 수 있습니다.수학 함수: 다양한 수학 함수를 제공합니다.☑️ Numpy 예제다차원 배열을 생성하고 기본 연산을 수행하는 예제를 실습해 봅시다Numpy 예제 {5px},Numpy 예제 ﻿​PythonCopyimport numpy as np

# 1차원 배열 생성
arr1 = np.array([1, 2, 3, 4, 5])
# 2차원 배열 생성
arr2 = np.array([[1, 2, 3], [4, 5, 6]])
# 배열의 크기 확인
print(arr1.shape)
print(arr2.shape)
# 배열의 데이터 타입 확인
print(arr1.dtype)
print(arr2.dtype)
# 배열 간의 연산
arr_sum = arr1 + arr1
arr_product = arr1 * arr1

print(arr_sum)
print(arr_product)
​2) Pandas 라이브러리 소개☑️ Pandas 라이브러리란?데이터 조작 및 분석을 위한 Python 라이브러리데이터 프레임(DataFrame)이라는 구조를 사용하여 데이터를 효율적으로 관리하고 조작 가능이 데이터 프레임이라는 구조 덕에 테이블 형식의 데이터를 다루는 데 매우 유용 합니다이 데이터 프레임이라는 구조 덕에 테이블 형식의 데이터를 다루는 데 매우 유용 합니다﻿​☑️ Pandas 설치Pandas 설치 {5px},Pandas 설치 ﻿​PythonCopy# conda를 사용하여 Pandas 설치
conda install pandas

# pip를 사용하여 Pandas 설치
pip install pandas
​☑️ Pandas 주요 기능데이터 프레임(DataFrame): 테이블 형식의 데이터를 생성하고 조작할 수 있습니다.데이터 불러오기 및 저장: CSV, 엑셀, SQL 등 다양한 형식의 데이터를 불러오고 저장할 수 있습니다.데이터 조작: 필터링, 그룹화, 병합 등 다양한 데이터 조작 기능을 제공합니다.☑️ Pandas 예제데이터프레임을 생성하고 기본 조작을 수행하는 예제를 실습해 봅시다Pandas 예제 {5px},Pandas 예제 ﻿​PythonCopyimport pandas as pd

# 데이터 프레임 생성
data = {''Name'': [''Alice'', ''Bob'', ''Charlie''],
''Age'': [25, 30, 35],
''City'': [''New York'', ''Los Angeles'', ''Chicago'']},
df = pd.DataFrame(data)
# 데이터 프레임의 첫 5행 출력
print(df.head())
# 데이터 프레임의 크기 확인
print(df.shape)
# 데이터 프레임의 컬럼명 확인
print(df.columns)
# 데이터 프레임의 데이터 타입 확인
print(df.dtypes)
# 특정 컬럼 선택
print(df[''Name''])
# 조건에 맞는 행 선택
print(df[df[''Age''] > 30])
​3) Scikit-learn 라이브러리 소개☑️ Scikit-learn 라이브러리란?머신러닝을 위한 Python 라이브러리다양한 머신러닝 알고리즘을 제공하며, 데이터 전처리, 모델 학습, 평가 및 예측을 위한 도구를 포함☑️ Scikit-learn 설치Scikit-learn 설치{5px},Scikit-learn 설치﻿​PythonCopy# conda를 사용하여 Scikit-learn 설치
conda install scikit-learn

# pip를 사용하여 Scikit-learn 설치
pip install scikit-learn
​☑️ Scikit-learn  주요 기능데이터 전처리: 스케일링, 인코딩, 결측값 처리 등 다양한 데이터 전처리 기능을 제공합니다.모델 학습: 회귀, 분류, 군집화 등 다양한 머신러닝 알고리즘을 제공합니다.모델 평가: 교차 검증, 성능 평가 지표 등 모델 평가를 위한 도구를 제공합니다.모델 예측: 학습된 모델을 사용하여 새로운 데이터에 대한 예측을 수행할 수 있습니다.☑️ Scikit-learn  예제Scikit-learn 예제{5px},Scikit-learn 예제﻿​PythonCopyfrom sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# 데이터 생성
X = [[1], [2], [3], [4], [5]]
y = [1, 4, 9, 16, 25]
# 데이터 분할 (훈련 데이터와 테스트 데이터)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 회귀 모델 생성 및 학습
model = LinearRegression()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 모델 평가
mse = mean_squared_error(y_test, y_pred)
print(f''Mean Squared Error: {mse},'')
​', 3),
('ML', '4강. Jupyter Notebook 사용해보기', ' 4강. Jupyter Notebook 사용해보기📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 1주차/📕 4강. Jupyter Notebook 사용해보기📕 4강. Jupyter Notebook 사용해보기[수업 목표]Jupyter Notebook 사용해보기![목차]Jupyter Notebook이란?💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t Jupyter Notebook이란?✔️Jupyter Notebook이 무엇인지 알아봅시다.1) Jupyter Notebook 소개☑️ Jupyter Notebook이란Jupyter Notebook은 데이터 과학자, 연구자, 교육자들이 널리 사용하는 오픈 소스 웹 애플리케이션입니다. 이를 통해 사용자는 실시간으로 코드를 작성하고 실행하며, 그 결과를 시각적으로 확인하고, 문서화할 수 있습니다.Anaconda를 설치하면 자동으로 설치됩니다!2) Jupyter Notebook 사용하기☑️ Jupyter Notebook 사용법환경 설정!가상환경 만들기conda create --name myenv가상환경 활성화conda activate myenv필요 패키지 설치conda install jupyter numpy pandas가상환경과 Jupyter 연결하기python -m ipykernel install --user --name=myenv --display-name "Python (myenv)"사용하기!ALTALTALT☑️ Jupyter 사용확인!세팅 확인{5px},세팅 확인﻿​ALT', 4),
('ML', '5강. 데이터셋 불러오기', ' 5강. 데이터셋 불러오기📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 2주차/📕 5강. 데이터셋 불러오기Made with📕 5강. 데이터셋 불러오기[수업 목표]pandas 라이브러리를 이용하여 데이터를 불러오는 법을 배웁니다.캐글(Kaggle)에 대해 알아보고, 캐글의 데이터셋을 다운받아 불러오는 실습을 해봅니다.[목차]01. 데이터 불러오기 및 탐색02. 캐글(Kaggle) 소개 및 데이터셋 다운 받기01. 데이터 불러오기 및 탐색✔️Pandas를 이용하여 데이터를 불러오고 기본 정보를 확인해 봅니다1) 데이터 불러오기 (CSV 및 엑셀파일)☑️ Pandas 라이브러리 소개데이터 조작 및 분석을 위한 Python 라이브러리pandas는 데이터 프레임(DataFrame) 구조를 사용해 데이터를 효율적으로 관리/조작 할 수있습니다☑️ CSV 파일 불러오기CSV : 콤마로 구분된 값들을 저장하는 텍스트 파일Pandas의 read_csv 함수를 사용하여 CSV 파일을 불러올 수 있습니다.CSV 불러오기 {5px},CSV 불러오기 ﻿​PythonCopyimport pandas as pd

# CSV 파일 불러오기
df = pd.read_csv(''data.csv'')
# 데이터 프레임의 첫 5행 출력
print(df.head())
​☑️ 엑셀 파일 불러오기Pandas의 read_excel 함수를 사용하여 엑셀 파일을 불러올 수 있습니다.엑셀 불러오기 {5px},엑셀 불러오기 ﻿​PythonCopyimport pandas as pd

# 엑셀 파일 불러오기
df = pd.read_excel(''data.xlsx'', sheet_name=''Sheet1'')
# 데이터 프레임의 첫 5행 출력
print(df.head())
​2) 데이터 구조 확인해 보기☑️ 데이터 프레임의 기본 정보 확인Pandas에서 제공하는 다양한 메서드들을 이용하여 데이터 프레임의 구조와 기본 정보 확인 가능데이터프레임 정보확인 {5px},데이터프레임 정보확인 ﻿​PythonCopy# 데이터 프레임의 크기 (행, 열) 확인
print(df.shape)
# 데이터 프레임의 컬럼명 확인
print(df.columns)
# 데이터 프레임의 데이터 타입 확인
print(df.dtypes)
# 데이터 프레임의 요약 통계량 확인
print(df.describe())
# 데이터 프레임의 정보 확인 (null 값, 데이터 타입 등)
print(df.info())
​02. 캐글(Kaggle) 소개 및 데이터셋 다운 받기No accessYou don''t have access to this synced blockRequest access1) 캐글(Kaggle) 소개☑️ 캐글이란?데이터 과학 및 머신러닝 경진대회 플랫폼데이터 사이언티스트 / 머신러닝 엔지니어들이 다양한 문제를 해결하고 데이터를 분석모델을 개발하는데 필요한 데이터셋과 도구를 제공☑️ 캐글의 주요 기능경진대회: 다양한 데이터 과학 및 머신러닝 문제를 해결하는 경진대회가 열립니다.데이터셋: 다양한 주제의 데이터셋을 무료로 다운로드할 수 있습니다.커뮤니티: 데이터 과학자와 머신러닝 엔지니어들이 지식을 공유하고 협업할 수 있는 커뮤니티입니다.커널: 웹 기반의 코드 실행 환경으로, Jupyter 노트북과 유사한 기능을 제공합니다.2) 데이터셋 다운받기☑️ 캐글 데이터셋 다운로드 방법캐글에서 데이터셋을 다운로드 하기 위해서는 먼저 캐글 계정이 필요합니다캐글에서 데이터셋을 다운로드 하기 위해서는 먼저 캐글 계정이 필요합니다﻿​캐글 API 설치PythonCopypip install kaggle
​캐글 API 키 설정캐글 계정에서 API키 생성하고 로컬 환경에 저장API 키는 ~/.kaggle/kaggle.json 파일에 저장됩니다.데이터셋 다운로드PythonCopykaggle datasets download -d <dataset-identifier>
​☑️ 예시 : 타이타닉 데이터셋 다운로드타이타닉 생존자 예측 경진대회의 데이터셋 다운로드 예시타이타닉 데이터셋 다운로드 {5px},타이타닉 데이터셋 다운로드 ﻿​PythonCopy# 타이타닉 데이터셋 다운로드
kaggle competitions download -c titanic

# 다운로드된 파일 압축 해제
unzip titanic.zip
​다운로드한 데이터 import {5px},다운로드한 데이터 import ﻿​PythonCopyimport pandas as pd

# 타이타닉 데이터셋 불러오기
train_df = pd.read_csv(''train.csv'')
test_df = pd.read_csv(''test.csv'')
# 데이터 프레임의 첫 5행 출력
print(train_df.head())
print(test_df.head())
​', 5),
('ML', '6강. 데이터 전처리', ' 6강. 데이터 전처리📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 2주차/📕 6강. 데이터 전처리Made with📕 6강. 데이터 전처리[수업 목표]데이터 전처리 개념을 알아봅시다데이터 전처리 방법을 알아 봅시다[목차]01. 데이터 전처리 개념 및 API 소개💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 데이터 전처리 개념 및 API 소개✔️데이터 전처리가 무엇인지 알아보고, 사용되는 API 를 배워봅시다1) 데이터 전처리 개념 ☑️ 데이터 전처리(Data Cleaning)란?데이터 분석 및 머신러닝 모델링을 위해 데이터를 준비하는 과정원시 데이터(raw data)는 종종 불완전하거나, 노이즈가 많거나, 형식이 일관되지 않아 직접 모델링에 사용하기 어려움데이터 전처리는 데이터의 품질을 높이고, 분석 결과의 신뢰성을 확보하기 위한 필수적인 과정데이터 전처리ALT데이터 품질 향상: 결측치, 이상치, 중복 데이터를 처리하여 데이터의 품질을 높입니다.모델 성능 향상: 적절한 스케일링, 정규화를 통해 모델의 학습 속도와 성능을 개선할 수 있습니다.데이터 일관성 확보: 서로 다른 출처에서 수집된 데이터를 일관된 형식으로 변환합니다.특성 공학(Feature Engineering): 유용한 특성(Feature)을 생성하거나 변환하여 모델의 예측 능력을 향상시킵니다.2) 데이터 전처리의 주요 기법☑️ 결측치 처리 (Handling Missing Data)결측치는 데이터셋에 누락된 값을 의미합니다. 결측치를 처리하지 않으면 모델의 성능이 저하될 수 있습니다.삭제: 결측치가 있는 행이나 열을 삭제합니다. 결측치가 적을 때 유용하지만, 데이터 손실이 발생할 수 있습니다.대체: 평균, 중앙값, 최빈값 등으로 결측치를 대체합니다.예측: 다른 특성을 사용하여 결측치를 예측하고 채웁니다.☑️ 이상치 처리 (Handling Outliers)이상치는 데이터에서 비정상적으로 크거나 작은 값을 의미합니다. 이상치는 모델의 성능을 저하시킬 수 있습니다.제거: 이상치를 데이터셋에서 제거합니다.변환: 이상치를 다른 값으로 변환합니다 (예: 상한선이나 하한선으로 대체).IQR 방법: IQR(Interquartile Range)을 사용하여 이상치를 탐지하고 처리합니다.☑️  데이터 정규화 (Normalization)정규화는 데이터를 일정한 범위로 스케일링하는 과정입니다. 일반적으로 [0, 1] 범위로 변환합니다.Min-Max 정규화: 최소값을 0, 최대값을 1로 변환합니다.
Xnorm=Xmax−XminX−XminXnorm=Xmax−XminX−XminXnorm=Xmax−XminX−Xmin﻿​Xnorm=X−XminXmax−XminXnorm=X−XminXmax−XminXnorm=X−XminXmax−XminX_{norm}, = },{X_{max}, - X_{min},},Xnorm=X−XminXmax−XminXnorm​=Xmax​−Xmin​X−Xmin​​﻿​☑️ 데이터 표준화 (Standardization)표준화는 데이터를 평균 0, 분산 1로 변환하는 과정입니다.Z-점수 표준화: Xstd=σX−μXstd=σX−μXstd=σX−μ﻿
여기서 μμ﻿는 평균, σσ﻿는 표준편차입니다.Xstd=X−μσXstd=X−μσXstd=X−μσX_{std}, = {},Xstd=X−μσXstd​=σX−μ​﻿​☑️  특성 공학 (Feature Engineering)특성 공학은 데이터로부터 새로운 유용한 특성을 생성하는 과정입니다.특성 생성: 기존 데이터를 기반으로 새로운 특성을 생성합니다 (예: 날짜 데이터를 사용하여 요일 특성 생성).특성 선택: 모델 성능에 중요한 특성을 선택하고, 중요하지 않은 특성을 제거합니다.☑️  데이터 인코딩 (Data Encoding)비정형 데이터를 모델이 이해할 수 있는 형태로 변환합니다.레이블 인코딩 (Label Encoding): 범주형 데이터를 숫자로 변환합니다.원-핫 인코딩 (One-Hot Encoding): 범주형 데이터를 이진 벡터로 변환합니다.☑️  데이터 분할 (Data Splitting)데이터를 학습용(train), 검증용(validation), 테스트용(test)으로 분할합니다. 이를 통해 모델의 일반화 성능을 평가할 수 있습니다.학습 데이터 (Training Data): 모델 학습에 사용되는 데이터.검증 데이터 (Validation Data): 모델 튜닝 및 성능 검증에 사용되는 데이터.테스트 데이터 (Test Data): 최종 모델 평가에 사용되는 데이터.', 6),
('ML', '7강. 데이터 전처리 실습', ' 7강. 데이터 전처리 실습 📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 2주차/📕 7강. 데이터 전처리 실습 Made with📕 7강. 데이터 전처리 실습 [수업 목표]데이터 전처리 개념 및 Pandas에서 사용하는 API를 알아봅시다데이터 전처리 방법을 알아 봅시다[목차]01. 데이터 전처리Data💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 데이터 전처리✔️데이터 전처리 방법을 알아 봅시다DataPythonCopydata = {
''A'': [1, 2, np.nan, 4, 5, 100, 1, 2, 2, 4, ''1'', ''2'', ''3'', ''4'', ''5'', 10, 20, 30, 40, 50],
''B'': [5, np.nan, np.nan, 8, 10, 60, 10, 20, 20, 40, ''10'', ''20'', ''30'', ''40'', ''50'', 5, 4, 3, 2, 1],
''C'': [1, 2, 3, 4, 5, 5, 100, 200, 200, 400, 100, 200, 300, 400, 500, 1, 2, 3, 4, 5],
''D'': [np.nan, np.nan, 3, 3, 3, 5, 5, 5, 5, 5, np.nan, np.nan, np.nan, np.nan, np.nan, 2, 3, 4, 5, 6],
''category_column'': [np.nan]*10 + [''A'', ''B'', ''A'', ''C'', ''B''] + [np.nan]*5,
''value_column'': [np.nan]*10 + [1, 2, 3, 4, 5] + [np.nan]*5,
''target'': [np.nan]*15 + [1, 0, 1, 0, 1]
},
​1)결측값 처리☑️ 결측값 처리 방법제거: 결측값이 포함된 행 또는 열을 제거합니다.대체: 결측값을 특정 값으로 대체합니다.예측: 머신러닝 모델을 사용하여 결측값을 예측합니다.결측값 제거 {5px},결측값 제거 ﻿​PythonCopy# 결측값이 포함된 행 제거
df_dropped_rows = df.dropna()
# 결측값이 포함된 열 제거
df_dropped_cols = df.dropna(axis=1)
​dropna()를 사용하여 결측값 제거()를 사용하여 결측값 제거﻿​결측값 대체 {5px},결측값 대체 ﻿​PythonCopy# 결측값을 0으로 대체
df_filled = df.fillna(0)
# 결측값을 각 열의 평균값으로 대체
df_filled_mean = df.fillna(df.mean())
# 결측값을 각 열의 중간값으로 대체
df_filled_median = df.fillna(df.median())
# 결측값을 각 열의 최빈값으로 대체
df_filled_mode = df.fillna(df.mode().iloc[0])
​fillna()를 사용하여 결측값 대체()를 사용하여 결측값 대체﻿​결측값 예측 {5px},결측값 예측 ﻿​PythonCopyfrom sklearn.linear_model import LinearRegression

# 결측값이 있는 열과 없는 열 분리
df_with_na = df[df[''column_with_na''].isnull()]
df_without_na = df[df[''column_with_na''].notnull()]
# 회귀 모델 학습
model = LinearRegression()
model.fit(df_without_na[[''feature1'', ''feature2'']], df_without_na[''column_with_na''])
# 결측값 예측
predicted_values = model.predict(df_with_na[[''feature1'', ''feature2'']])
# 예측된 값으로 결측값 대체
df.loc[df[''column_with_na''].isnull(), ''column_with_na''] = predicted_values
​2) 이상값 처리☑️ 이상치란?데이터셋에서 비정상적으로 큰 값이나 작은 값이상치는 분석 결과에 큰 영향을 미칠 수 있으므로, 이를 적절히 처리하는 것이 중요이상치 확인 방법 {5px},이상치 확인 방법 ﻿​PythonCopy# 특정 열의 이상치 확인 (IQR 방법)
Q1 = df[''column_name''].quantile(0.25)
Q3 = df[''column_name''].quantile(0.75)
IQR = Q3 - Q1

# 이상치 범위 설정
lower_bound = Q1 - 1.5 * IQR
upper_bound = Q3 + 1.5 * IQR

# 이상치 확인
outliers = df[(df[''column_name''] < lower_bound) | (df[''column_name''] > upper_bound)]
print(outliers)
​☑️ 이상치 처리 방법제거: 이상치를 데이터셋에서 제거합니다.대체: 이상치를 특정 값으로 대체합니다.변환: 이상치를 변환하여 데이터의 분포를 조정합니다.이상치 처리 방법 {5px},이상치 처리 방법 ﻿​PythonCopy# 이상치 제거
df_no_outliers = df[(df[''column_name''] >= lower_bound) & (df[''column_name''] <= upper_bound)]
# 이상치를 평균값으로 대체
mean_value = df[''column_name''].mean()
df[''column_name''] = df[''column_name''].apply(lambda x: mean_value if x < lower_bound or x > upper_bound else x)
​3) 중복값 제거☑️ 중복 데이터 제거중복 데이터 제거 {5px},중복 데이터 제거 ﻿​PythonCopy# 중복된 행 확인
print(df.duplicated().sum())
# 중복된 행 제거
df_no_duplicates = df.drop_duplicates()
​4) 데이터 타입 변환☑️ 데이터 타입 변환의 필요성잘못된 데이터 타입은 분석 결과에 영향을 미칠 수 있으며, 모델 학습에 오류를 발생시킬 수있어 적절한 데이터 타입 변환이 필요합니다데이터 타입 변환 방법 {5px},데이터 타입 변환 방법 ﻿​PythonCopy# 특정 열의 데이터 타입을 정수형으로 변환
df[''column_name''] = df[''column_name''].astype(int)
# 특정 열의 데이터 타입을 문자열로 변환
df[''column_name''] = df[''column_name''].astype(str)
# 특정 열의 데이터 타입을 부동 소수점으로 변환
df[''column_name''] = df[''column_name''].astype(float)
​Pandas의 astype() 메서드를 사용하여 데이터 타입을 변환의 astype() 메서드를 사용하여 데이터 타입을 변환﻿​5) 인코딩☑️ 인코딩이란?범주형 데이터를 수치형 데이터로 변환하는 과정머신러닝 모델은 수치형 데이터를 입력으로 받기때문에, 범주형 데이터를 수치형으로 변환하는 것이 필요인코딩 방법 {5px},인코딩 방법 ﻿​PythonCopy# 범주형 데이터를 더미 변수로 변환
df_encoded = pd.get_dummies(df, columns=[''category_column''])
# 결과 출력
print(df_encoded.head())
​Pandas의 get_dummies() 메서드를 사용하여 범주형 데이터를 더미 변수로 변환의 get_dummies() 메서드를 사용하여 범주형 데이터를 더미 변수로 변환﻿​6) 샘플링☑️ 샘플링이란?데이터셋의 크기를 줄이거나 늘리는 과정데이터셋의 대표성을 유지하면서 데이터의 크기를 조절하는 데 사용샘플링 방법 {5px},샘플링 방법 ﻿​PythonCopy# 데이터셋에서 50% 샘플 추출
df_sampled = df.sample(frac=0.5)
# 데이터셋에서 100개의 샘플 추출
df_sampled_n = df.sample(n=100)
​Pandas의 sample() 메서드를 사용하여 데이터셋에서 샘플을 추출의 sample() 메서드를 사용하여 데이터셋에서 샘플을 추출﻿​7) 특징 선택 및 추출☑️ 특징 선택 및 추출이란?특징 선택(Feature Selection) 및 추출(Feature Extraction)은 모델 성능을 높이기 위해 중요한 특징을 선택하거나 새로운 특징을 추출하는 과정특징 선택 방법 {5px},특징 선택 방법 ﻿​PythonCopyfrom sklearn.feature_selection import SelectKBest, f_classif

# 특징 선택 (상위 5개의 특징 선택)
selector = SelectKBest(score_func=f_classif, k=5)
X_new = selector.fit_transform(X, y)
# 선택된 특징의 인덱스
selected_features = selector.get_support(indices=True)
print(selected_features)
​Pandas와 Scikit-learn을 사용하여 특징 선택을 수행와 Scikit-learn을 사용하여 특징 선택을 수행﻿​특징 추출 방법 {5px},특징 추출 방법 ﻿​PythonCopy# 두 열의 곱을 새로운 특징으로 추가
df[''new_feature''] = df[''feature1''] * df[''feature2'']
# 두 열의 합을 새로운 특징으로 추가
df[''new_feature_sum''] = df[''feature1''] + df[''feature2'']
​', 7),
('ML', '8강. 지도학습 : 회귀모델', ' 8강. 지도학습 : 회귀모델 📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 8강. 지도학습 : 회귀모델 Made with📕 8강. 지도학습 : 회귀모델 [수업 목표]다양한 회귀 모델에 대해서 배워봅시다회귀(Regression)모델은 연속적인 값을 예측하는 문제입니다.회귀(Regression)모델은 연속적인 값을 예측하는 문제입니다.﻿
오늘은 선형회귀/다항회귀/리지회귀/라쏘회귀 를 다뤄볼 예정입니다오늘은 선형회귀/다항회귀/리지회귀/라쏘회귀 를 다뤄볼 예정입니다﻿​[목차]01. 회귀모델💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 회귀모델✔️다양한 회귀 모델(선형회귀/다항회귀/리지회귀/라쏘회귀)에 대해서 알아보고 실습해 봅시다1) 선형 회귀☑️ 선형 회귀선형회귀는 종속 변수와 하나 이상의 독립 변수 간의 선형 관계를 모델링 하는 방법입니다독립변수의 수에 따라 단순 선형회귀와 다중 선형회귀로 나뉩니다☑️ 단순 선형 회귀 VS 다중 선형 회귀ALT단순 선형 회귀 : 하나의 독립 변수와 하나의 종속 변수 간의 관계를 모델링다중 선형 회귀 : 여러 독립 변수와 하나의 종속 변수 간의 관계를 모델링선형 회귀의 기본 수식은 다음과 같습니다.선형 회귀의 기본 수식은 다음과 같습니다.﻿
y=β0​+β1​x1​+β2​x2​+⋯+βn​xn​+ϵy=β0​+β1​x1​+β2​x2​+⋯+βn​xn​+ϵy=β0​+β1​x1​+β2​x2​+⋯+βn​xn​+ϵ﻿
여기서 y는 종속변수, x1,x2,…,xn 은 독립변수, b0 는 절편, b1,b2,…,bn은 회귀계수, e는 오차입니다여기서 y는 종속변수, x1,x2,…,xn 은 독립변수, b0 는 절편, b1,b2,…,bn은 회귀계수, e는 오차입니다﻿
⋄ 단순 선형 회귀일경우 ⋄ 단순 선형 회귀일경우 ﻿
y=β0​+β1​x+ϵy=β0​+β1​x+ϵ﻿
☑️ Scikit-learn 을 사용한 선형 회귀 모델 구현 및 평가선형 회귀 모델 구현 및 평가 {5px},선형 회귀 모델 구현 및 평가 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# 데이터 생성
X = np.array([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5],[6,6]])
y = np.array([1, 2, 3, 4, 5, 6])
# 데이터 분할 (훈련 데이터와 테스트 데이터)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 선형 회귀 모델 생성 및 학습
model = LinearRegression()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 모델 평가
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f''Mean Squared Error: {mse},'')
print(f''R^2 Score: {r2},'')
​2) 다항 회귀☑️ 다항 회귀다항 회귀(Polynomial Regression)는 종속 변수와 독립 변수 간의 비선형 관계를 모델링하는 방법독립변수의 다항식을 사용하여 관계를 모델링 합니다.다항 회귀의 기본 수식은 다음과 같습니다다항 회귀의 기본 수식은 다음과 같습니다﻿
y=β0​+β1​x+β2​x2+⋯+βn​xn+ϵy=β0​+β1​x+β2​x^2+⋯+βn​x^n+ϵy=β0​+β1​x+β2​x2+⋯+βn​xn+ϵ﻿
여기서 y는 종속변수, x1,x2,…,xn 은 독립변수, b0 는 절편, b1,b2,…,bn은 회귀계수, e는 오차입니다여기서 y는 종속변수, x1,x2,…,xn 은 독립변수, b0 는 절편, b1,b2,…,bn은 회귀계수, e는 오차입니다﻿​☑️ 다항 회귀 차수 선택다항회귀 차수(degree) : 독립 변수의 최대 차수차수가 높을수록 모델이 더 복잡해지며 과적합(overfitting)의 위험 존재 → 적절한 차수 선택 필요과적합이란 학습데이터에 모델이 과도하게 적합(fitting)되는 현상입니다과적합이란 학습데이터에 모델이 과도하게 적합(fitting)되는 현상입니다﻿​☑️ Scikit-learn을 사용한 다항 회귀 모델 구현 및 평가다항 회귀 모델 구현 및 평가 {5px},다항 회귀 모델 구현 및 평가 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# 데이터 생성
X = np.array([[1], [2], [3], [4], [5], [6]])
y = np.array([1, 4, 9, 16, 25, 36])
# 다항 특징 생성 (차수 2)
poly = PolynomialFeatures(degree=2)
X_poly = poly.fit_transform(X)
# 데이터 분할 (훈련 데이터와 테스트 데이터)
X_train, X_test, y_train, y_test = train_test_split(X_poly, y, test_size=0.2, random_state=42)
# 다항 회귀 모델 생성 및 학습
model = LinearRegression()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 모델 평가
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f''Mean Squared Error: {mse},'')
print(f''R^2 Score: {r2},'')
​3) 리지 회귀☑️ 리지 회귀리지 회귀(Ridge Regression)는 선형 회귀의 일종회귀 계수의 크기를 제어하여 과적합을 방지하는 정규화 기법L2 정규화(regularization)를 사용하여 회귀 계수의 제곱합을 최소화 합니다리지 회귀의 기본 수식은 다음과 같습니다리지 회귀의 기본 수식은 다음과 같습니다﻿
J(β)=∑i=1n(yi−y^i)2+λ∑j=1pβj2J() = _{i=1},^{n}, (y_i - _i)^2 +  _{j=1},^{p}, _j^2J(β)=∑i=1n​(yi​−y^​i​)2+λ∑j=1p​βj2​﻿
여기서λ는 정규화 강도를 조절하는 하이퍼파라미터 입니다. 여기서λ는 정규화 강도를 조절하는 하이퍼파라미터 입니다.﻿​☑️ L2 정규화 L2 정규화는 모든 가중치를 작게 만들어 모델의 복잡도를 줄입니다.손실 함수에 제곱항을 추가하여 매끄러운 최적화가 가능합니다.정규화는 모델의 복잡도를 제어하여 과적합을 방지하는 데 필요합니다.☑️ Scikit-learn을 사용한 리지 회귀 모델 구현 및 평가리지 회귀 모델 구현 및 평가 {5px},리지 회귀 모델 구현 및 평가 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import Ridge
from sklearn.metrics import mean_squared_error, r2_score

# 데이터 생성
X = np.array([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6]])
y = np.array([1, 2, 3, 4, 5, 6])
# 데이터 분할 (훈련 데이터와 테스트 데이터)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 리지 회귀 모델 생성 및 학습
model = Ridge(alpha=1.0)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 모델 평가
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f''Mean Squared Error: {mse},'')
print(f''R^2 Score: {r2},'')
​4) 라쏘 회귀☑️ 라쏘 회귀라쏘 회귀(Lasso Regression)는 선형 회귀의 일종회귀 계수의 크기를 제어하여 과적합을 방지하는 정규화 기법L1 정규화(regularization)를 사용하여 회귀 계수의 절대값 합을 최소화 합니다라쏘 회귀의 기본 수식은 다음과 같습니다라쏘 회귀의 기본 수식은 다음과 같습니다﻿
J(β)=∑i=1n(yi−y^i)2+λ∑j=1p∣βj∣J() = _{i=1},^{n}, (y_i - _i)^2 +  _{j=1},^{p}, |_j|J(β)=∑i=1n​(yi​−y^​i​)2+λ∑j=1p​∣βj​∣﻿
여기서λ는 정규화 강도를 조절하는 하이퍼파라미터 입니다. 여기서λ는 정규화 강도를 조절하는 하이퍼파라미터 입니다.﻿​☑️ L1 정규화와 특징 선택L1 정규화는 일부 회귀 계수를 0으로 만들어 특징 선택(feature selection)을 수행모델의 해석 가능성을 높이고, 불필요한 특징을 제거하는 데 유용합니다☑️ Scikit-learn을 사용한 라쏘 회귀 모델 구현 및 평가라쏘 회귀 모델 구현 및 평가 {5px},라쏘 회귀 모델 구현 및 평가 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import Lasso
from sklearn.metrics import mean_squared_error, r2_score

# 데이터 생성
X = np.array([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6,6]])
y = np.array([1, 2, 3, 4, 5, 6])
# 데이터 분할 (훈련 데이터와 테스트 데이터)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 라쏘 회귀 모델 생성 및 학습
model = Lasso(alpha=1.0)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 모델 평가
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f''Mean Squared Error: {mse},'')
print(f''R^2 Score: {r2},'')
​', 8),
('ML', '9강. 지도학습 : 분류모델 - 로지스틱 회귀', ' 9강. 지도학습 : 분류모델 - 로지스틱 회귀📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 9강. 지도학습 : 분류모델 - 로지스틱 회귀Made with📕 9강. 지도학습 : 분류모델 - 로지스틱 회귀[수업 목표]지도학습 : 분류모델의 로지스틱 회귀에 대해 알아보고 실습을 통해 배워봅시다[목차]01. 로지스틱 회귀 개념02. 로지스틱 회귀분석 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 로지스틱 회귀 개념✔️로지스틱 회귀란 무엇인지, 왜 사용하는지 배워봅시다1) 로지스틱 회귀☑️ 로지스틱 회귀란?종속 변수가 이진형일 때(즉, 결과가 두 가지 중 하나일 때) 사용되는 통계 기법로지스틱 회귀는 선형 회귀와 달리 결과값이 0과 1 사이에 위치하게 하기 위해 시그모이드 함수(Sigmoid Function)를 사용합니다.로지스틱 회귀는 회귀 분석이지만, 실제로는 분류 작업에 사용됩니다!!로지스틱 회귀는 회귀 분석이지만, 실제로는 분류 작업에 사용됩니다!!﻿​☑️ 시그모이드 함수시그모이드 함수는 로지스틱 회귀의 핵심으로 입력값을 0과 1사이의 값으로 변환합니다σ(z)=11+e−z(z) = {1 + e^{-z},}, σ(z)=1+e−z1​여기서 z 는 선형 회귀 방정식z=β0+β1x1+β2x2+…+βnxn입니다.{z = _0 + _1x_1 + _2x_2 +  + _nx_n },여기서 z 는 선형 회귀 방정식z=β0​+β1​x1​+β2​x2​+…+βn​xn​입니다.﻿​☑️ 로지스틱 회귀의 목적로지스틱 회귀는 데이터를 학습하여 각 데이터 포인트가 특정 클래스에 속할 확률을 예측합니다.예를 들어, 유방암 데이터에서는 환자가 암에 걸렸을 확률, 타이타닉 데이터 에서는 승객이 생존할 확률을 예측합니다☑️ 비용 함수로지스틱 회귀의 비용 함수는 모델의 예측 확률과 실제 레이블 사이의 차이를 측정합니다.로그 손실 함수(Log Loss) 또는 크로스 엔트로피 손실 함수(Cross-Entropy loss)라고 불립니다.J(θ)=−1m∑i=1m[y(i)log⁡(hθ(x(i)))+(1−y(i))log⁡(1−hθ(x(i)))]J() = -{m}, _{i=1},^{m}, [ y^{(i)}, (h_(x^{(i)},)) + (1 - y^{(i)},) (1 - h_(x^{(i)},)) ]J(θ)=−m1​i=1∑m​[y(i)log(hθ​(x(i)))+(1−y(i))log(1−hθ​(x(i)))]02. 로지스틱 회귀분석 실습✔️Scikit-learn의 유방암데이터와 Seaborn의 타이타닉 데이터로 로지스틱 회귀분석 실습을 진행합니다1) 유방암 데이터☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 데이터 로드
data = load_breast_cancer()
X = data.data
y = data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​sklearn.datasets.load_breast_cancer: 유방암 데이터셋 로드return_X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다._X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다.﻿​sklearn.model_selection.train_test_split: 데이터를 훈련 세트/ 테스트 세트로 분할test_size=0.2: 테스트 세트의 비율을 0.2로 설정합니다._size=0.2: 테스트 세트의 비율을 0.2로 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다.﻿​sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​transform(X_test): 테스트 세트를 변환합니다.(X_test): 테스트 세트를 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopyfrom sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

# 모델 생성 및 학습
model = LogisticRegression()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​sklearn.linear_model.LogisticRegression: 로지스틱 회귀 모델 생성fit(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.﻿​predict(X_test): 테스트 세트에 대해 예측을 수행합니다.(X_test): 테스트 세트에 대해 예측을 수행합니다.﻿​sklearn.metrics.accuracy_score: 정확도 계산accuracy_score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다._score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다.﻿​sklearn.metrics.classification_report: 분류 보고서 생성classification_report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다._report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다.﻿​sklearn.metrics.confusion_matrix: 혼동 행렬 생성confusion_matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다._matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다.﻿​2) 타이타닉 데이터☑️ 데이터 로드 및 전처리타이타닉 데이터 로드 및 전처리 {5px},타이타닉 데이터 로드 및 전처리 ﻿​PythonCopyimport seaborn as sns

# 데이터 로드
titanic = sns.load_dataset(''titanic'')
# 필요한 열 선택 및 결측값 처리
titanic = titanic[[''survived'', ''pclass'', ''sex'', ''age'', ''sibsp'', ''parch'', ''fare'', ''embarked'']].dropna()
# 성별과 탑승한 곳 인코딩
titanic[''sex''] = titanic[''sex''].map({''male'': 0, ''female'': 1},)
titanic[''embarked''] = titanic[''embarked''].map({''C'': 0, ''Q'': 1, ''S'': 2},)
# 특성과 타겟 분리
X = titanic.drop(''survived'', axis=1)
y = titanic[''survived'']
# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​seaborn.load_dataset: seaborn의 내장 데이터셋 로드’titanic’: 타이타닉 데이터셋을 로드합니다.’titanic’: 타이타닉 데이터셋을 로드합니다.﻿​ pandas.DataFrame.dropna: 결측값이 있는 행 제거pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.: 성별을 숫자로 매핑합니다.},’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.﻿​’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.: 탑승한 곳을 숫자로 매핑합니다.},’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 생성 및 학습
model = LogisticRegression()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​', 9),
('ML', '10강. 지도학습 : 분류모델 - SVM', ' 10강. 지도학습 : 분류모델 - SVM📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 10강. 지도학습 : 분류모델 - SVMMade with📕 10강. 지도학습 : 분류모델 - SVM[수업 목표]SVM(Support Vector Machine)에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. SVM 개념02. SVM 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. SVM 개념✔️SVM이 무엇인지 알아봅시다1) SVM☑️ SVM이란?서포트 벡터 머신(SVM)은 분류와 회귀 분석에 사용되는 강력한 지도학습 모델데이터를 분류하기 위해 결정 경계(결정 초평면, hyperplane)를 찾아 분류합니다.초평면은 두 클래스 사이의 최대 마진을 보장하는 방식으로 선택합니다.ALT마진 : 두 클래스 간의 가장 가까운 데이터 포인트 사이의 거리마진 : 두 클래스 간의 가장 가까운 데이터 포인트 사이의 거리﻿
서포트 벡터 : 결정 초평면에 가장 가까이 위치한 데이터 포인트 - 결정 초평면을 정의합니다서포트 벡터 : 결정 초평면에 가장 가까이 위치한 데이터 포인트 - 결정 초평면을 정의합니다﻿
커널 함수 : 데이터를 더 높은 차원으로 매핑하여 선형적으로 분리 할 수 없는 데이터를 분리하게 합니다. 커널 함수 : 데이터를 더 높은 차원으로 매핑하여 선형적으로 분리 할 수 없는 데이터를 분리하게 합니다. ﻿​☑️ SVM의 목적SVM의 목표는 마진을 최대화하면서 결정 초평면을 찾아 데이터 포인트를 정확하게 분류하는 것입니다. 이는 일반화 성능을 높이는 데 도움을 줍니다.w⋅x−b=0   - b = 0 w⋅x−b=0여기서 w는 가중치 벡터, x는 입력 벡터, b는 절편입니다.\)는 가중치 벡터, \(\)는 입력 벡터, \(b\)는 절편입니다.},여기서 w는 가중치 벡터, x는 입력 벡터, b는 절편입니다.﻿​02. SVM 실습✔️Scikit-learn의 유방암데이터와 Seaborn의 타이타닉 데이터로 SVM 실습을 진행합니다1) 유방암 데이터☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 데이터 로드
data = load_breast_cancer()
X = data.data
y = data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​sklearn.datasets.load_breast_cancer: 유방암 데이터셋 로드return_X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다._X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다.﻿​sklearn.model_selection.train_test_split: 데이터를 훈련 세트/ 테스트 세트로 분할test_size=0.2: 테스트 세트의 비율을 0.2로 설정합니다._size=0.2: 테스트 세트의 비율을 0.2로 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다.﻿​sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​transform(X_test): 테스트 세트를 변환합니다.(X_test): 테스트 세트를 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopyfrom sklearn.svm import SVC
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

# 모델 생성 및 학습
model = SVC(kernel=''linear'')
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​sklearn.svm.SVC: 서포트 벡터 머신 분류 모델 생성kernel=’linear’: 선형 커널을 사용하여 SVM을 학습합니다.=’linear’: 선형 커널을 사용하여 SVM을 학습합니다.﻿​fit(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다﻿​predict(X_test): 테스트 세트에 대해 예측을 수행합니다.(X_test): 테스트 세트에 대해 예측을 수행합니다.﻿​sklearn.metrics.accuracy_score: 정확도 계산accuracy_score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다._score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다.﻿​sklearn.metrics.classification_report: 분류 보고서 생성classification_report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다._report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다.﻿​sklearn.metrics.confusion_matrix: 혼동 행렬 생성confusion_matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다._matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다.﻿​2) 타이타닉 데이터☑️ 데이터 로드 및 전처리타이타닉 데이터 로드 및 전처리 {5px},타이타닉 데이터 로드 및 전처리 ﻿​PythonCopyimport seaborn as sns

# 데이터 로드
titanic = sns.load_dataset(''titanic'')
# 필요한 열 선택 및 결측값 처리
titanic = titanic[[''survived'', ''pclass'', ''sex'', ''age'', ''sibsp'', ''parch'', ''fare'', ''embarked'']].dropna()
# 성별과 탑승한 곳 인코딩
titanic[''sex''] = titanic[''sex''].map({''male'': 0, ''female'': 1},)
titanic[''embarked''] = titanic[''embarked''].map({''C'': 0, ''Q'': 1, ''S'': 2},)
# 특성과 타겟 분리
X = titanic.drop(''survived'', axis=1)
y = titanic[''survived'']
# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​seaborn.load_dataset: seaborn의 내장 데이터셋 로드’titanic’: 타이타닉 데이터셋을 로드합니다.’titanic’: 타이타닉 데이터셋을 로드합니다.﻿​ pandas.DataFrame.dropna: 결측값이 있는 행 제거pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.: 성별을 숫자로 매핑합니다.},’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.﻿​’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.: 탑승한 곳을 숫자로 매핑합니다.},’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 생성 및 학습
model = SVC(kernel=''linear'')
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​', 10),
('ML', '11강. 지도학습 : 분류모델 - KNN', ' 11강. 지도학습 : 분류모델 - KNN📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 11강. 지도학습 : 분류모델 - KNNMade with📕 11강. 지도학습 : 분류모델 - KNN[수업 목표]KNN(K-Nearest Neighbors)에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. KNN 개념02. KNN 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. KNN 개념✔️KNN(K 최근접 이웃 , K-Nearest Neighbors)이 무엇인지 알아봅시다1) KNN☑️ KNN이란?KNN 알고리즘은 분류와 회귀 분석에 사용되는 비모수적 방법 입니다.새로운 데이터 포인트를 기존 데이터 포인트 중 가장 가까운 K개의 이웃과 비교하여 분류합니다데이터 포인트의 특성을 기준으로 거리 계산을 통해 가장 가까운 이웃을 찾습니다.ALT거리 측정 : KNN 알고리즘에서 가장 중요한 요소입니다. 일반적으로 유클리드 거리가 사용됩니다.거리 측정 : KNN 알고리즘에서 가장 중요한 요소입니다. 일반적으로 유클리드 거리가 사용됩니다.﻿
K값 : K는 결정 경계의 매끄러움에 영향을 미치는 하이퍼파라미터입니다. 값 : K는 결정 경계의 매끄러움에 영향을 미치는 하이퍼파라미터입니다. ﻿
 작은 K값은 더 노이즈에 민감하고,큰 K값은 더 매끄러운 경계를 만듭니다. 작은 K값은 더 노이즈에 민감하고,큰 K값은 더 매끄러운 경계를 만듭니다.﻿
다수결 투표 : K개의 가장 가까운 이웃의 클래스중 가장 빈번한 클래스로 새로운 데이터 포인트를 분류합니다다수결 투표 : K개의 가장 가까운 이웃의 클래스중 가장 빈번한 클래스로 새로운 데이터 포인트를 분류합니다﻿​☑️ KNN의 목적KNN의 목표는 학습 데이터를 기반으로 새로운 데이터 포인트의 클래스를 예측하는 것입니다이는 분류 문제에서 주로 사용되며 다양한 응용 분야에 활용될 수 있습니다02. KNN 실습✔️Scikit-learn의 유방암데이터와 Seaborn의 타이타닉 데이터로 KNN 실습을 진행합니다1) 유방암 데이터☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 데이터 로드
data = load_breast_cancer()
X = data.data
y = data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​sklearn.datasets.load_breast_cancer: 유방암 데이터셋 로드return_X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다._X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다.﻿​sklearn.model_selection.train_test_split: 데이터를 훈련 세트/ 테스트 세트로 분할test_size=0.2: 테스트 세트의 비율을 0.2로 설정합니다._size=0.2: 테스트 세트의 비율을 0.2로 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다.﻿​sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​transform(X_test): 테스트 세트를 변환합니다.(X_test): 테스트 세트를 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopyfrom sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

# 모델 생성 및 학습
model = KNeighborsClassifier(n_neighbors=5)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​sklearn.neighbors.KNeighborsClassifier: KNN 모델 생성n_neighbors=5: 사용할 이웃의 수(K)를 설정합니다._neighbors=5: 사용할 이웃의 수(K)를 설정합니다.﻿​fit(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다﻿​predict(X_test): 테스트 세트에 대해 예측을 수행합니다.(X_test): 테스트 세트에 대해 예측을 수행합니다.﻿​sklearn.metrics.accuracy_score: 정확도 계산accuracy_score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다._score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다.﻿​sklearn.metrics.classification_report: 분류 보고서 생성classification_report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다._report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다.﻿​sklearn.metrics.confusion_matrix: 혼동 행렬 생성confusion_matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다._matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다.﻿​2) 타이타닉 데이터☑️ 데이터 로드 및 전처리타이타닉 데이터 로드 및 전처리 {5px},타이타닉 데이터 로드 및 전처리 ﻿​PythonCopyimport seaborn as sns

# 데이터 로드
titanic = sns.load_dataset(''titanic'')
# 필요한 열 선택 및 결측값 처리
titanic = titanic[[''survived'', ''pclass'', ''sex'', ''age'', ''sibsp'', ''parch'', ''fare'', ''embarked'']].dropna()
# 성별과 탑승한 곳 인코딩
titanic[''sex''] = titanic[''sex''].map({''male'': 0, ''female'': 1},)
titanic[''embarked''] = titanic[''embarked''].map({''C'': 0, ''Q'': 1, ''S'': 2},)
# 특성과 타겟 분리
X = titanic.drop(''survived'', axis=1)
y = titanic[''survived'']
# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​seaborn.load_dataset: seaborn의 내장 데이터셋 로드’titanic’: 타이타닉 데이터셋을 로드합니다.’titanic’: 타이타닉 데이터셋을 로드합니다.﻿​pandas.DataFrame.dropna: 결측값이 있는 행 제거pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.: 성별을 숫자로 매핑합니다.},’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.﻿​’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.: 탑승한 곳을 숫자로 매핑합니다.},’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 생성 및 학습
model = KNeighborsClassifier(n_neighbors=5)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​', 11),
('ML', '12강. 지도학습 : 분류모델 - 나이브베이즈', ' 12강. 지도학습 : 분류모델 - 나이브베이즈📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 12강. 지도학습 : 분류모델 - 나이브베이즈Made with📕 12강. 지도학습 : 분류모델 - 나이브베이즈[수업 목표]분류모델중 나이브베이즈에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. 나이브베이즈 개념02. 나이브베이즈 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 나이브베이즈 개념✔️1) 나이브베이즈☑️ 나이브베이즈란?나이브베이즈(Naive Bayes) 분류기는 베이즈 정리를 기반으로 하는 통계적 분류 기법입니다. 나이브라는 이름이 붙은 이유는 각 특징(feature)이 독립적이라고 가정하기 때문입니다.주로 텍스트 분류 문제에서 널리 사용됩니다.☑️ 베이즈정리P(A∣B)=P(B∣A)⋅P(A)P(B)P(A|B) = {P(B)},P(A∣B)=P(B)P(B∣A)⋅P(A)​P(A∣B): B가 주어졌을 때 A의 확률 (사후 확률)P(B∣A): A가 주어졌을 때 B의 확률 (우도)P(A): A의 사전 확률P(B): B의 사전 확률☑️ 나이브베이즈의 종류가우시안 나이브베이즈: 특징들이 연속적이고 정규 분포를 따른다고 가정합니다.베르누이 나이브베이즈: 특징들이 이진수(0 또는 1)로 표현되는 경우 사용합니다.멀티노미얼 나이브베이즈: 특징들이 다항 분포를 따르는 경우 사용합니다.☑️ 나이브베이즈의 목적나이브베이즈의 목표는 주어진 데이터 포인트가 특정 클래스에 속할 확률을 계산하여 분류하는 것입니다. 이 모델은 단순하고 계산이 효율적이며, 텍스트 분류와 같은 문제에서 좋은 성능을 발휘합니다.02. 나이브베이즈 실습✔️Scikit-learn의 유방암데이터와 Seaborn의 타이타닉 데이터로 나이브베이즈 실습을 진행합니다1) 유방암 데이터☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 데이터 로드
data = load_breast_cancer()
X = data.data
y = data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​sklearn.datasets.load_breast_cancer: 유방암 데이터셋 로드return_X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다._X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다.﻿​sklearn.model_selection.train_test_split: 데이터를 훈련 세트/ 테스트 세트로 분할test_size=0.2: 테스트 세트의 비율을 0.2로 설정합니다._size=0.2: 테스트 세트의 비율을 0.2로 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다.﻿​sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​transform(X_test): 테스트 세트를 변환합니다.(X_test): 테스트 세트를 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopyfrom sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

# 모델 생성 및 학습
model = GaussianNB()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​sklearn.naive_bayes.GaussianNB: 가우시안 나이브베이즈 분류 모델을 생성합니다fit(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.﻿​predict(X_test): 테스트 세트에 대해 예측을 수행합니다.(X_test): 테스트 세트에 대해 예측을 수행합니다.﻿​sklearn.metrics.accuracy_score: 정확도 계산accuracy_score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다._score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다.﻿​sklearn.metrics.classification_report: 분류 보고서 생성classification_report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다._report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다.﻿​sklearn.metrics.confusion_matrix: 혼동 행렬 생성confusion_matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다._matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다.﻿​2) 타이타닉 데이터☑️ 데이터 로드 및 전처리타이타닉 데이터 로드 및 전처리 {5px},타이타닉 데이터 로드 및 전처리 ﻿​PythonCopyimport seaborn as sns

# 데이터 로드
titanic = sns.load_dataset(''titanic'')
# 필요한 열 선택 및 결측값 처리
titanic = titanic[[''survived'', ''pclass'', ''sex'', ''age'', ''sibsp'', ''parch'', ''fare'', ''embarked'']].dropna()
# 성별과 탑승한 곳 인코딩
titanic[''sex''] = titanic[''sex''].map({''male'': 0, ''female'': 1},)
titanic[''embarked''] = titanic[''embarked''].map({''C'': 0, ''Q'': 1, ''S'': 2},)
# 특성과 타겟 분리
X = titanic.drop(''survived'', axis=1)
y = titanic[''survived'']
# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​seaborn.load_dataset: seaborn의 내장 데이터셋 로드’titanic’: 타이타닉 데이터셋을 로드합니다.’titanic’: 타이타닉 데이터셋을 로드합니다.﻿​pandas.DataFrame.dropna: 결측값이 있는 행 제거pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.: 성별을 숫자로 매핑합니다.},’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.﻿​’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.: 탑승한 곳을 숫자로 매핑합니다.},’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 생성 및 학습
model = GaussianNB()
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​', 12),
('ML', '13강. 지도학습 : 분류모델 - 의사결정나무', ' 13강. 지도학습 : 분류모델 - 의사결정나무📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 3주차/📕 13강. 지도학습 : 분류모델 - 의사결정나무Made with📕 13강. 지도학습 : 분류모델 - 의사결정나무[수업 목표]분류모델중 의사결정나무에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. 의사결정나무 개념02. 의사결정나무 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 의사결정나무 개념✔️지도학습:분류모델의 의사결정나무가 무엇인지 알아봅시다1) 의사결정나무☑️ 의사결정나무란?의사결정나무(Decision Tree)는 예측 모델 중 하나로, 데이터의 특징(feature)을 기준으로 의사결정 규칙을 만들고 이를 바탕으로 데이터를 분류하거나 회귀하는 데 사용됩니다의사결정나무는 트리 구조를 가지며, 각 내부 노드는 데이터의 특정 특징에 대한 테스트를 나타내고, 각 가지(branch)는 테스트 결과를 나타내며, 각 리프 노드(leaf)는 클래스 레이블을 나타냅니다.ALT노드: 트리의 각 분기점으로, 하나의 특징(feature)에 대한 테스트를 나타냅니다.노드: 트리의 각 분기점으로, 하나의 특징(feature)에 대한 테스트를 나타냅니다.﻿​루트 노드: 트리의 최상위 노드로, 전체 데이터셋을 나타냅니다.루트 노드: 트리의 최상위 노드로, 전체 데이터셋을 나타냅니다.﻿​리프 노드: 트리의 끝 노드로, 최종 클래스 레이블을 나타냅니다.리프 노드: 트리의 끝 노드로, 최종 클래스 레이블을 나타냅니다.﻿​깊이: 트리의 루트 노드부터 리프 노드까지의 최대 거리입니다.깊이: 트리의 루트 노드부터 리프 노드까지의 최대 거리입니다.﻿​분할 기준: 노드를 나눌 때 사용하는 기준으로, 정보 이득(Information Gain), 지니 계수(Gini Index) 등이 있습니다.분할 기준: 노드를 나눌 때 사용하는 기준으로, 정보 이득(Information Gain), 지니 계수(Gini Index) 등이 있습니다.﻿​☑️ 분할기준정보 이득(Information Gain) : 엔트로피(Entropy)값으로 데이터를 나누는 기준입니다. 엔트로피는 불확실성을 나타내며, 엔트로피가 낮을수록 불확실성이 적습니다.Information Gain(D,A)=Entropy(D)−∑v∈values(A)∣Dv∣∣D∣Entropy(Dv)(D, A) = (D) - _{v  (A)}, {|D|}, (D_v)Information Gain(D,A)=Entropy(D)−v∈values(A)∑​∣D∣∣Dv​∣​Entropy(Dv​)지니 계수(Gini Index): 불순도를 측정하는 방법으로, 지니 계수가 낮을수록 불순도가 적습니다Gini(D)=1−∑i=1Cpi2(D) = 1 - _{i=1},^{C}, p_i^2Gini(D)=1−i=1∑C​pi2​여기서 pi는 클래스 i의 비율입니다.여기서 pi​는 클래스 i의 비율입니다.﻿​02. 의사결정나무 실습✔️Scikit-learn의 유방암데이터와 Seaborn의 타이타닉 데이터로 의사결정나무 실습을 진행합니다1) 유방암 데이터☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 데이터 로드
data = load_breast_cancer()
X = data.data
y = data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​sklearn.datasets.load_breast_cancer: 유방암 데이터셋 로드return_X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다._X_y=False: 데이터와 타겟을 함께 반환할지 여부. 기본값은 False입니다.﻿​sklearn.model_selection.train_test_split: 데이터를 훈련 세트/ 테스트 세트로 분할test_size=0.2: 테스트 세트의 비율을 0.2로 설정합니다._size=0.2: 테스트 세트의 비율을 0.2로 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 데이터 분할의 재현성을 위해 사용됩니다.﻿​sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​transform(X_test): 테스트 세트를 변환합니다.(X_test): 테스트 세트를 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopyfrom sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

# 모델 생성 및 학습
model = DecisionTreeClassifier(random_state=42)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​sklearn.tree.DecisionTreeClassifier: 의사결정나무 분류 모델 생성random_state=42: 랜덤 시드 값으로, 트리의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 트리의 재현성을 위해 사용됩니다.﻿​fit(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.(X_train, y_train): 모델을 훈련 세트에 맞추어 학습시킵니다.﻿​predict(X_test): 테스트 세트에 대해 예측을 수행합니다.(X_test): 테스트 세트에 대해 예측을 수행합니다.﻿​sklearn.metrics.accuracy_score: 정확도 계산accuracy_score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다._score(y_test, y_pred): 실제 값과 예측 값을 비교하여 정확도를 반환합니다.﻿​sklearn.metrics.classification_report: 분류 보고서 생성classification_report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다._report(y_test, y_pred): 정확도, 정밀도, 재현율 등의 메트릭을 포함한 보고서를 출력합니다.﻿​sklearn.metrics.confusion_matrix: 혼동 행렬 생성confusion_matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다._matrix(y_test, y_pred): 실제 값과 예측 값의 혼동 행렬을 반환합니다.﻿​2) 타이타닉 데이터☑️ 데이터 로드 및 전처리타이타닉 데이터 로드 및 전처리 {5px},타이타닉 데이터 로드 및 전처리 ﻿​PythonCopyimport seaborn as sns

# 데이터 로드
titanic = sns.load_dataset(''titanic'')
# 필요한 열 선택 및 결측값 처리
titanic = titanic[[''survived'', ''pclass'', ''sex'', ''age'', ''sibsp'', ''parch'', ''fare'', ''embarked'']].dropna()
# 성별과 탑승한 곳 인코딩
titanic[''sex''] = titanic[''sex''].map({''male'': 0, ''female'': 1},)
titanic[''embarked''] = titanic[''embarked''].map({''C'': 0, ''Q'': 1, ''S'': 2},)
# 특성과 타겟 분리
X = titanic.drop(''survived'', axis=1)
y = titanic[''survived'']
# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
​seaborn.load_dataset: seaborn의 내장 데이터셋 로드’titanic’: 타이타닉 데이터셋을 로드합니다.’titanic’: 타이타닉 데이터셋을 로드합니다.﻿​pandas.DataFrame.dropna: 결측값이 있는 행 제거pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.: 성별을 숫자로 매핑합니다.},’male’: 0, ’female’: 1: 성별을 숫자로 매핑합니다.﻿​’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.: 탑승한 곳을 숫자로 매핑합니다.},’C’: 0, ’Q’: 1, ’S’: 2: 탑승한 곳을 숫자로 매핑합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 생성 및 학습
model = DecisionTreeClassifier(random_state=42)
model.fit(X_train, y_train)
# 예측
y_pred = model.predict(X_test)
# 평가
print(f"Accuracy: {accuracy_score(y_test, y_pred)},")
print(f"Classification Report:")
print(f"Confusion Matrix:")
​', 13),
('ML', '14강. 비지도학습 : 군집화모델 - k-means clustering', ' 14강. 비지도학습 : 군집화모델 - k-means clustering📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 14강. 비지도학습 : 군집화모델 - k-means clusteringMade with📕 14강. 비지도학습 : 군집화모델 - k-means clustering[수업 목표]비지도학습 군집화모델 중 k-means clustering 에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. k-means clustering 개념02. k-means clustering 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. k-means clustering 개념✔️k-means clustering이 무엇인지 알아봅시다1) k-means clustering☑️ k-means clustering 이란?ALT☑️ 알고리즘의 단계초기화: k개의 군집 중심을 랜덤하게 설정합니다.할당 단계: 각 데이터 포인트를 가장 가까운 군집 중심에 할당합니다.업데이트 단계: 각 군집의 중심을 해당 군집에 속한 데이터 포인트들의 평균으로 업데이트합니다.반복: 할당 단계와 업데이트 단계를 군집 중심이 더 이상 변화하지 않을 때까지 반복합니다☑️ 거리 측정 방법k-means 알고리즘은 주로 유클리드 거리(Euclidean Distance)를 사용하여 데이터 포인트와 군집 중심 간의 거리를 계산합니다.d(p,q)=∑i=1n(pi−qi)2d(p, q) = ^{n}, (p_i - q_i)^2},d(p,q)=i=1∑n​(pi​−qi​)2​☑️엘보우 방법최적의 k를 선택하는 데 사용됩니다.k를 증가시키면서 각 k에 대한 군집의 응집도(또는 관성, Inertia)를 계산하고, 이를 그래프로 나타내어 그래프에서 응집도가 급격히 감소하는 지점을 찾습니다ALT02. k-means clustering 실습✔️Kaggle 쇼핑몰 데이터를 이용하여 K-means clustering 실습을 진행합니다1) 쇼핑몰 데이터☑️ 데이터셋 다운로드Kaggle에서 "Mall_Customers.csv" 파일을 다운로드합니다.다운로드한 파일을 작업 디렉토리에 저장합니다.☑️ 데이터 로드 및 전처리유방암 데이터 로드 및 전처리 {5px},유방암 데이터 로드 및 전처리 ﻿​PythonCopyimport numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import seaborn as sns

# 데이터 로드
data = pd.read_csv(''Mall_Customers.csv'')
# 필요한 열 선택 및 결측값 처리
data = data[[''Age'', ''Annual Income (k$)'', ''Spending Score (1-100)'']]
# 데이터 스케일링
scaler = StandardScaler()
data_scaled = scaler.fit_transform(data)
​pandas.read_csv: CSV 파일을 로드하여 데이터프레임 생성’Mall_Customers.csv’: 로드할 파일의 경로입니다.’Mall_Customers.csv’: 로드할 파일의 경로입니다.﻿​pandas.DataFrame.dropna: 결측값이 있는 행을 제거합니다.pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑합니다.sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​☑️ 모델 학습 및 군집화모델 학습 및 군집화 {5px},모델 학습 및 군집화 ﻿​PythonCopy# 최적의 k 찾기 (엘보우 방법)
inertia = []
K = range(1, 11)
for k in K:
    kmeans = KMeans(n_clusters=k, random_state=42)
    kmeans.fit(data_scaled)
    inertia.append(kmeans.inertia_)
# 엘보우 그래프 그리기
plt.figure(figsize=(10, 8))
plt.plot(K, inertia, ''bx-'')
plt.xlabel(''k'')
plt.ylabel(''Inertia'')
plt.title(''Elbow Method For Optimal k'')
plt.show()
# k=5로 모델 생성 및 학습
kmeans = KMeans(n_clusters=5, random_state=42)
kmeans.fit(data_scaled)
# 군집 결과 할당
data[''Cluster''] = kmeans.labels_
​sklearn.cluster.KMeans: k-means 군집화 모델을 생성합니다n_clusters=k: 군집의 수를 설정합니다._clusters=k: 군집의 수를 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 결과의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 결과의 재현성을 위해 사용됩니다.﻿​fit(data_scaled): 데이터를 학습하여 군집을 형성합니다.(data_scaled): 데이터를 학습하여 군집을 형성합니다.﻿​labels_: 각 데이터 포인트가 속한 군집 레이블을 반환합니다._: 각 데이터 포인트가 속한 군집 레이블을 반환합니다.﻿​☑️ 군집 시각화군집 시각화 {5px},군집 시각화 ﻿​PythonCopy# 2차원으로 군집 시각화 (연령 vs 소득)
plt.figure(figsize=(10, 8))
sns.scatterplot(x=data[''Age''], y=data[''Annual Income (k$)''], hue=data[''Cluster''], palette=''viridis'')
plt.title(''Clusters of customers (Age vs Annual Income)'')
plt.show()
# 2차원으로 군집 시각화 (소득 vs 지출 점수)
plt.figure(figsize=(10, 8))
sns.scatterplot(x=data[''Annual Income (k$)''], y=data[''Spending Score (1-100)''], hue=data[''Cluster''], palette=''viridis'')
plt.title(''Clusters of customers (Annual Income vs Spending Score)'')
plt.show()
​matplotlib.pyplot.plot: 그래프를 그립니다.K, inertia, ’bx-’: x축, y축 데이터와 그래프 스타일을 설정합니다., inertia, ’bx-’: x축, y축 데이터와 그래프 스타일을 설정합니다.﻿​seaborn.scatterplot: 산점도를 그립니다.x=data[’Age’]: x축 데이터=data[’Age’]: x축 데이터﻿​y=data[’Annual Income (k$)’]: y축 데이터=data[’Annual Income (k$)’]: y축 데이터﻿​hue=data[’Cluster’]: 색상에 따라 군집을 구분합니다.=data[’Cluster’]: 색상에 따라 군집을 구분합니다.﻿​palette=’viridis’: 색상 팔레트를 설정합니다.=’viridis’: 색상 팔레트를 설정합니다.﻿​', 14),
('ML', '15강. 비지도학습 : 군집화모델 - 계층적 군집화', ' 15강. 비지도학습 : 군집화모델 - 계층적 군집화📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 15강. 비지도학습 : 군집화모델 - 계층적 군집화Made with📕 15강. 비지도학습 : 군집화모델 - 계층적 군집화[수업 목표]비지도학습 군집화모델 중 계층적 군집화 에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. 계층적 군집화 개념02. 계층적 군집화 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 계층적 군집화 개념✔️계층적 군집화란 무엇인지 알아봅시다1) 계층적 군집화☑️ 계층적 군집화란?계층적 군집화(Hierarchical Clustering)는 데이터포인트를 계층 구조로 그룹화하는 방법입니다. 데이터 포인트를 점진적으로 병합하거나 분할하여 군집을 형성합니다계층적 군집화는 주로 두가지 방식으로 나뉩니다계층적 군집화는 주로 두가지 방식으로 나뉩니다﻿
병합 군집화: 각 데이터 포인트를 개별 군집으로 시작하여, 가장 가까운 군집을 반복적으로 병합합니다.병합 군집화: 각 데이터 포인트를 개별 군집으로 시작하여, 가장 가까운 군집을 반복적으로 병합합니다.﻿​분할 군집화: 모든 데이터 포인트를 하나의 군집으로 시작하여, 반복적으로 가장 멀리 떨어진 군집을 분할합니다.분할 군집화: 모든 데이터 포인트를 하나의 군집으로 시작하여, 반복적으로 가장 멀리 떨어진 군집을 분할합니다.﻿​☑️ 계층적 군집화의 작동 원리거리 행렬 계산: 데이터 포인트 간의 거리를 계산하여 거리 행렬을 만듭니다.군집 병합/분할: 거리 행렬을 기반으로 가장 가까운 군집을 병합하거나, 가장 멀리 떨어진 군집을 분할합니다.덴드로그램 생성: 군집화 과정을 시각화한 덴드로그램을 생성합니다.2) 병합 군집화 vs 분할 군집화☑️ 병합 군집화(Agglomerative Clustering)병합 군집화는 각 데이터 포인트를 개별 군집으로 시작하여, 가장 가까운 군집을 반복적으로 병합합니다.병합 군집화의 특징은 아래와 같습니다단순성: 구현이 비교적 간단합니다.계산 비용: 데이터 포인트 수가 많아질수록 계산 비용이 증가합니다.덴드로그램: 군집화 과정을 시각화한 덴드로그램을 생성할 수 있습니다.☑️ 분할 군집화(Divisive Clustering)분할 군집화는 모든 데이터 포인트를 하나의 군집으로 시작하여, 반복적으로 가장 멀리 떨어진 군집을 분할합니다. 분할 군집화의 주요 특징은 다음과 같습니다:상대적으로 복잡함: 병합 군집화보다 구현이 상대적으로 복잡할 수 있습니다.효율성: 큰 데이터셋에서 병합 군집화보다 효율적일 수 있습니다.덴드로그램: 군집화 과정을 시각화한 덴드로그램을 생성할 수 있습니다.02. 계층적 군집화 실습✔️Kaggle 쇼핑몰 데이터를 이용하여 계층적 군집화 실습을 진행합니다1) 쇼핑몰 데이터☑️ 데이터셋 다운로드Kaggle에서 "Mall_Customers.csv" 파일을 다운로드합니다.다운로드한 파일을 작업 디렉토리에 저장합니다.☑️ 데이터 로드 및 전처리쇼핑몰 데이터 로드 및 전처리 {5px},쇼핑몰 데이터 로드 및 전처리 ﻿​PythonCopyimport pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as sch

# 데이터셋 불러오기
df = pd.read_csv(''Mall_Customers.csv'')
# 데이터 확인
print(df.head())
# 필요한 열만 선택
X = df[[''Age'', ''Annual Income (k$)'', ''Spending Score (1-100)'']]
# 데이터 정규화
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
​pandas.read_csv: CSV 파일을 로드하여 데이터프레임 생성’Mall_Customers.csv’: 로드할 파일의 경로입니다.’Mall_Customers.csv’: 로드할 파일의 경로입니다.﻿​pandas.DataFrame.dropna: 결측값이 있는 행을 제거합니다.pandas.DataFrame.map: 데이터 값을 다른 값으로 매핑합니다.sklearn.preprocessing.StandardScaler: 데이터의 평균을 0, 분산을 1로 스케일링fit_transform(X_train): 훈련 세트를 스케일링하고 변환합니다._transform(X_train): 훈련 세트를 스케일링하고 변환합니다.﻿​☑️ 덴드로그램 생성덴드로그램 생성 {5px},덴드로그램 생성 ﻿​PythonCopy# 덴드로그램 생성
plt.figure(figsize=(10, 7))
dendrogram = sch.dendrogram(sch.linkage(X_scaled, method=''ward''))
plt.title(''Dendrogram'')
plt.xlabel(''Customers'')
plt.ylabel(''Euclidean distances'')
plt.show()
​sklearn.cluster.KMeans: k-means 군집화 모델을 생성합니다n_clusters=k: 군집의 수를 설정합니다._clusters=k: 군집의 수를 설정합니다.﻿​random_state=42: 랜덤 시드 값으로, 결과의 재현성을 위해 사용됩니다._state=42: 랜덤 시드 값으로, 결과의 재현성을 위해 사용됩니다.﻿​fit(data_scaled): 데이터를 학습하여 군집을 형성합니다.(data_scaled): 데이터를 학습하여 군집을 형성합니다.﻿​labels_: 각 데이터 포인트가 속한 군집 레이블을 반환합니다._: 각 데이터 포인트가 속한 군집 레이블을 반환합니다.﻿​☑️ 계층적 군집화 모델 구현덴드로그램을 통해 최적의 군집 수를 결정한 후, 계층적 군집화 모델을 구현합니다.계층적 군집화 모델 구현 {5px},계층적 군집화 모델 구현 ﻿​PythonCopy# 계층적 군집화 모델 생성
hc = AgglomerativeClustering(n_clusters=5, metric=''euclidean'', linkage=''ward'')
# 모델 학습 및 예측
y_hc = hc.fit_predict(X_scaled)
# 결과 시각화
plt.figure(figsize=(10, 7))
plt.scatter(X_scaled[y_hc == 0, 0], X_scaled[y_hc == 0, 1], s=100, c=''red'', label=''Cluster 1'')
plt.scatter(X_scaled[y_hc == 1, 0], X_scaled[y_hc == 1, 1], s=100, c=''blue'', label=''Cluster 2'')
plt.scatter(X_scaled[y_hc == 2, 0], X_scaled[y_hc == 2, 1], s=100, c=''green'', label=''Cluster 3'')
plt.scatter(X_scaled[y_hc == 3, 0], X_scaled[y_hc == 3, 1], s=100, c=''cyan'', label=''Cluster 4'')
plt.scatter(X_scaled[y_hc == 4, 0], X_scaled[y_hc == 4, 1], s=100, c=''magenta'', label=''Cluster 5'')
plt.title(''Clusters of customers'')
plt.xlabel(''Age'')
plt.ylabel(''Annual Income (k$)'')
plt.legend()
plt.show()
​matplotlib.pyplot.plot: 그래프를 그립니다.K, inertia, ’bx-’: x축, y축 데이터와 그래프 스타일을 설정합니다., inertia, ’bx-’: x축, y축 데이터와 그래프 스타일을 설정합니다.﻿​seaborn.scatterplot: 산점도를 그립니다.x=data[’Age’]: x축 데이터=data[’Age’]: x축 데이터﻿​y=data[’Annual Income (k$)’]: y축 데이터=data[’Annual Income (k$)’]: y축 데이터﻿​hue=data[’Cluster’]: 색상에 따라 군집을 구분합니다.=data[’Cluster’]: 색상에 따라 군집을 구분합니다.﻿​palette=’viridis’: 색상 팔레트를 설정합니다.=’viridis’: 색상 팔레트를 설정합니다.﻿​☑️ 모델 평가모델 평가 {5px},모델 평가 ﻿​PythonCopyfrom sklearn.metrics import silhouette_score

# 실루엣 점수 계산
silhouette_avg = silhouette_score(X_scaled, y_hc)
print(f''Silhouette Score: {silhouette_avg},'')
​', 15),
('ML', '16강. 비지도학습 : 군집화모델 - DBSCAN', ' 16강. 비지도학습 : 군집화모델 - DBSCAN📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 16강. 비지도학습 : 군집화모델 - DBSCANMade with📕 16강. 비지도학습 : 군집화모델 - DBSCAN[수업 목표]비지도학습 군집화모델 중 DBSCAN 에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. DBSCAN 개념02. DBSCAN 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. DBSCAN 개념✔️DBSCAN이 무엇인지 알아봅시다1) DBSCAN☑️ DBSCAN이란?DBSCAN(Density-Based Spatial Clustering of Applications with Noise)은 밀도 기반 군집화 알고리즘입니다DBSCAN은 데이터 밀도가 높은 영역을 군집으로 간주하고, 밀도가 낮은 영역은 노이즈로 처리합니다ALT주요 매개변수주요 매개변수﻿
eps: 두 데이터 포인트가 같은 군집에 속하기 위해 가져야 하는 최대 거리입니다.: 두 데이터 포인트가 같은 군집에 속하기 위해 가져야 하는 최대 거리입니다.﻿​min_samples: 한 군집을 형성하기 위해 필요한 최소 데이터 포인트 수입니다_samples: 한 군집을 형성하기 위해 필요한 최소 데이터 포인트 수입니다﻿​☑️ DBSCAN의 작동 원리임의의 데이터 포인트를 선택합니다.선택한 데이터 포인트의 eps 반경 내에 있는 모든 데이터 포인트를 찾습니다.eps 반경 내의 데이터수 ≥ min_samples : 해당 데이터 포인트를 중심으로 새로운 군집 형성.eps 반경 내의 데이터수 < min_samples : 해당 데이터 포인트를 노이즈로 간주군집에 속한 데이터 포인트에 대해 2~4 단계를 반복합니다.모든 데이터 포인트가 처리될 때까지 이 과정을 반복합니다.☑️ DBSCAN의 장점비구형 군집 탐지: DBSCAN은 비구형 군집을 탐지할 수 있습니다.노이즈 처리: DBSCAN은 노이즈를 효과적으로 처리할 수 있습니다.군집 수 자동 결정: DBSCAN은 군집 수를 사전에 지정할 필요가 없습니다.02. DBSCAN 실습✔️Kaggle 쇼핑몰 데이터를 이용하여 DBSCAN 실습을 진행합니다1) 쇼핑몰 데이터☑️ 데이터 로드 쇼핑몰 데이터 로드 {5px},쇼핑몰 데이터 로드 ﻿​PythonCopyimport pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as sch

# 데이터셋 불러오기
df = pd.read_csv(''Mall_Customers.csv'')
# 데이터 확인
print(df.head())
# 필요한 열만 선택
X = df[[''Age'', ''Annual Income (k$)'', ''Spending Score (1-100)'']]
# 데이터 정규화
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
​☑️ DBSCAN 수행Scikit-learn의 DBSCAN을 사용하여 DBSCAN 군집화를 수행합니다.DBSCAN수행 {5px},DBSCAN수행 ﻿​PythonCopyfrom sklearn.cluster import DBSCAN
import matplotlib.pyplot as plt
import seaborn as sns

# DBSCAN 모델 생성
dbscan = DBSCAN(eps=5, min_samples=5)
# 모델 학습 및 예측
df[''Cluster''] = dbscan.fit_predict(X)
# 군집화 결과 시각화
plt.figure(figsize=(10, 7))
sns.scatterplot(x=''Annual Income (k$)'', y=''Spending Score (1-100)'', hue=''Cluster'', data=df, palette=''viridis'')
plt.title(''DBSCAN Clustering of Mall Customers'')
plt.show()
​☑️ 파라미터 튜닝DBSCAN의 성능은 eps와 min_samples 파라미터에 크게 의존합니다. 적절한 파라미터를 찾기 위해 여러 값을 시도해볼 수 있습니다.파라미터 튜닝 {5px},파라미터 튜닝 ﻿​PythonCopy# 다양한 eps와 min_samples 값 시도
eps_values = [3, 5, 7, 10]
min_samples_values = [3, 5, 7, 10]
for eps in eps_values:
for min_samples in min_samples_values:
        dbscan = DBSCAN(eps=eps, min_samples=min_samples)
        df[''Cluster''] = dbscan.fit_predict(X)
        
        plt.figure(figsize=(10, 7))
        sns.scatterplot(x=''Annual Income (k$)'', y=''Spending Score (1-100)'', hue=''Cluster'', data=df, palette=''viridis'')
        plt.title(f''DBSCAN Clustering (eps={eps},, min_samples={min_samples},)'')
        plt.show()
​', 16),
('ML', '17강. 비지도학습 : 차원축소 - PCA', ' 17강. 비지도학습 : 차원축소 - PCA 📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 17강. 비지도학습 : 차원축소 - PCA Made with📕 17강. 비지도학습 : 차원축소 - PCA [수업 목표]비지도학습 차원축소 중 PCA 에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. PCA 개념02. PCA 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. PCA 개념✔️PCA가 무엇인지 알아봅시다1) PCA☑️ PCA란?PCA(Principal Component Analysis, 주성분 분석)는 고차원 데이터를 저차원으로 변환하는 차원 축소 기법입니다PCA는 데이터의 분산을 최대한 보존하면서, 데이터의 주요 특징을 추출해 저차원 공간으로 변환합니다데이터의 시각화, 노이즈 제거, 계산 효율성 향상 등의 이점을 얻을 수 있습니다.ALT☑️ PCA의 작동 원리데이터 표준화: 각 특성의 평균을 0, 분산을 1로 맞춥니다.공분산 행렬 계산: 데이터의 공분산 행렬을 계산합니다.고유값 및 고유벡터 계산: 공분산 행렬의 고유값과 고유벡터를 계산합니다.주성분 선택: 고유값이 큰 순서대로 고유벡터를 정렬하여 주성분을 선택합니다.데이터 변환: 선택된 주성분을 사용하여 데이터를 저차원 공간으로 변환합니다.2) 공분산 행렬 및 주성분 선택☑️ 공분산 행렬공분산 행렬은 데이터의 각 특성 간의 공분산을 나타내는 행렬입니다. 공분산 행렬을 통해 데이터의 분산과 특성 간의 상관관계를 파악할 수 있습니다.☑️ 주성분 선택고유값이 큰 순서대로 고유벡터를 정렬하여 주성분을 선택합니다.고유값이 클수록 해당 주성분이 데이터의 분산을 더 많이 설명합니다.일반적으로, 전체 분산의 95% 이상을 설명하는 주성분을 선택합니다.02. PCA 실습✔️MNIST 데이터셋을 사용한 PCA 실습을 진행합니다1) MNIST 데이터셋☑️ 데이터 로드 MNIST 데이터 로드 {5px},MNIST 데이터 로드 ﻿​PythonCopyfrom sklearn.datasets import fetch_openml
import pandas as pd

# MNIST 데이터셋 불러오기
mnist = fetch_openml(''mnist_784'', version=1)
# 데이터와 레이블 분리
X = mnist.data
y = mnist.target

# 데이터 프레임의 첫 5행 출력
print(X.head())
print(y.head())
​☑️ 데이터 표준화PCA를 수행하기 전에 데이터를 표준화합니다.데이터 표준화 {5px},데이터 표준화 ﻿​PythonCopyfrom sklearn.preprocessing import StandardScaler

# 데이터 표준화
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
​☑️ PCA 수행Scikit-learn의 PCA를 사용하여 PCA를 수행합니다.PCA수행 {5px},PCA수행 ﻿​PythonCopyfrom sklearn.decomposition import PCA

# PCA 모델 생성
pca = PCA(n_components=0.95) # 전체 분산의 95%를 설명하는 주성분 선택
# PCA 학습 및 변환
X_pca = pca.fit_transform(X_scaled)
# 변환된 데이터의 크기 확인
print(X_pca.shape)
​☑️ 주성분 확인선택된 주성분의 수와 각 주성분이 설명하는 분산 비율을 확인합니다.주성분 확인 {5px},주성분 확인 ﻿​PythonCopy# 선택된 주성분의 수
print(f''선택된 주성분의 수: {pca.n_components_},'')
# 각 주성분이 설명하는 분산 비율
print(f''각 주성분이 설명하는 분산 비율: {pca.explained_variance_ratio_},'')
# 누적 분산 비율
print(f''누적 분산 비율: {pca.explained_variance_ratio_.cumsum()},'')
​☑️ PCA 결과 시각화PCA 결과를 2차원 또는 3차원으로 시각화합니다.PCA 결과 시각화 {5px},PCA 결과 시각화 ﻿​PythonCopyimport matplotlib.pyplot as plt
import seaborn as sns

# 2차원 시각화
plt.figure(figsize=(10, 7))
sns.scatterplot(x=X_pca[:, 0], y=X_pca[:, 1], hue=y, palette=''viridis'', legend=None)
plt.title(''PCA of MNIST Dataset (2D)'')
plt.xlabel(''Principal Component 1'')
plt.ylabel(''Principal Component 2'')
plt.show()

​', 17),
('ML', '18강. 비지도학습 : 차원축소 - t-SNE', ' 18강. 비지도학습 : 차원축소 - t-SNE📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 18강. 비지도학습 : 차원축소 - t-SNEMade with📕 18강. 비지도학습 : 차원축소 - t-SNE[수업 목표]비지도학습 차원축소 중 t-SNE 에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. t-SNE 개념02. t-SNE 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. t-SNE 개념✔️t-SNE가 무엇인지 알아봅시다1) t-SNE☑️ t-SNE란?t-SNE(t-Distributed Stochastic Neighbor Embedding)는 고차원 데이터를 저차원으로 변환하여 시각화하는 차원 축소 기법입니다.데이터 포인트 간의 유사성을 보존하면서, 고차원 데이터를 2차원 또는 3차원 공간으로 변환합니다데이터의 구조와 패턴을 시각적으로 이해할 수 있습니다.☑️ t-SNE의 작동 원리고차원 공간에서의 유사성 계산: 고차원 데이터 포인트 간의 유사성을 확률 분포로 계산합니다.저차원 공간에서의 유사성 계산: 저차원 데이터 포인트 간의 유사성을 t-분포를 사용하여 계산합니다.KL 발산 최소화: 고차원 공간과 저차원 공간 간의 유사성 분포 차이를 KL 발산(Kullback-Leibler divergence)을 통해 최소화합니다.반복적 최적화: 저차원 공간에서의 데이터 포인트 위치를 반복적으로 조정하여 최적의 시각화를 얻습니다.☑️ t-SNE의 장점비선형 구조 탐지: t-SNE는 비선형 구조를 효과적으로 탐지할 수 있습니다.클러스터 시각화: t-SNE는 데이터의 클러스터를 명확하게 시각화할 수 있습니다.고차원 데이터 시각화: t-SNE는 고차원 데이터를 2차원 또는 3차원으로 변환하여 시각화할 수 있습니다.02. t-SNE 실습✔️MNIST 데이터셋을 사용한 t-SNE 실습을 진행합니다1) MNIST 데이터셋☑️ 데이터 로드 MNIST 데이터 로드 {5px},MNIST 데이터 로드 ﻿​PythonCopyfrom sklearn.datasets import fetch_openml
import pandas as pd

# MNIST 데이터셋 불러오기
mnist = fetch_openml(''mnist_784'', version=1)
# 데이터와 레이블 분리
X = mnist.data
y = mnist.target

# 데이터 프레임의 첫 5행 출력
print(X.head())
print(y.head())
​☑️ 데이터 표준화데이터 표준화 {5px},데이터 표준화 ﻿​PythonCopyfrom sklearn.preprocessing import StandardScaler

# 데이터 표준화
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
​☑️ t-SNE 수행Scikit-learn의 TSNE를 사용하여 t-SNE를 수행합니다.t-SNE수행 {5px},t-SNE수행 ﻿​PythonCopyfrom sklearn.manifold import TSNE
import matplotlib.pyplot as plt
import seaborn as sns

# t-SNE 모델 생성
tsne = TSNE(n_components=2, random_state=42)
# t-SNE 학습 및 변환
X_tsne = tsne.fit_transform(X_scaled)
# 변환된 데이터의 크기 확인
print(X_tsne.shape)
​☑️ t-SNE 결과 시각화t-SNE 결과를 2차원으로 시각화합니다.t-SNE 결과 시각화 {5px},t-SNE 결과 시각화 ﻿​PythonCopy# 2차원 시각화
plt.figure(figsize=(10, 7))
sns.scatterplot(x=X_tsne[:, 0], y=X_tsne[:, 1], hue=y, palette=''viridis'', legend=None)
plt.title(''t-SNE of MNIST Dataset (2D)'')
plt.xlabel(''t-SNE Component 1'')
plt.ylabel(''t-SNE Component 2'')
plt.show()
​', 18),
('ML', '19강. 비지도학습 : 차원축소 - LDA', ' 19강. 비지도학습 : 차원축소 - LDA📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 4주차 /📕 19강. 비지도학습 : 차원축소 - LDAMade with📕 19강. 비지도학습 : 차원축소 - LDA[수업 목표]비지도학습 차원축소 중 LDA에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. LDA 개념02. LDA실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. LDA 개념✔️LDA가 무엇인지 알아봅시다1) LDA☑️ LDA란?LDA(Linear Discriminant Analysis, 선형 판별 분석)는 차원 축소와 분류를 동시에 수행합니다.LDA는 데이터의 클래스 간 분산을 최대화하고, 클래스 내 분산을 최소화하는 방향으로 데이터를 변환합니다데이터의 분류 성능을 향상시키고, 저차원 공간에서 데이터의 구조를 시각화할 수 있습니다.ALT☑️ LDA의 작동 원리클래스별 평균 계산: 각 클래스의 평균 벡터를 계산합니다.클래스 내 분산 행렬 계산: 각 클래스 내 데이터 포인트의 분산을 계산해 클래스 내 분산 행렬을 만듭니다.클래스 간 분산 행렬 계산: 클래스 간 평균 벡터의 분산을 계산하여 클래스 간 분산 행렬을 만듭니다.고유값 및 고유벡터 계산: 클래스 내 분산 행렬의 역행렬과 클래스 간 분산 행렬의 곱의 고유값과 고유벡터를 계산합니다.선형 판별 축 선택: 고유값이 큰 순서대로 고유벡터를 정렬하여 선형 판별 축을 선택합니다.데이터 변환: 선택된 선형 판별 축을 사용하여 데이터를 저차원 공간으로 변환합니다.☑️ 선형 판별 축 선택고유값이 큰 순서대로 고유벡터를 정렬하여 선형 판별 축을 선택합니다고유값이 클수록 해당 선형 판별 축이 클래스 간 분산을 더 많이 설명합니다일반적으로, 클래스의 수 - 1 만큼의 선형 판별 축을 선택합니다02. LDA실습✔️MNIST 데이터셋을 사용한 LDA 실습을 진행합니다1) MNIST 데이터셋☑️ 데이터 로드 MNIST 데이터 로드 {5px},MNIST 데이터 로드 ﻿​PythonCopyfrom sklearn.datasets import fetch_openml
import pandas as pd

# MNIST 데이터셋 불러오기
mnist = fetch_openml(''mnist_784'', version=1)
# 데이터와 레이블 분리
X = mnist.data
y = mnist.target

# 데이터 프레임의 첫 5행 출력
print(X.head())
print(y.head())
​☑️ 데이터 표준화데이터 표준화 {5px},데이터 표준화 ﻿​PythonCopyfrom sklearn.preprocessing import StandardScaler

# 데이터 표준화
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
​☑️ LDA 수행Scikit-learn의 LinearDiscriminantAnalysis를 사용하여 LDA를 수행합니다.LDA 수행 {5px},LDA 수행 ﻿​PythonCopyfrom sklearn.discriminant_analysis import LinearDiscriminantAnalysis

# LDA 모델 생성
lda = LinearDiscriminantAnalysis(n_components=9) # 클래스의 수 - 1 만큼의 선형 판별 축 선택
# LDA 학습 및 변환
X_lda = lda.fit_transform(X_scaled, y)
# 변환된 데이터의 크기 확인
print(X_lda.shape)
​☑️ LDA 결과 시각화LDA 결과를 2차원 또는 3차원으로 시각화합니다.LDA 결과 시각화 {5px},LDA 결과 시각화 ﻿​PythonCopyimport matplotlib.pyplot as plt
import seaborn as sns

# 2차원 시각화
plt.figure(figsize=(10, 7))
sns.scatterplot(x=X_lda[:, 0], y=X_lda[:, 1], hue=y, palette=''viridis'', legend=None)
plt.title(''LDA of MNIST Dataset (2D)'')
plt.xlabel(''LDA Component 1'')
plt.ylabel(''LDA Component 2'')
plt.show()

​', 19),
('ML', '20강. 앙상블 학습 - 배깅과 부스팅', ' 20강. 앙상블 학습 - 배깅과 부스팅📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 5주차/📕 20강. 앙상블 학습 - 배깅과 부스팅Made with📕 20강. 앙상블 학습 - 배깅과 부스팅[수업 목표]앙상블 학습이란 무엇인지 알아보고, 앙상블 학습의 배깅과 부스팅에 대해 배워봅시다[목차]01. 앙상블 학습02.배깅과 부스팅 모델 구현 및 평가💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 앙상블 학습✔️앙상블 학습이란 무엇인지 배우고,  앙상블 학습의 기법인 배깅과 부스팅에 대해 알아 봅시다1) 앙상블 학습☑️ 앙상블 학습이란?앙상블 학습(Ensemble Learning)은 여러 개의 학습 모델을 결합하여 하나의 강력한 모델을 만드는 기법입니다앙상블 학습은 개별 모델의 예측을 결합함으로써, 단일 모델보다 더 높은 예측 성능과 일반화 능력을 얻을 수 있습니다.앙상블 학습의 주요 기법으로는 배깅(Bagging)과 부스팅(Boosting)이 있습니다.ALT2) 배깅 : 다수결 원리☑️ 배깅이란?배깅(Bootstrap Aggregating)은 여러 개의 학습 모델을 병렬로 학습시키고, 그 예측 결과를 평균 또는 다수결로 결합하는 앙상블 기법입니다.배깅은 데이터의 샘플링 과정에서 부트스트래핑(bootstrap) 기법을 사용하여, 원본 데이터셋에서 중복을 허용한 무작위 샘플을 생성합니다. 각 모델은 서로 다른 데이터 샘플을 학습하게 되어, 모델 간의 상관성을 줄이고 예측 성능을 향상시킵니다.☑️ 배깅의 장점과적합 감소: 여러 모델의 예측을 결합함으로써 과적합을 줄일 수 있습니다.안정성 향상: 데이터의 변동에 덜 민감해집니다.병렬 처리 가능: 각 모델을 독립적으로 학습시킬 수 있어 병렬 처리가 가능합니다.3) 부스팅: 약한 학습기를 결합한 강한 학습기☑️ 부스팅이란?부스팅(Boosting)은 여러 개의 약한 학습기(weak learner)를 순차적으로 학습시키고, 그 예측 결과를 결합하여 강한 학습기(strong learner)를 만드는 앙상블 기법입니다부스팅은 이전 모델이 잘못 예측한 데이터 포인트에 가중치를 부여하여, 다음 모델이 이를 더 잘 학습하도록 합니다. ☑️ 부스팅의 장점높은 예측 성능: 약한 학습기를 결합하여 높은 예측 성능을 얻을 수 있습니다.과적합 방지: 모델의 복잡도를 조절하여 과적합을 방지할 수 있습니다.순차적 학습: 이전 모델의 오류를 보완하는 방식으로 학습이 진행됩니다.02.배깅과 부스팅 모델 구현 및 평가✔️유방암 데이터셋을 이용하여 배깅과 부스팅모델을 구현하고 평가하는 실습을 합니다1) 유방암 데이터셋☑️ 데이터 로드 유방암 데이터셋 로드 {5px},유방암 데이터셋 로드 ﻿​PythonCopyfrom sklearn.ensemble import BaggingRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 유방암 데이터 로드
cancer_data = load_breast_cancer()
X, y = cancer_data.data, cancer_data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)
​☑️ 배깅 모델 구현 및 평가Scikit-learn의 BaggingRegressor를 사용하여 배깅 모델을 구현하고 평가합니다.배깅 모델 구현 및 평가 {5px},배깅 모델 구현 및 평가 ﻿​PythonCopy
# 배깅 모델 생성
bagging_model = BaggingRegressor(estimator=DecisionTreeRegressor(), n_estimators=100, random_state=42)
# 모델 학습
bagging_model.fit(X_train_scaled, y_train)
# 예측
y_pred_bagging = bagging_model.predict(X_test_scaled)
# 평가
mse_bagging = mean_squared_error(y_test, y_pred_bagging)
print(f''배깅 모델의 MSE: {mse_bagging},'')
​☑️ 부스팅 모델 구현 및 평가Scikit-learn의 GradientBoostingRegressor를 사용하여 부스팅 모델을 구현하고 평가합니다.부스팅 모델 구현 및 평가{5px},부스팅 모델 구현 및 평가﻿​PythonCopyfrom sklearn.ensemble import GradientBoostingRegressor

# 부스팅 모델 생성
boosting_model = GradientBoostingRegressor(n_estimators=100, random_state=42)
# 모델 학습
boosting_model.fit(X_train_scaled, y_train)
# 예측
y_pred_boosting = boosting_model.predict(X_test_scaled)
# 평가
mse_boosting = mean_squared_error(y_test, y_pred_boosting)
print(f''부스팅 모델의 MSE: {mse_boosting},'')

​', 20),
('ML', '21강. 앙상블 학습 - 랜덤 포레스트', ' 21강. 앙상블 학습 - 랜덤 포레스트📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 5주차/📕 21강. 앙상블 학습 - 랜덤 포레스트Made with📕 21강. 앙상블 학습 - 랜덤 포레스트[수업 목표]앙상블 학습의 랜덤포레스트에 대한 개념을 배우고, 데이터를 이용해 실습해 봅니다[목차]01. 랜덤 포레스트02.랜덤 포레스트 모델 구현 및 평가💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 랜덤 포레스트✔️앙상블 기법 중 하나인 랜덤 포레스트에 대해 배워봅시다1) 랜덤 포레스트☑️ 랜덤 포레스트란?랜덤 포레스트(Random Forest)는 배깅(Bagging) 기법을 기반으로 한 앙상블 학습 모델입니다.여러 개의 결정 트리(Decision Tree)를 학습시키고, 그 예측 결과를 결합하여 최종 예측을 수행합니다. 각 트리가 독립적으로 학습되기 때문에, 과적합을 방지하고 예측 성능을 향상시킬 수 있습니다.ALT☑️ 랜덤 포레스트의 구조랜덤 포레스트는 여러 개의 결정 트리로 구성됩니다.각 결정 트리는 데이터의 무작위 샘플을 사용하여 학습되며, 트리의 예측 결과를 평균 또는 다수결로 결합하여 최종 예측을 수행합니다.☑️ 랜덤 포레스트의 원리부트스트랩 샘플링: 원본 데이터셋에서 중복을 허용한 무작위 샘플을 생성합니다.결정 트리 학습: 각 부트스트랩 샘플을 사용하여 결정 트리를 학습시킵니다. 이때, 각 노드에서 무작위로 선택된 특성의 일부만을 사용하여 분할을 수행합니다.예측 결합: 모든 결정 트리의 예측 결과를 결합하여 최종 예측을 수행합니다. 회귀 문제에서는 평균을 사용하고, 분류 문제에서는 다수결을 사용합니다.☑️ 무작위성랜덤 포레스트는 두 가지 무작위성을 도입하여 모델의 다양성을 증가시키고, 과적합을 방지합니다:데이터 샘플링의 무작위성: 각 결정 트리는 원본 데이터셋에서 무작위로 샘플링된 데이터로 학습됩니다.특성 선택의 무작위성: 각 노드에서 분할을 수행할 때, 무작위로 선택된 특성의 일부만을 사용합니다.이러한 무작위성은 모델의 상관성을 줄이고, 예측 성능을 향상시킵니다.02.랜덤 포레스트 모델 구현 및 평가✔️유방암 데이터셋을 이용하여 랜덤포레스트를 구현하고 평가하는 실습을 합니다1)  유방암  데이터셋☑️ 데이터 로드 자동차 수요예측 데이터셋 로드 {5px},자동차 수요예측 데이터셋 로드 ﻿​PythonCopyfrom sklearn.ensemble import BaggingRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 유방암 데이터 로드
cancer_data = load_breast_cancer()
X, y = cancer_data.data, cancer_data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)
​☑️ 랜덤 포레스트 모델 구현 및 평가Scikit-learn의 RandomForestRegressor를 사용하여 랜덤 포레스트 모델을 구현하고 평가합니다.랜덤 포레스트 모델 구현 및 평가 {5px},랜덤 포레스트 모델 구현 및 평가 ﻿​PythonCopyfrom sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error

# 랜덤 포레스트 모델 생성
rf_model = RandomForestRegressor(n_estimators=100, random_state=42)
# 모델 학습
rf_model.fit(X_train_scaled, y_train)
# 예측
y_pred_rf = rf_model.predict(X_test_scaled)
# 평가
mse_rf = mean_squared_error(y_test, y_pred_rf)
print(f''랜덤 포레스트 모델의 MSE: {mse_rf},'')
​☑️ 중요 특성 확인중요 특성 확인 {5px},중요 특성 확인 ﻿​PythonCopyimport matplotlib.pyplot as plt
import seaborn as sns

# 특성 중요도 추출
feature_importances = rf_model.feature_importances_

# 특성 중요도를 데이터프레임으로 변환
feature_importances_df = pd.DataFrame({
''Feature'': X.columns,
''Importance'': feature_importances
},)
# 중요도 순으로 정렬
feature_importances_df = feature_importances_df.sort_values(by=''Importance'', ascending=False)
# 특성 중요도 시각화
plt.figure(figsize=(10, 7))
sns.barplot(x=''Importance'', y=''Feature'', data=feature_importances_df)
plt.title(''Feature Importances in Random Forest'')
plt.show()
​', 21),
('ML', '22강. 앙상블 학습 - 그래디언트 부스팅 머신 (GBM)', ' 22강. 앙상블 학습 - 그래디언트 부스팅 머신 (GBM) 📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 5주차/📕 22강. 앙상블 학습 - 그래디언트 부스팅 머신 (GBM) Made with📕 22강. 앙상블 학습 - 그래디언트 부스팅 머신 (GBM) [수업 목표]앙상블 학습의 그래디언트 부스팅머신에 대해서 배우고 실습해 봅시다[목차]01. 그래디언트 부스팅 머신02.GBM 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 그래디언트 부스팅 머신✔️앙상블 기법 중 하나인 그래디언트 부스팅 머신에 대해 배워봅시다1) 그래디언트 부스팅 머신☑️ 그래디언트 부스팅 머신이란?그래디언트 부스팅 머신(Gradient Boosting Machine, GBM)은 여러 개의 약한 학습기(weak learner)를 순차적으로 학습시키고, 그 예측 결과를 결합하여 강한 학습기(strong learner)를 만드는 앙상블 기법입니다.GBM은 이전 모델이 잘못 예측한 데이터 포인트에 가중치를 부여하여, 다음 모델이 이를 더 잘 학습하도록 합니다.각 트리가 독립적으로 학습되기 때문에, 과적합을 방지하고 예측 성능을 향상시킬 수 있습니다.☑️ GBM의 구조GBM은 여러 개의 결정 트리(Decision Tree)로 구성됩니다.각 결정 트리는 이전 트리의 예측 오류를 보완하는 방식으로 학습됩니다. GBM은 각 트리의 예측 결과를 가중합하여 최종 예측을 수행합니다.☑️ GBM의 원리초기 모델 학습: 첫 번째 결정 트리를 학습시켜 초기 모델을 만듭니다.잔여 오차 계산: 초기 모델의 예측 결과와 실제 값 간의 잔여 오차를 계산합니다.잔여 오차 학습: 잔여 오차를 예측하는 새로운 결정 트리를 학습시킵니다.모델 업데이트: 새로운 결정 트리를 기존 모델에 추가하여 모델을 업데이트합니다.반복: 잔여 오차가 충분히 작아질 때까지 2~4 단계를 반복합니다.☑️ 그래디언트 부스팅의 단계적 학습GBM은 단계적으로 학습을 진행하여, 이전 모델의 오류를 보완하는 방식으로 예측 성능을 향상시킵니다.각 단계에서 학습된 모델은 이전 모델의 잔여 오차를 줄이는 데 집중합니다02.GBM 실습✔️유방암 데이터셋을 이용하여 GBM을 구현하고 평가하는 실습을 합니다1) 유방암  데이터셋☑️ 데이터 로드 자동차 수요예측 데이터셋 로드 {5px},자동차 수요예측 데이터셋 로드 ﻿​PythonCopyfrom sklearn.ensemble import BaggingRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 유방암 데이터 로드
cancer_data = load_breast_cancer()
X, y = cancer_data.data, cancer_data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)
​☑️ GBM 모델 구현 및 평가Scikit-learn의 GradientBoostingRegressor를 사용하여 GBM을 구현하고 평가합니다.GBM 모델 구현 및 평가 {5px},GBM 모델 구현 및 평가 ﻿​PythonCopyfrom sklearn.ensemble import GradientBoostingRegressor
from sklearn.metrics import mean_squared_error

# GBM 모델 생성
gbm_model = GradientBoostingRegressor(n_estimators=100, learning_rate=0.1, max_depth=3, random_state=42)
# 모델 학습
gbm_model.fit(X_train_scaled, y_train)
# 예측
y_pred_gbm = gbm_model.predict(X_test_scaled)
# 평가
mse_gbm = mean_squared_error(y_test, y_pred_gbm)
print(f''GBM 모델의 MSE: {mse_gbm},'')
​', 22),
('ML', '23강. 앙상블 학습 - XGBoost', ' 23강. 앙상블 학습 - XGBoost📘[SCC] 바닥부터 시작하는 머신러닝/📚 바닥부터 시작하는 머신러닝 - 5주차/📕 23강. 앙상블 학습 - XGBoostMade with📕 23강. 앙상블 학습 - XGBoost[수업 목표]앙상블 학습의 XGBoost에 대해서 배우고 실습해 봅시다[목차]01. XGBoost02.XGBoost 실습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. XGBoost✔️앙상블 기법 중 하나인 XGBoost에 대해 배워봅시다1) XGBoost☑️ XGBoost란?XGBoost(eXtreme Gradient Boosting)는 그래디언트 부스팅 알고리즘을 기반으로 한 고성능 앙상블 학습 기법입니다.XGBoost는 효율성, 유연성, 이식성을 목표로 설계되었으며, 다양한 머신러닝 경진대회에서 우수한 성능을 보여주고 있습니다.병렬 처리, 조기 종료, 정규화 등의 기능을 통해 성능을 극대화합니다.☑️ XGBoost의 구조XGBoost는 여러 개의 결정 트리(Decision Tree)로 구성됩니다. 각 결정 트리는 이전 트리의 예측 오류를 보완하는 방식으로 학습됩니다.XGBoost는 각 트리의 예측 결과를 가중합하여 최종 예측을 수행합니다.☑️ XGBoost의 원리초기 모델 학습: 첫 번째 결정 트리를 학습시켜 초기 모델을 만듭니다.잔여 오차 계산: 초기 모델의 예측 결과와 실제 값 간의 잔여 오차를 계산합니다.잔여 오차 학습: 잔여 오차를 예측하는 새로운 결정 트리를 학습시킵니다.모델 업데이트: 새로운 결정 트리를 기존 모델에 추가하여 모델을 업데이트합니다.반복: 잔여 오차가 충분히 작아질 때까지 2~4 단계를 반복합니다.☑️ XGBoost의 장점병렬 처리: 트리의 분할을 병렬로 수행하여 학습 속도를 향상시킵니다.조기 종료: 검증 데이터셋의 성능이 향상되지 않으면 학습을 조기에 종료하여 과적합을 방지합니다.정규화: L1 및 L2 정규화를 통해 모델의 복잡도를 조절하고 과적합을 방지합니다.유연성: 다양한 손실 함수와 평가 지표를 지원하여 다양한 문제에 적용할 수 있습니다.02.XGBoost 실습✔️자동차 수요예측 데이터셋을 이용하여 XGBoost을 구현하고 평가하는 실습을 합니다1)  유방암  데이터셋☑️ 데이터 로드 자동차 수요예측 데이터셋 로드 {5px},자동차 수요예측 데이터셋 로드 ﻿​PythonCopyfrom sklearn.ensemble import BaggingRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# 유방암 데이터 로드
cancer_data = load_breast_cancer()
X, y = cancer_data.data, cancer_data.target

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# 데이터 스케일링
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)
​☑️ XGBoost 모델 구현 및 평가XGBoost 라이브러리를 사용하여 XGBoost 모델을 구현하고 평가합니다.XGBoost 모델 구현 및 평가 {5px},XGBoost 모델 구현 및 평가 ﻿​PythonCopyimport xgboost as xgb
from sklearn.metrics import mean_squared_error

# XGBoost 모델 생성
xgb_model = xgb.XGBRegressor(n_estimators=100, learning_rate=0.1, max_depth=3, random_state=42)
# 모델 학습
xgb_model.fit(X_train_scaled, y_train)
# 예측
y_pred_xgb = xgb_model.predict(X_test_scaled)
# 평가
mse_xgb = mean_squared_error(y_test, y_pred_xgb)
print(f''XGBoost 모델의 MSE: {mse_xgb},'')
​', 23),
('DL', '1. 딥러닝 개념을 잡아봅시다!', ' 1. 딥러닝 개념을 잡아봅시다!📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 1주차/📕 1. 딥러닝 개념을 잡아봅시다!Made with📕 1. 딥러닝 개념을 잡아봅시다![수업 목표]딥러닝이 무엇인지 개념에 대해 알아봅시다.딥러닝의 역사와 어디에 사용할 수 있을지 알아봅시다[목차]01. 딥러닝이란 무엇일까요?02. 딥러닝의 역사와 활용 방안03. 딥러닝을 배워야 하는 이유💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 딥러닝이란 무엇일까요?✔️딥러닝이란 무엇인지 개념에 대해서 알아봅시다!1) 딥러닝이란?☑️ 딥러닝 개념딥러닝은 인공신경망(Artificial Neural Networks)을 기반으로 한 기계 학습의 한 분야입니다.다층 신경망을 사용하여 데이터로부터 특징을 자동으로 학습하고, 이를 통해 복잡한 문제를 해결합니다.입력 데이터에서 중요한 패턴을 추출하고, 이를 바탕으로 예측, 분류, 생성 등의 다양한 작업을 수행할 수 있습니다.ALT☑️ 딥러닝의 특징비선형 추론: 딥러닝은 비선형 추론을 통해 복잡한 데이터의 패턴을 학습할 수 있습니다.다층 구조: 여러 층의 신경망을 사용하여 데이터의 고차원 특징을 학습합니다.자동 특징 추출: 데이터로부터 중요한 특징을 자동으로 추출하여 별도의 특징 공학(feature engineering) 과정이 필요 없습니다.02. 딥러닝의 역사와 활용 방안✔️딥러닝의 역사와 어디에 딥러닝을 쓸 수 있을지 배워봅시다!1) 딥러닝의 역사와 발전☑️ 발전 과정ALT☑️ 인공지능, 머신러닝, 딥러닝의 관계인공지능(AI) : 인공지능은 인간의 지능을 모방하여 문제를 해결하는 기술을 의미합니다. AI는 규칙 기반 시스템부터 자율 학습 시스템까지 다양한 접근 방식을 포함합니다.머신러닝(ML) : 머신러닝은 데이터를 이용해 모델을 학습하고, 이를 통해 예측이나 결정을 내리는 기술입니다. 머신러닝은 AI의 하위 분야로, 지도 학습, 비지도 학습, 강화 학습 등의 방법을 포함합니다.딥러닝(DL) : 딥러닝은 머신러닝의 하위 분야로, 다층 신경망을 사용하여 데이터를 학습합니다. 딥러닝은 특히 대규모 데이터와 복잡한 문제를 다루는 데 강력한 성능을 발휘합니다.ALT2) 최근의 활용 방안☑️ 이미지 인식딥러닝은 이미지 분류, 객체 검출, 이미지 생성 등 다양한 이미지 처리 작업에 활용됩니다. 예를 들어, 자율 주행 자동차는 딥러닝을 사용하여 도로 상황을 인식하고, 보행자와 차량을 감지합니다.☑️ 자연어 처리번역, 요약, 감정 분석 등 자연어 처리 작업에 사용됩니다. 예를 들어, 구글 번역은 딥러닝 모델을 사용하여 다양한 언어 간의 번역을 수행합니다.☑️ 음성 인식딥러닝은 음성 인식 시스템의 성능을 크게 향상시켰습니다.예를 들어, 애플의 Siri, 아마존의 Alexa와 같은 가상 비서는 딥러닝을 사용하여 사용자의 음성을 인식하고 명령을 수행합니다.☑️ 의료 분야의료 영상 분석, 질병 예측, 신약 개발 등 다양한 의료 분야에서도 활용됩니다.예를 들어, 딥러닝 모델은 MRI나 CT 스캔 이미지를 분석하여 암을 조기에 발견할 수 있습니다.03. 딥러닝을 배워야 하는 이유✔️그러면 왜? 딥러닝을 배워야 하는지 이유를 알아 봅시다1) 딥러닝을 배워야 하는 이유ALT', 1),
('DL', '2. 신경망의 기본 원리', ' 2. 신경망의 기본 원리📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 1주차/📕 2. 신경망의 기본 원리Made with📕 2. 신경망의 기본 원리[수업 목표]퍼셉트론의 개념과 다층 퍼셉트론에 대해 배워봅시다.신경망을 강화하기 위한 활성화 함수/손실 함수/역전파/최적화 알고리즘에 대해 배워봅시다[목차]01. 퍼셉트론과 다층 퍼셉트론(XOR 문제 포함)02. 다층 퍼셉트론(MLP)03. 활성화 함수04. 손실 함수와 최적화 알고리즘05. 역전파에 대해 알아볼까요?💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 퍼셉트론과 다층 퍼셉트론(XOR 문제 포함)✔️인공신공망의 가장 기본 단위인 퍼셉트론에 대해 배워봅시다1) 단일 퍼셉트론의 원리☑️ 단일 퍼셉트론의 개념퍼셉트론(Perceptron)은 인공 신경망의 가장 기본적인 단위로, 하나의 뉴런을 모델링한 것입니다.퍼셉트론은 입력 값을 받아 가중치(weight)를 곱하고, 이를 모두 더한 후 활성화 함수(activation function)를 통해 출력 값을 결정합니다.ALT☑️ 퍼셉트론의 수학적 표현y=f(∑i=1nwixi+b)y = f(_{i=1},^{n}, w_i x_i + b) y=f(i=1∑n​wi​xi​+b)여기서 xi는 입력 값, wi는 가중치, b는 바이어스(bias), f는 활성화 함수입니다.여기서 xi​는 입력 값, wi​는 가중치, b는 바이어스(bias), f는 활성화 함수입니다.﻿​02. 다층 퍼셉트론(MLP)✔️다층 퍼셉트론에 대해 배워봅시다1) 다층 퍼셉트론(MLP)과 XOR 문제 해결☑️ 다층 퍼셉트론(MLP)의 개념다층 퍼셉트론(Multi-Layer Perceptron, MLP)은 여러 층의 퍼셉트론을 쌓아 올린 신경망 구조입니다.MLP는 입력층(input layer), 은닉층(hidden layer), 출력층(output layer)으로 구성되며, 각 층의 뉴런들이 서로 연결되어 있습니다.ALT☑️ 입력, 은닉, 출력 레이어의 개념입력 레이어(Input Layer) : 외부 데이터가 신경망에 입력되는 부분입니다. 입력 레이어의 뉴런 수는 입력 데이터의 특징 수와 동일합니다.은닉 레이어(Hidden Layer) : 은닉 레이어는 입력 레이어와 출력 레이어 사이에 위치한 층으로, 입력 데이터를 처리하고 특징을 추출하는 역할을 합니다. 은닉 레이어의 뉴런 수와 층 수는 모델의 복잡성과 성능에 영향을 미칩니다.출력 레이어(Output Layer) : 출력 레이어는 신경망의 마지막 층으로, 최종 예측 값을 출력합니다. 출력 레이어의 뉴런 수는 예측하려는 클래스 수 또는 회귀 문제의 출력 차원과 동일합니다.☑️ XOR 문제와 MLP단일 퍼셉트론은 선형 분류기이기 때문에 XOR 문제와 같은 비선형 문제를 해결할 수 없습니다.XOR 문제는 두 입력 값이 다를 때만 1을 출력하는 문제로, 단일 퍼셉트론으로는 해결할 수 없습니다. 그러나 MLP는 은닉층을 통해 비선형성을 학습할 수 있어 XOR 문제를 해결할 수 있습니다.03. 활성화 함수✔️활성화 함수라는게 무엇인지, 신경망에서 어떤 역할을 하는지 알아보고, 어떤 종류의 활성화 함수가 있는지 배워봅시다1) 활성화 함수의 필요성과 종류☑️ 활성화 함수의 필요성활성화 함수는 신경망의 각 뉴런에서 입력값을 출력값으로 변환하는 역할을 합니다.활성화 함수가 없다면 신경망은 단순 선형변환만 수행하게 되어 복잡한 패턴을 학습할 수 없습니다.활성화 함수는 비 선형성을 도입하여 신경망이 복잡한 패턴을 학습할 수 있게합니다.☑️ 활성화 함수의 종류ReLU (Rectified Linear Unit)f(x)=max⁡(0,x)f(x) = (0, x)f(x)=max(0,x)장점: 계산이 간단하고, 기울기 소실 문제(vanishing gradient problem)를 완화합니다.단점: 음수 입력에 대해 기울기가 0이 되는 ''죽은 ReLU'' 문제가 발생할 수 있습니다.Sigmoidf(x)=11+e−xf(x) = {1 + e^{-x},}, f(x)=1+e−x1​장점: 출력 값이 0과 1 사이로 제한되어 확률을 표현하기에 적합합니다.단점: 기울기 소실 문제와 출력 값이 0 또는 1에 가까워질 때 학습이 느려지는 문제가 있습니다.Tanh (Hyperbolic Tangent)f(x)=tanh⁡(x)=ex−e−xex+e−xf(x) = (x) = },{e^x + e^{-x},},f(x)=tanh(x)=ex+e−xex−e−x​장점: 출력 값이 -1과 1 사이로 제한되어 중심이 0에 가까워집니다.단점: 기울기 소실 문제가 발생할 수 있습니다.04. 손실 함수와 최적화 알고리즘✔️손실함수와 최적화 알고리즘이 무엇인지 배우고 주요 사용하는 함수의 종류를 배워봅시다.1) 손실 함수의 역할과 주요 종류☑️ 손실함수의 역할손실 함수(Loss Function)는 모델의 예측 값과 실제 값 사이의 차이를 측정하는 함수입니다.손실 함수는 모델의 성능을 평가하고, 최적화 알고리즘을 통해 모델을 학습시키는 데 사용됩니다.☑️ 주요 손실 함수의 종류MSE (Mean Squared Error)MSE=1n∑i=1n(yi−y^i)2 = {n}, _{i=1},^{n}, (y_i - _i)^2 MSE=n1​i=1∑n​(yi​−y^​i​)2사용 분야: 회귀 문제에서 주로 사용됩니다.특징: 예측 값과 실제 값의 차이를 제곱하여 평균을 구합니다.Cross-EntropyCross-Entropy=−∑i=1nyilog⁡(y^i) = -_{i=1},^{n}, y_i (_i)Cross-Entropy=−i=1∑n​yi​log(y^​i​)사용 분야: 분류 문제에서 주로 사용됩니다.특징: 예측 확률과 실제 클래스 간의 차이를 측정합니다.2) 최적화 알고리즘의 개념과 종류☑️ 최적화 알고리즘의 개념최적화 알고리즘(Optimization Algorithm)은 손실 함수를 최소화하기 위해 모델의 가중치를 조정하는 방법입니다.최적화 알고리즘은 손실 함수의 기울기를 계산하고, 이를 바탕으로 가중치를 업데이트합니다.☑️ 주요 최적화 알고리즘의 종류SGD (Stochastic Gradient Descent)개념: 전체 데이터셋이 아닌 무작위로 선택된 일부 데이터(미니배치)를 사용하여 기울기를 계산하고 가중치를 업데이트합니다.장점: 계산이 빠르고, 큰 데이터셋에서도 효율적으로 동작합니다.단점: 최적점에 도달하기까지 진동이 발생할 수 있습니다.Adam (Adaptive Moment Estimation)개념: 모멘텀과 RMSProp을 결합한 알고리즘으로, 학습률을 적응적으로 조정합니다.장점: 빠른 수렴 속도와 안정적인 학습을 제공합니다.단점: 하이퍼파라미터 설정이 복잡할 수 있습니다.05. 역전파에 대해 알아볼까요?✔️역전파에 대해 배워봅시다1) 역전파 알고리즘의 개념과 수학적 원리☑️ 역전파 알고리즘의 개념역전파(Backpropagation)는 신경망의 가중치를 학습시키기 위해 사용되는 알고리즘입니다. 출력에서 입력 방향으로 손실 함수의 기울기를 계산하고, 이를 바탕으로 가중치를 업데이트합니다.☑️ 역전파의 수학적 원리연쇄 법칙(Chain Rule)을 사용해 손실함수의 기울기를 계산합니다.각 층의 기울기는 이전 층의 기울기와 현재 층의 기울기를 곱하여 계산합니다.이를 통해 신경망의 모든 가중치가 업데이트 됩니다ALT', 2),
('DL', '3. 딥러닝 실습 환경 구축', ' 3. 딥러닝 실습 환경 구축📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 1주차/📕 3. 딥러닝 실습 환경 구축Made with📕 3. 딥러닝 실습 환경 구축[수업 목표]딥러닝 실습을 위한 환경을 구축해 봅시다[목차]01. conda를 이용한 환경 설정02. jupyter notebook 03. 가상환경 설치 및 jupyter notebook 연결 04. pytorch 설치💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. conda를 이용한 환경 설정✔️conda를 설치하고 환경설정을 진행해 봅시다1) conda를 이용한 환경 설정☑️ conda란 무엇인가?Conda는 패키지 관리와 환경 관리를 위한 오픈 소스 플랫폼입니다. 다양한 라이브러리와 패키지를 쉽게 설치하고 관리할 수 있으며, 서로 다른 프로젝트 간의 종속성을 격리할 수 있습니다.☑️ conda 설치Anacondahttps://www.anaconda.com/downloadALTMinicondahttps://docs.anaconda.com/miniconda/ALT☑️ conda 환경 설정다음과 같이 새로운 환경을 생성하고 필요한 패키지를 설치 합니다.새로운 환경 생성 {5px},새로운 환경 생성 ﻿​PythonCopyconda create --name myenv python=3.8
​환경 활성화 {5px},환경 활성화 ﻿​PythonCopyconda activate myenv
​필요한 패키지 설치 {5px},필요한 패키지 설치 ﻿​PythonCopyconda install numpy pandas matplotlib
​02. jupyter notebook ✔️jupyter notebook이 무엇인지 알아보고 설치해 봅시다.1)  jupyter notebook 사용법☑️ jupyter notebook이란?Jupyter Notebook은 데이터 과학자와 연구자들이 코드를 작성하고 실행하며, 결과를 시각화하고 문서화할 수 있는 대화형 환경입니다.☑️ jupyter notebook 설치Jupyter Notebook은 conda를 통해 쉽게 설치할 수 있습니다jupyter notebook 설치 {5px},jupyter notebook 설치 ﻿​PythonCopyconda install jupyter
​☑️ jupyter notebook 시작하기Jupyter Notebook 실행jupyter notebook 실행 {5px},jupyter notebook 실행 ﻿​PythonCopyjupyter notebook
​이 명령어를 실행하면 웹 브라우저가 열리고, Jupyter Notebook 인터페이스가 나타납니다.새로운 노트북 생성:Jupyter Notebook 인터페이스에서 "New" 버튼을 클릭하고, "Python (myenv)"를 선택하여 새로운 노트북을 생성합니다.코드 작성 및 실행:셀(Cell)에 코드를 작성하고, 셀을 선택한 후 "Shift + Enter"를 눌러 코드를 실행합니다.03. 가상환경 설치 및 jupyter notebook 연결 ✔️가상환경이 무엇인지 알아보고 jupyter notebook과 가상환경을 연결해 봅시다1) 가상환경 설치 ☑️ 가상환경이란 무엇인가?가상환경(Virtual Environment)은 프로젝트마다 독립적인 파이썬 환경을 제공합니다.가상환경을 이용해 서로 다른 프로젝트 간의 패키지 충돌을 방지할 수 있습니다. Conda를 이용하면 쉽게 가상환경을 생성하고 관리할 수 있습니다.☑️ 가상환경 생성 및 관리가상 환경 생성 {5px},가상 환경 생성 ﻿​PythonCopyconda create --name myenv python=3.8
​여기서 myenv 는 가상환경의 이름이며 python=3.8은 설치할 파이썬 버전입니다여기서 myenv 는 가상환경의 이름이며 python=3.8은 설치할 파이썬 버전입니다﻿​가상 환경 비활성화 {5px},가상 환경 비활성화 ﻿​PythonCopyconda deactivate
​가상 환경 삭제 {5px},가상 환경 삭제 ﻿​PythonCopyconda remove --name myenv --all
​2) jupyter notebook 연결☑️ jupyter notebook 연결가상환경을 Jupyter Notebook과 연결하여 사용할 수 있습니다이를 위해 ipykernel 패키지를 설치하고, 가상환경을 Jupyter Notebook에 커널로 추가합니다.ipykernel 설치 {5px},ipykernel 설치 ﻿​PythonCopyconda install ipykernel
​가상환경을 Jupyter Notebook에 커널로 추가 {5px},가상환경을 Jupyter Notebook에 커널로 추가 ﻿​PythonCopypython -m ipykernel install --user --name myenv --display-name "Python (myenv)"
​여기서 myenv는 가상환경의 이름이며, "Python (myenv)"는 Jupyter Notebook에서 표시될 커널 이름입니다.여기서 myenv는 가상환경의 이름이며, "Python (myenv)"는 Jupyter Notebook에서 표시될 커널 이름입니다.﻿​04. pytorch 설치✔️conda를 이용해 pytorch 설치해 봅시다1) pytorch 설치☑️ pytorch란 무엇인가?PyTorch는 Facebook에서 개발한 오픈 소스 딥러닝 라이브러리로, 동적 계산 그래프(dynamic computation graph)를 지원하여 유연하고 직관적인 모델 설계가 가능합니다.☑️ pytorch 설치PyTorch는 conda를 통해 쉽게 설치할 수 있습니다.설치 명령어는 운영체제와 CUDA 버전에 따라 다르므로, PyTorch 공식 웹사이트에서 설치 명령어를 확인할 수 있습니다. 예를 들어, CUDA 10.2를 사용하는 Windows 환경에서는 다음과 같이 설치할 수 있습니다:pytorch 설치 {5px},pytorch 설치 ﻿​PythonCopyconda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
​', 3),
('DL', '4. 인공 신경망(ANN)', ' 4. 인공 신경망(ANN)📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 2주차/📕 4. 인공 신경망(ANN)Made with📕 4. 인공 신경망(ANN)[수업 목표]인공신경망의 개념에 대해서 배워보고 어떤 원리로 동작하는지 알아봅시다Pytorch로 간단한 인공신경망 모델 구현 실습을 진행해 봅시다[목차]01. 기본 구조와 동작원리02. 실습: 간단한 인공 신경망 모델 구현 (PyTorch)💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 기본 구조와 동작원리✔️ANN의 기본 구성요소와 어떤 방식으로 동작하는지 배워보고, ANN의 출력 레이어의 유형에 따라 어떻게 활용 할 수 있는지 확인해 봅시다1) ANN의 기본 구성 요소와 동작 방식☑️ ANN의 기본 구성 요소인공 신경망(Artificial Neural Network, ANN)은 생물학적 신경망을 모방하여 설계된 컴퓨팅 시스템입니다ANN은 입력층(Input Layer), 은닉층(Hidden Layer), 출력층(Output Layer)으로 구성되며, 각 층은 뉴런(Neuron)으로 이루어져 있습니다.ALT입력층
 - 입력데이터를 받아들이는 층, 입력층의 뉴런수는 입력데이터 피쳐수와 동일 - 입력데이터를 받아들이는 층, 입력층의 뉴런수는 입력데이터 피쳐수와 동일﻿
은닉층
 - 입력데이터를 처리하고 특징을 추출하는 층, 은닉층의 뉴런수와 층수는 모델의 복잡성과 성능에 영향 - 입력데이터를 처리하고 특징을 추출하는 층, 은닉층의 뉴런수와 층수는 모델의 복잡성과 성능에 영향﻿
출력층
 - 최종 예측값을 출력하는 층, 출력층의 뉴런 수는 예측하려는 클래스 수 또는 회귀문제 출력차원과 동일 - 최종 예측값을 출력하는 층, 출력층의 뉴런 수는 예측하려는 클래스 수 또는 회귀문제 출력차원과 동일﻿​☑️ 동작 방식순전파 (Forward Propagation)입력 데이터를 통해 각 층의 뉴런이 활성화되고, 최종 출력 값을 계산합니다.각 뉴런은 입력 값에 가중치(weight)를 곱하고, 바이어스(bias)를 더한 후 활성화 함수(activation function)를 통해 출력 값을 결정합니다.손실 계산 (Loss Calculation)예측 값과 실제 값의 차이를 손실 함수(Loss Function)로 계산합니다.역전파 (Backpropagation)손실 함수의 기울기를 출력층에서 입력층 방향으로 계산하고, 이를 바탕으로 가중치를 업데이트합니다.ALT2) 출력 레이어의 구성☑️ 출력레이어의 유형과 활용출력 레이어는 신경망의 최종 예측 값을 출력하는 층으로, 문제의 유형에 따라 다양한 형태로 구성될 수 있습니다.회귀 문제 (Regression):출력 레이어의 뉴런 수는 예측하려는 연속적인 값의 차원과 동일합니다.활성화 함수로는 주로 선형 함수(linear function)를 사용합니다.이진 분류 문제 (Binary Classification):출력 레이어의 뉴런 수는 1입니다.활성화 함수로는 시그모이드 함수(Sigmoid Function)를 사용하여 출력 값을 0과 1 사이의 확률로 변환합니다.다중 클래스 분류 문제 (Multi-Class Classification):출력 레이어의 뉴런 수는 예측하려는 클래스 수와 동일합니다.활성화 함수로는 소프트맥스 함수(Softmax Function)를 사용하여 각 클래스에 대한 확률을 출력합니다.02. 실습: 간단한 인공 신경망 모델 구현 (PyTorch)✔️ PyTorch를 사용하여 간단한 인공 신경망 모델을 구축하고 학습해보겠습니다. 예제로는 MNIST 데이터셋을 사용하여 숫자 이미지를 분류하는 모델을 구현하겠습니다.1)  간단한 ANN 모델 구축 및 학습☑️ PyTorch 및 필요한 라이브러리 임포트PyTorch 및 필요한 라이브러리 임포트 {5px},PyTorch 및 필요한 라이브러리 임포트 ﻿​PythonCopyimport torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms
​☑️데이터셋 로드 및 전처리데이터셋 로드 및 전처리 {5px},데이터셋 로드 및 전처리 ﻿​PythonCopy# 데이터셋 전처리
transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5,), (0.5,))
])
# MNIST 데이터셋 로드
trainset = torchvision.datasets.MNIST(root=''./data'', train=True, download=True, transform=transform)
trainloader = torch.utils.data.DataLoader(trainset, batch_size=64, shuffle=True)

testset = torchvision.datasets.MNIST(root=''./data'', train=False, download=True, transform=transform)
testloader = torch.utils.data.DataLoader(testset, batch_size=64, shuffle=False)
​☑️ 간단한 ANN 모델 정의간단한 ANN 모델 정의 {5px},간단한 ANN 모델 정의 ﻿​PythonCopyclass SimpleANN(nn.Module):
def __init__(self):
super(SimpleANN, self).__init__()
        self.fc1 = nn.Linear(28 * 28, 128) # 입력층에서 은닉층으로
        self.fc2 = nn.Linear(128, 64) # 은닉층에서 은닉층으로
        self.fc3 = nn.Linear(64, 10) # 은닉층에서 출력층으로
def forward(self, x):
        x = x.view(-1, 28 * 28) # 입력 이미지를 1차원 벡터로 변환
        x = torch.relu(self.fc1(x))
        x = torch.relu(self.fc2(x))
        x = self.fc3(x)
return x
​torch.nn.Module: 모든 신경망 모듈의 기본 클래스입니다.  사용자 정의 신경망은 이 클래스를 상속받아야 합니다.nn.Linear: 선형 변환을 적용하는 완전 연결(fully connected) 레이어를 정의합니다.nn.Linear(in_features, out_features)는 입력 특징의 수와 출력 특징의 수를 지정합니다..Linear(in_features, out_features)는 입력 특징의 수와 출력 특징의 수를 지정합니다.﻿​torch.relu: ReLU 활성화 함수를 적용합니다.view: 텐서의 크기를 변경합니다.x.view(-1, 28 * 28)은 입력 이미지를 1차원 벡터로 변환합니다..view(-1, 28 * 28)은 입력 이미지를 1차원 벡터로 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 초기화
model = SimpleANN()
# 손실 함수와 최적화 알고리즘 정의
criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9)
# 모델 학습
for epoch in range(10): # 10 에포크 동안 학습
    running_loss = 0.0
for i, data in enumerate(trainloader, 0):
        inputs, labels = data

        # 기울기 초기화
        optimizer.zero_grad()
# 순전파 + 역전파 + 최적화
        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()
# 손실 출력
        running_loss += loss.item()
if i % 100 == 99: # 매 100 미니배치마다 출력
print(f''[Epoch {epoch + 1},, Batch {i + 1},] loss: {running_loss / 100:.3f},'')
            running_loss = 0.0
print(''Finished Training'')
​nn.CrossEntropyLoss: 다중 클래스 분류 문제에서 주로 사용되는 손실 함수입니다. 예측 값과 실제 값 사이의 교차 엔트로피 손실을 계산합니다.optim.SGD: 확률적 경사 하강법(Stochastic Gradient Descent) 최적화 알고리즘을 정의합니다.  lr은 학습률, momentum은 모멘텀 값을 지정합니다.은 학습률, momentum은 모멘텀 값을 지정합니다.﻿​optimizer.zero_grad(): 이전 단계에서 계산된 기울기를 초기화합니다.loss.backward(): 역전파를 통해 기울기를 계산합니다.optimizer.step(): 계산된 기울기를 바탕으로 가중치를 업데이트합니다.☑️ 모델  평가모델 평가 {5px},모델 평가 ﻿​PythonCopycorrect = 0
total = 0
with torch.no_grad():
for data in testloader:
        images, labels = data
        outputs = model(images)
        _, predicted = torch.max(outputs.data, 1)
        total += labels.size(0)
        correct += (predicted == labels).sum().item()
print(f''Accuracy of the network on the 10000 test images: {100 * correct / total:.2f},%'')

​torch.no_grad(): 평가 단계에서는 기울기를 계산할 필요가 없으므로, 이를 비활성화하여 메모리 사용을 줄입니다.torch.max: 텐서의 최대 값을 찾습니다. torch.max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다..max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다.﻿​labels.size(0): 배치 크기를 반환합니다.(predicted == labels).sum().item(): 예측 값과 실제 값이 일치하는 샘플의 수를 계산합니다.', 4),
('DL', '5. 합성곱 신경망(CNN)', ' 5. 합성곱 신경망(CNN)📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 2주차/📕 5. 합성곱 신경망(CNN)Made with📕 5. 합성곱 신경망(CNN)[수업 목표]합성곱 신경망의 개념에 대해서 배워보고 어떤 원리로 동작하는지 알아봅시다Pytorch로 간단한 CNN 모델 구현 실습을 진행해 봅시다[목차]01. CNN의 기본 구조와 동작 원리02. 실습: CNN을 이용한 이미지 분류 (PyTorch)💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. CNN의 기본 구조와 동작 원리✔️CNN의 기본 구성요소와 어떤 방식으로 동작하는지 배워봅시다1) CNN의 기본 구조☑️ CNN의 기본 구조합성곱 신경망(Convolutional Neural Network, CNN)은 이미지와 같은 2차원 데이터의 특징을 효과적으로 추출하기 위해 설계된 신경망입니다.CNN은 주로 합성곱 층(Convolutional Layer), 풀링 층(Pooling Layer), 완전 연결 층(Fully Connected Layer)으로 구성됩니다.ALT합성곱 층 (Convolutional Layer):
 - 입력 이미지에 필터(커널)를 적용하여 특징 맵(feature map)을 생성합니다. - 입력 이미지에 필터(커널)를 적용하여 특징 맵(feature map)을 생성합니다.﻿
 - 필터는 이미지의 국소적인 패턴을 학습합니다. - 필터는 이미지의 국소적인 패턴을 학습합니다.﻿
풀링 층 (Pooling Layer)
 - 특징 맵의 크기를 줄이고, 중요한 특징을 추출합니다. - 특징 맵의 크기를 줄이고, 중요한 특징을 추출합니다.﻿
 - 주로 Max Pooling과 Average Pooling이 사용됩니다. - 주로 Max Pooling과 Average Pooling이 사용됩니다.﻿
완전 연결 층 (Fully Connected Layer)
 - 추출된 특징을 바탕으로 최종 예측을 수행합니다. - 추출된 특징을 바탕으로 최종 예측을 수행합니다.﻿
 - CNN이라는 분석레이어를 통해 추출한 특성을 바탕으로 결론을 내리는 부분 - CNN이라는 분석레이어를 통해 추출한 특성을 바탕으로 결론을 내리는 부분﻿​2) 합성곱 연산과 필터☑️ 합성곱 연산의 원리와 필터의 역할합성곱 연산은 입력 이미지에 필터(커널)를 적용하여 특징 맵을 생성하는 과정입니다. 필터는 작은 크기의 행렬로, 이미지의 국소적인 패턴을 학습합니다.합성곱 연산:필터를 이미지의 각 위치에 슬라이딩하며, 필터와 이미지의 해당 부분 간의 점곱(dot product)을 계산합니다.계산된 값은 특징 맵의 해당 위치에 저장됩니다.필터의 역할:필터는 이미지의 에지(edge), 코너(corner), 텍스처(texture) 등 다양한 국소적인 패턴을 학습합니다.여러 개의 필터를 사용하여 다양한 특징 맵을 생성할 수 있습니다.3) 풀링 레이어, 플래튼☑️ 풀링 레이어의 필요성과 종류풀링 층은 특징 맵의 크기를 줄이고, 중요한 특징을 추출하는 역할을 합니다. 풀링 층은 주로 Max Pooling과 Average Pooling이 사용됩니다.Max Pooling:필터 크기 내에서 최대 값을 선택합니다.중요한 특징을 강조하고, 불필요한 정보를 제거합니다.Average Pooling:필터 크기 내에서 평균 값을 계산합니다.특징 맵의 크기를 줄이면서, 정보의 손실을 최소화합니다.☑️ 플래튼 레이어의 역할플래튼 층(Flatten Layer)은 2차원 특징 맵을 1차원 벡터로 변환하는 역할을 합니다. 이는 완전 연결 층에 입력으로 사용하기 위해 필요합니다.4) CNN 구조와 응용☑️ 다양한 CNN 아키텍처LeNet:최초의 CNN 아키텍처 중 하나로, 손글씨 숫자 인식에 사용되었습니다.합성곱 층과 풀링 층을 반복한 후, 완전 연결 층을 사용합니다.AlexNet:2012년 이미지넷 대회에서 우승한 아키텍처로, 딥러닝의 가능성을 입증했습니다.ReLU 활성화 함수와 드롭아웃(dropout)을 도입하여 성능을 향상시켰습니다.VGG:깊고 규칙적인 구조를 가진 아키텍처로, 작은 3x3 필터를 사용하여 깊이를 증가시켰습니다.VGG16과 VGG19가 대표적인 모델입니다.02. 실습: CNN을 이용한 이미지 분류 (PyTorch)✔️ 이제 PyTorch를 사용하여 간단한 CNN 모델을 구축하고, CIFAR-10 데이터셋을 사용하여 이미지 분류를 수행해보겠습니다1)  간단한 CNN 모델을 이용한 이미지 분류 실습☑️ PyTorch 및 필요한 라이브러리 임포트PyTorch 및 필요한 라이브러리 임포트 {5px},PyTorch 및 필요한 라이브러리 임포트 ﻿​PythonCopyimport torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms
​☑️데이터셋 로드 및 전처리데이터셋 로드 및 전처리 {5px},데이터셋 로드 및 전처리 ﻿​PythonCopy# 데이터셋 전처리
transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])
# CIFAR-10 데이터셋 로드
trainset = torchvision.datasets.CIFAR10(root=''./data'', train=True, download=True, transform=transform)
trainloader = torch.utils.data.DataLoader(trainset, batch_size=64, shuffle=True)

testset = torchvision.datasets.CIFAR10(root=''./data'', train=False, download=True, transform=transform)
testloader = torch.utils.data.DataLoader(testset, batch_size=64, shuffle=False)
​☑️ 간단한 CNN 모델 정의간단한 CNN 모델 정의 {5px},간단한 CNN 모델 정의 ﻿​PythonCopyclass SimpleCNN(nn.Module):
def __init__(self):
super(SimpleCNN, self).__init__()
        self.conv1 = nn.Conv2d(3, 32, 3, padding=1) # 입력 채널 3, 출력 채널 32, 커널 크기 3x3
        self.pool = nn.MaxPool2d(2, 2) # 풀링 크기 2x2
        self.conv2 = nn.Conv2d(32, 64, 3, padding=1) # 입력 채널 32, 출력 채널 64, 커널 크기 3x3
        self.fc1 = nn.Linear(64 * 8 * 8, 512) # 완전 연결 층
        self.fc2 = nn.Linear(512, 10) # 출력 층 (10개의 클래스)
def forward(self, x):
        x = self.pool(torch.relu(self.conv1(x)))
        x = self.pool(torch.relu(self.conv2(x)))
        x = x.view(-1, 64 * 8 * 8) # 플래튼
        x = torch.relu(self.fc1(x))
        x = self.fc2(x)
return x
​nn.Conv2d: 2차원 합성곱 층을 정의합니다. nn.Conv2d(in_channels, out_channels, kernel_size, padding)은 입력 채널 수, 출력 채널 수, 커널 크기, 패딩을 지정.Conv2d(in_channels, out_channels, kernel_size, padding)은 입력 채널 수, 출력 채널 수, 커널 크기, 패딩을 지정﻿​nn.MaxPool2d: 2차원 최대 풀링 층을 정의합니다.nn.MaxPool2d(kernel_size, stride)은 풀링 크기와 스트라이드를 지정합니다..MaxPool2d(kernel_size, stride)은 풀링 크기와 스트라이드를 지정합니다.﻿​view: 텐서의 크기를 변경합니다.x.view(-1, 64 * 8 * 8)은 특징 맵을 1차원 벡터로 변환합니다..view(-1, 64 * 8 * 8)은 특징 맵을 1차원 벡터로 변환합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 모델 초기화
model = SimpleCNN()
# 손실 함수와 최적화 알고리즘 정의
criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9)
# 모델 학습
for epoch in range(10): # 10 에포크 동안 학습
    running_loss = 0.0
for i, data in enumerate(trainloader, 0):
        inputs, labels = data

        # 기울기 초기화
        optimizer.zero_grad()
# 순전파 + 역전파 + 최적화
        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()
# 손실 출력
        running_loss += loss.item()
if i % 100 == 99: # 매 100 미니배치마다 출력
print(f''[Epoch {epoch + 1},, Batch {i + 1},] loss: {running_loss / 100:.3f},'')
            running_loss = 0.0
print(''Finished Training'')
​nn.CrossEntropyLoss: 다중 클래스 분류 문제에서 주로 사용되는 손실 함수입니다. 예측 값과 실제 값 사이의 교차 엔트로피 손실을 계산합니다.optim.SGD: 확률적 경사 하강법(Stochastic Gradient Descent) 최적화 알고리즘을 정의합니다.  lr은 학습률, momentum은 모멘텀 값을 지정합니다.은 학습률, momentum은 모멘텀 값을 지정합니다.﻿​optimizer.zero_grad(): 이전 단계에서 계산된 기울기를 초기화합니다.loss.backward(): 역전파를 통해 기울기를 계산합니다.optimizer.step(): 계산된 기울기를 바탕으로 가중치를 업데이트합니다.☑️ 모델  평가모델 평가 {5px},모델 평가 ﻿​PythonCopycorrect = 0
total = 0
with torch.no_grad():
for data in testloader:
        images, labels = data
        outputs = model(images)
        _, predicted = torch.max(outputs.data, 1)
        total += labels.size(0)
        correct += (predicted == labels).sum().item()
print(f''Accuracy of the network on the 10000 test images: {100 * correct / total:.2f},%'')

​torch.no_grad(): 평가 단계에서는 기울기를 계산할 필요가 없으므로, 이를 비활성화하여 메모리 사용을 줄입니다.torch.max: 텐서의 최대 값을 찾습니다. torch.max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다..max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다.﻿​labels.size(0): 배치 크기를 반환합니다.(predicted == labels).sum().item(): 예측 값과 실제 값이 일치하는 샘플의 수를 계산합니다.', 5),
('DL', '6. 순환 신경망(RNN)', ' 6. 순환 신경망(RNN)📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 2주차/📕 6. 순환 신경망(RNN)Made with📕 6. 순환 신경망(RNN)[수업 목표]순환 신경망(RNN) 개념에 대해서 배워보고 어떤 원리로 동작하는지 알아봅시다Pytorch로 간단한 RNN 모델 구현 실습을 진행해 봅시다[목차]01. RNN의 기본 구조와 동작 원리02. RNN과 LSTM을 이용한 시계열 데이터 예측 (PyTorch)💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. RNN의 기본 구조와 동작 원리✔️RNN의 기본 구성요소와 어떤 방식으로 동작하는지 배워보고, LSTM 과 GRU에 대해 알아보고 비교해 봅시다.1) RNN의 기본 구조와 작동 방식☑️ RNN의 기본 구조순환 신경망(Recurrent Neural Network, RNN)은 시계열 데이터나 순차적인 데이터를 처리하기 위해 설계된 신경망입니다RNN은 이전 시간 단계의 정보를 현재 시간 단계로 전달해, 시퀀스 데이터의 패턴을 학습할 수 있습니다.ALT☑️ RNN의 동작 원리순환 구조RNN은 입력 데이터와 이전 시간 단계의 은닉 상태(hidden state)를 입력으로 받아, 현재 시간 단계의 은닉 상태를 출력합니다.은닉 상태는 시퀀스의 정보를 저장하고, 다음 시간 단계로 전달됩니다.동작 원리RNN은 시퀀스의 각 시간 단계에서 동일한 가중치를 공유하여, 시퀀스의 패턴을 학습합니다.순전파(Forward Propagation)와 역전파(Backpropagation Through Time, BPTT)를 통해 가중치를 학습합니다.2) LSTM 및 GRU☑️ LSTM & GRURNN은 장기 의존성 문제(long-term dependency problem)를 겪을 수 있습니다. 이를 해결하기 위해 LSTM과 GRU가 개발되었습니다.☑️ LSTM(Long Short-Term Memory)LSTM은 셀 상태(cell state)와 게이트(gate) 구조를 도입, 장기 의존성을 효과적으로 학습가능 합니다.LSTM은 입력 게이트(input gate), 출력 게이트(output gate), 망각 게이트(forget gate)를 사용하여 정보를 조절합니다.☑️ GRU (Gated Recurrent Unit)GRU는 LSTM의 변형으로, 셀 상태 대신 은닉 상태(hidden state)만을 사용하여 구조를 단순화합니다.GRU는 업데이트 게이트(update gate)와 리셋 게이트(reset gate)를 사용하여 정보를 조절합니다.☑️ 차이점LSTM은 셀 상태와 은닉 상태를 모두 사용하며, 더 복잡한 게이트 구조를 가집니다.GRU는 은닉 상태만을 사용하며, 더 간단한 게이트 구조를 가집니다. 따라서 계산 비용이 적고, 학습이 빠를 수 있습니다.ALT3) 시계열 데이터 처리☑️ RNN을 이용한 시계열 데이터 처리 방법RNN은 시계열 데이터나 순차적인 데이터를 처리하는 데 적합합니다. 예를 들어, 주식 가격 예측, 날씨 예측, 텍스트 생성 등이 있습니다.데이터 전처리:시계열 데이터를 적절한 형태로 변환하고, 정규화(normalization)합니다.입력 시퀀스와 출력 시퀀스를 정의합니다.모델 구축:RNN, LSTM, GRU 등의 모델을 정의합니다.입력 크기, 은닉 상태 크기, 출력 크기 등을 설정합니다.모델 학습:손실 함수와 최적화 알고리즘을 정의합니다.순전파와 역전파를 통해 모델을 학습시킵니다.모델 평가:테스트 데이터를 사용하여 모델의 성능을 평가합니다.02. RNN과 LSTM을 이용한 시계열 데이터 예측 (PyTorch)✔️ 이제 PyTorch를 사용하여 간단한 RNN과 LSTM 모델을 구축하고, 시계열 데이터를 예측해보겠습니다. 예제로는 Sine 파형 데이터를 사용하겠습니다.1)  간단한 RNN/LSTM 모델을 이용한 시계열 데이터 예측 실습☑️ PyTorch 및 필요한 라이브러리 임포트PyTorch 및 필요한 라이브러리 임포트 {5px},PyTorch 및 필요한 라이브러리 임포트 ﻿​PythonCopyimport torch
import torch.nn as nn
import torch.optim as optim
import numpy as np
import matplotlib.pyplot as plt
​☑️데이터셋 생성 및 전처리데이터셋 생성 및 전처리 {5px},데이터셋 생성 및 전처리 ﻿​PythonCopy# Sine 파형 데이터 생성
def create_sine_wave_data(seq_length, num_samples):
    X = []
    y = []
for _ in range(num_samples):
        start = np.random.rand()
        x = np.linspace(start, start + 2 * np.pi, seq_length)
        X.append(np.sin(x))
        y.append(np.sin(x + 0.1))
return np.array(X), np.array(y)

seq_length = 50
num_samples = 1000
X, y = create_sine_wave_data(seq_length, num_samples)
# 데이터셋을 PyTorch 텐서로 변환
X = torch.tensor(X, dtype=torch.float32).unsqueeze(-1)
y = torch.tensor(y, dtype=torch.float32).unsqueeze(-1)
​☑️ 간단한 RNN 모델 정의간단한 RNN 모델 정의 {5px},간단한 RNN 모델 정의 ﻿​PythonCopyclass SimpleRNN(nn.Module):
def __init__(self, input_size, hidden_size, output_size):
super(SimpleRNN, self).__init__()
        self.rnn = nn.RNN(input_size, hidden_size, batch_first=True)
        self.fc = nn.Linear(hidden_size, output_size)
def forward(self, x):
        h0 = torch.zeros(1, x.size(0), hidden_size) # 초기 은닉 상태
        out, _ = self.rnn(x, h0)
        out = self.fc(out[:, -1, :]) # 마지막 시간 단계의 출력
return out

input_size = 1
hidden_size = 32
output_size = 1
model = SimpleRNN(input_size, hidden_size, output_size)
​nn.RNN: 순환 신경망(RNN) 층을 정의합니다.nn.RNN(input_size, hidden_size, batch_first)는 입력 크기, 은닉 상태 크기, 배치 차원을 첫 번째로 설정합니다..RNN(input_size, hidden_size, batch_first)는 입력 크기, 은닉 상태 크기, 배치 차원을 첫 번째로 설정합니다.﻿​nn.Linear: 선형 변환을 적용하는 완전 연결(fully connected) 레이어를 정의합니다.nn.Linear(in_features, out_features)는 입력 특징의 수와 출력 특징의 수를 지정합니다..Linear(in_features, out_features)는 입력 특징의 수와 출력 특징의 수를 지정합니다.﻿​☑️ 간단한 LSTM 모델 정의간단한 LSTM 모델 정의 {5px},간단한 LSTM 모델 정의 ﻿​PythonCopyclass SimpleLSTM(nn.Module):
def __init__(self, input_size, hidden_size, output_size):
super(SimpleLSTM, self).__init__()
        self.lstm = nn.LSTM(input_size, hidden_size, batch_first=True)
        self.fc = nn.Linear(hidden_size, output_size)
def forward(self, x):
        h0 = torch.zeros(1, x.size(0), hidden_size) # 초기 은닉 상태
        c0 = torch.zeros(1, x.size(0), hidden_size) # 초기 셀 상태
        out, _ = self.lstm(x, (h0, c0))
        out = self.fc(out[:, -1, :]) # 마지막 시간 단계의 출력
return out

model = SimpleLSTM(input_size, hidden_size, output_size)
​nn.LSTM: 장단기 메모리(LSTM) 층을 정의합니다.nn.LSTM(input_size, hidden_size, batch_first)는 입력 크기, 은닉 상태 크기, 배치 차원을 첫 번째로 설정합니다..LSTM(input_size, hidden_size, batch_first)는 입력 크기, 은닉 상태 크기, 배치 차원을 첫 번째로 설정합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopy# 손실 함수와 최적화 알고리즘 정의
criterion = nn.MSELoss()
optimizer = optim.Adam(model.parameters(), lr=0.01)
# 모델 학습
num_epochs = 100
for epoch in range(num_epochs):
    outputs = model(X)
    optimizer.zero_grad()
    loss = criterion(outputs, y)
    loss.backward()
    optimizer.step()
if (epoch + 1) % 10 == 0:
print(f''Epoch [{epoch + 1},/{num_epochs},], Loss: {loss.item():.4f},'')
print(''Finished Training'')
​nn.MSELoss: 평균 제곱 오차(MSE) 손실 함수를 정의합니다.optim.Adam: Adam 최적화 알고리즘을 정의합니다. lr은 학습률을 지정합니다.optimizer.zero_grad(): 이전 단계에서 계산된 기울기를 초기화합니다.loss.backward(): 역전파를 통해 기울기를 계산합니다.optimizer.step(): 계산된 기울기를 바탕으로 가중치를 업데이트합니다.☑️ 모델 평가 및 시각화모델 평가 및 시각화 {5px},모델 평가 및 시각화 ﻿​PythonCopy# 모델 평가
model.eval()
with torch.no_grad():
    predicted = model(X).detach().numpy()
# 시각화
plt.figure(figsize=(10, 5))
plt.plot(y.numpy().flatten(), label=''True'')
plt.plot(predicted.flatten(), label=''Predicted'')
plt.legend()
plt.show()
​model.eval(): 모델을 평가 모드로 전환합니다.torch.no_grad(): 평가 단계에서는 기울기를 계산할 필요가 없으므로, 이를 비활성화하여 메모리 사용을 줄입니다.detach(): 텐서를 계산 그래프에서 분리합니다.', 6),
('DL', '7. 어텐션 (Attention) 메커니즘', ' 7. 어텐션 (Attention) 메커니즘📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 3주차/📕 7. 어텐션 (Attention) 메커니즘Made with📕 7. 어텐션 (Attention) 메커니즘[수업 목표]최근 가장 성능 좋은 매커니즘! 어텐션 메커니즘에 대해 알아봅시다Pytorch의 구현 예시를 살펴봅시다[목차]01. 개념02. 실습:  Attention 메커니즘의 구현💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 개념✔️어텐션 메커니즘의 기본 개념과 동작 방식에 대해 알아봅시다1) 어텐션의 기본 구성 요소와 동작 방식☑️ Attention 메커니즘이란?Attention 메커니즘은 시퀀스 데이터에서 중요한 부분에 더 많은 가중치를 할당하여 정보를 효율적으로 처리하는 기법주로 자연어 처리(NLP)와 시계열 데이터에서 사용되며, 기계 번역, 요약, 질의응답 시스템 등 다양한 분야에서 뛰어난 성능을 발휘☑️ 동작 방식개요Attention 메커니즘은 입력 시퀀스의 각 요소에 대해 중요도를 계산하여 가중치를 부여합니다. 이를 통해 중요한 정보에 집중하고, 불필요한 정보를 무시할 수 있습니다. Attention 메커니즘은 주로 세 가지 주요 구성 요소로 이루어집니다: Query, Key, Value.Attention 스코어 계산Attention 스코어는 Query와 Key 간의 유사도를 측정하여 중요도를 계산합니다. 이 유사도는 내적(dot product) 등을 사용하여 계산할 수 있습니다.score(Q,K)=Q⋅KT(Q, K) = Q  K^Tscore(Q,K)=Q⋅KT﻿​Softmax를 통한 가중치 계산계산된 Attention 스코어는 Softmax 함수를 통해 확률 분포로 변환됩니다. 이를 통해 가중치의 합이 1이 되도록 합니다.αi=exp⁡(score(Q,Ki))∑jexp⁡(score(Q,Kj))_i = (Q, K_i))},{_{j}, ((Q, K_j))},αi​=∑j​exp(score(Q,Kj​))exp(score(Q,Ki​))​﻿​Softmax를 통한 가중치 계산Softmax를 통해 얻어진 가중치를 Value에 곱하여 최종 Attention 출력을 계산합니다.Attention(Q,K,V)=∑iαiVi(Q, K, V) = _{i}, _i V_iAttention(Q,K,V)=∑i​αi​Vi​﻿​2)  Self-Attention과 Multi-Head Attention☑️ Self-AttentionSelf-Attention은 시퀀스 내의 각 요소가 서로를 참조하는 메커니즘입니다. 입력 시퀀스의 모든 요소가 Query, Key, Value로 사용됩니다. 이를 통해 각 요소가 시퀀스 내 다른 요소들과의 관계를 학습할 수 있습니다.예를 들어, 문장 내에서 단어 간의 관계를 학습하여 번역이나 요약에 활용할 수 있습니다.☑️ Multi-Head AttentionMulti-Head Attention은 여러 개의 Self-Attention을 병렬로 수행하는 메커니즘입니다. 각 헤드는 서로 다른 부분의 정보를 학습하며, 이를 통해 모델이 다양한 관점에서 데이터를 처리할 수 있습니다.02. 실습:  Attention 메커니즘의 구현✔️ 어텐션의 구현에 대한 코드입니다! 사실 어텐션을 직접 구현하는 일은 굉장히 적어요.
한번 훑는 정도로 넘어갑시다!1)  Attention☑️ Scaled Dot-Product AttentionScaled Dot-Product attention 메커니즘 구현{5px},Scaled Dot-Product attention 메커니즘 구현﻿​PythonCopyimport torch
import torch.nn.functional as F

def scaled_dot_product_attention(Q, K, V):
    d_k = Q.size(-1) # Key의 차원 수
    scores = torch.matmul(Q, K.transpose(-2, -1)) / torch.sqrt(torch.tensor(d_k, dtype=torch.float32)) # 유사도 계산 및 스케일링
    attn_weights = F.softmax(scores, dim=-1) # Softmax를 통한 가중치 계산
    output = torch.matmul(attn_weights, V) # 가중합을 통한 최종 출력 계산
return output, attn_weights

​☑️ Multi-Head Attention Multi-Head Attention 메커니즘 구현{5px}, Multi-Head Attention 메커니즘 구현﻿​PythonCopyclass MultiHeadAttention(nn.Module):
def __init__(self, embed_size, heads):
super(MultiHeadAttention, self).__init__()
        self.embed_size = embed_size
        self.heads = heads
        self.head_dim = embed_size // heads

        assert (
            self.head_dim * heads == embed_size
        ), "Embedding size needs to be divisible by heads"

        self.values = nn.Linear(self.head_dim, self.head_dim, bias=False)
        self.keys = nn.Linear(self.head_dim, self.head_dim, bias=False)
        self.queries = nn.Linear(self.head_dim, self.head_dim, bias=False)
        self.fc_out = nn.Linear(heads * self.head_dim, embed_size)
def forward(self, values, keys, query, mask=None):
        N = query.shape[0]
        value_len, key_len, query_len = values.shape[1], keys.shape[1], query.shape[1]
# Linear transformations
        values = self.values(values).view(N, value_len, self.heads, self.head_dim)
        keys = self.keys(keys).view(N, key_len, self.heads, self.head_dim)
        queries = self.queries(query).view(N, query_len, self.heads, self.head_dim)
# Scaled dot-product attention
        out, _ = scaled_dot_product_attention(queries, keys, values)

        out = out.view(N, query_len, self.heads * self.head_dim)
        out = self.fc_out(out)
return out

​', 7),
('DL', '8. 자연어 처리(NLP) 모델', ' 8. 자연어 처리(NLP) 모델📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 3주차/📕 8. 자연어 처리(NLP) 모델Made with📕 8. 자연어 처리(NLP) 모델[수업 목표]자연어 처리 모델에 대해서 알아보고 동작 원리에 대해서 학습해 봅시다Pytorch로 간단한 텍스트 분류 및 생성 모델 구현 실습을 진행해 봅시다[목차]01. 워드 임베딩과 시퀀스 모델링02. Transformer와 BERT💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 워드 임베딩과 시퀀스 모델링✔️워드임베딩 기법이 무엇인지 알아보고 시퀀스 모델링이 무엇인지 학습해 봅시다1) 워드 임베딩 기법☑️ 워드 임베딩 기법워드 임베딩(Word Embedding)은 단어를 고정된 크기의 벡터로 변환하는 기법으로, 단어 간의 의미적 유사성을 반영합니다.대표적인 워드 임베딩 기법으로는 Word2Vec과 GloVe가 있습니다.ALT☑️ Word2VecWord2Vec은 단어를 벡터로 변환하는 두 가지 모델(CBOW와 Skip-gram)을 제공합니다.CBOW (Continuous Bag of Words): 주변 단어(context)로 중심 단어(target)를 예측합니다.Skip-gram: 중심 단어(target)로 주변 단어(context)를 예측합니다.☑️ GloVe (Global Vectors for Word Representation)GloVe는 단어-단어 공기행렬(word-word co-occurrence matrix)을 사용, 단어 벡터를 학습합니다.전역적인 통계 정보를 활용하여 단어 간의 의미적 유사성을 반영합니다.2) 시퀀스 모델링☑️ 시퀀스 모델링의 기본 개념시퀀스 모델링(Sequence Modeling)은 순차적인 데이터를 처리하고 예측하는 모델링 기법입니다. 시퀀스 모델링은 주로 RNN, LSTM, GRU와 같은 순환 신경망을 사용합니다.ALT☑️ 입력 시퀀스시퀀스 모델링에서는 입력 데이터가 순차적인 형태로 제공됩니다.예를 들어, 텍스트 데이터는 단어의 시퀀스로 표현됩니다.☑️ 은닉 상태순환 신경망은 이전 시간 단계의 은닉 상태를 현재 시간 단계로 전달하여, 시퀀스의 패턴을 학습합니다.☑️ 출력 시퀀스시퀀스 모델링의 출력은 입력 시퀀스와 동일한 길이의 시퀀스일 수도 있고, 단일 값일 수도 있습니다.02. Transformer와 BERT✔️Transformer의 구조에 대해 알아보고 이를 이용한 BERT 모델에 대해서 배워봅시다1) Transformer의 구조와 원리☑️ Transformer의 구조와 원리Transformer는 순차적인 데이터를 병렬로 처리할 수 있는 모델로, 자연어 처리에서 뛰어난 성능을 보입니다.Transformer는 인코더-디코더(Encoder-Decoder) 구조로 구성됩니다.ALT☑️ 인코더 (Encoder)입력 시퀀스를 처리하여 인코딩된 표현을 생성합니다.각 인코더 층은 셀프 어텐션(Self-Attention)과 피드포워드 신경망(Feed-Forward Neural Network)으로 구성됩니다.☑️ 디코더 (Decoder)인코딩된 표현을 바탕으로 출력 시퀀스를 생성합니다.각 디코더 층은 셀프 어텐션, 인코더-디코더 어텐션, 피드포워드 신경망으로 구성됩니다.☑️ 어텐션 메커니즘 (Attention Mechanism)어텐션 메커니즘은 입력 시퀀스의 각 위치에 가중치를 부여하여, 중요한 정보를 강조합니다.셀프 어텐션은 입력 시퀀스 내의 단어 간의 관계를 학습합니다.2) BERT의 개념과 응용☑️ BERT란?BERT(Bidirectional Encoder Representations from Transformers)는 Transformer 인코더를 기반으로 한 사전 학습된 언어 모델입니다.BERT는 양방향으로 문맥을 이해할 수 있어, 다양한 자연어 처리 작업에서 뛰어난 성능을 보입니다.☑️ 사전 학습(Pre-training)BERT는 대규모 텍스트 코퍼스를 사용하여 사전 학습됩니다.마스킹 언어 모델(Masked Language Model)과 다음 문장 예측(Next Sentence Prediction) 작업을 통해 학습됩니다.☑️ 파인튜닝 (Fine-tuning)사전 학습된 BERT 모델을 특정 작업에 맞게 파인튜닝합니다.텍스트 분류, 질의 응답, 텍스트 생성 등 다양한 자연어 처리 작업에 적용할 수 있습니다.', 8),
('DL', '9. ResNet', ' 9. ResNet📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 4주차/📕 9. ResNetMade with📕 9. ResNet[수업 목표]비전 모델의 길을 열어준 ResNet!왜 좋은 지 한번 알아봅시다[목차]01. 개념💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 개념✔️ResNet 기본 개념과 동작 방식에 대해 알아봅시다1) ResNet 기본 개념과 동작 방식☑️ ResNet이란?ResNet(Residual Network)은 깊은 신경망을 학습하기 위해 개발된 모델로, 잔차 학습(Residual Learning) 개념을 도입하여 매우 깊은 네트워크에서도 효율적인 학습이 가능하도록 합니다. ResNet은 2015년 Microsoft Research에서 개발되었으며, 딥러닝 모델이 너무 깊어질 때 발생하는 기울기 소실 문제를 해결합니다.☑️  ResNet의 기본 개념깊은 신경망의 문제깊은 신경망은 더 많은 계층을 쌓아 복잡한 패턴을 학습할 수 있지만, 너무 깊어지면 학습이 어려워지는 문제가 있습니다. 주로 기울기 소실(Vanishing Gradient)이나 기울기 폭발(Exploding Gradient) 같은 현상 때문에 발생합니다. 이는 모델이 더 이상 깊어지지 못하고 성능이 저하되는 결과를 초래합니다.잔차 학습(Residual Learning)ResNet은 이러한 문제를 해결하기 위해 잔차 학습(Residual Learning)을 도입합니다. 잔차 학습은 각 층의 출력이 바로 다음 층의 입력으로 전달되지 않고, 이전 층의 입력을 더해줌으로써 학습을 돕습니다. 이를 통해 기울기 소실 문제를 완화할 수 있습니다.2)  ResNet의 주요 특징☑️ 기울기 소실 문제 해결ResNet은 잔차 학습을 통해 깊은 네트워크에서도 기울기 소실 문제를 해결합니다.입력을 출력에 더해줌으로써 신호가 더욱 쉽게 전달되어 학습이 원활하게 이루어집니다.☑️ 간단한 블록 구조ResNet은 간단한 블록 구조를 사용하여 네트워크를 쉽게 확장할 수 있습니다. ☑️ 높은 성능ResNet은 이미지 분류, 객체 검출 등 다양한 컴퓨터 비전 작업에서 높은 성능을 발휘합니다. 깊은 네트워크에서도 안정적으로 학습할 수 있어, 복잡한 패턴을 잘 학습합니다.3) ResNet 실습 코드PythonCopyimport torch
import torch.nn as nn
import torch.nn.functional as F

class Block(nn.Module):
def __init__(self, in_ch, out_ch, stride=1):
super(Block, self).__init__()
# 첫 번째 컨볼루션 레이어
        self.conv1 = nn.Conv2d(in_ch, out_ch, kernel_size=3, stride=stride, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(out_ch) # 배치 정규화
# 두 번째 컨볼루션 레이어
        self.conv2 = nn.Conv2d(out_ch, out_ch, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn2 = nn.BatchNorm2d(out_ch) # 배치 정규화
# 입력과 출력의 차원이 다를 경우 shortcut 경로 정의
        self.skip_connection = nn.Sequential()
if stride != 1 or in_ch != out_ch:
            self.skip_connection = nn.Sequential(
                nn.Conv2d(in_ch, out_ch, kernel_size=1, stride=stride, bias=False), # 차원 맞추기 위한 1x1 컨볼루션
                nn.BatchNorm2d(out_ch) # 배치 정규화
)
def forward(self, x):
# 첫 번째 컨볼루션 + ReLU 활성화 함수
        output = F.relu(self.bn1(self.conv1(x)))
# 두 번째 컨볼루션 후 배치 정규화
        output = self.bn2(self.conv2(output))
# shortcut 경로 출력과 현재 블록의 출력 더하기
        output += self.skip_connection(x)
# 최종 ReLU 활성화 함수 적용
        output = F.relu(output)
return output

# ResNet 모델 정의
class CustomResNet(nn.Module):
def __init__(self, block, layers, num_classes=10):
super(CustomResNet, self).__init__()
        self.initial_channels = 64 # 첫 번째 레이어의 입력 채널 수 정의
# 첫 번째 컨볼루션 레이어
        self.conv1 = nn.Conv2d(3, 64, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(64) # 배치 정규화
# ResNet의 각 레이어 생성
        self.layer1 = self._create_layer(block, 64, layers[0], stride=1)
        self.layer2 = self._create_layer(block, 128, layers[1], stride=2)
        self.layer3 = self._create_layer(block, 256, layers[2], stride=2)
        self.layer4 = self._create_layer(block, 512, layers[3], stride=2)
# 평균 풀링 레이어
        self.avgpool = nn.AdaptiveAvgPool2d((1, 1))
# 최종 완전 연결 레이어
        self.fc = nn.Linear(512, num_classes)
# ResNet의 각 레이어를 생성하는 함수
def _create_layer(self, block, out_ch, num_layers, stride):
        layer_list = []
# 첫 번째 블록은 stride를 받을 수 있음
        layer_list.append(block(self.initial_channels, out_ch, stride))
        self.initial_channels = out_ch  # 다음 블록을 위해 채널 수 업데이트
# 나머지 블록들은 기본 stride를 사용
for _ in range(1, num_layers):
            layer_list.append(block(out_ch, out_ch))
return nn.Sequential(*layer_list)
def forward(self, x):
# 첫 번째 컨볼루션 + ReLU 활성화 함수
        x = F.relu(self.bn1(self.conv1(x)))
# 각 레이어를 순차적으로 통과
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
# 평균 풀링 및 텐서의 차원 축소
        x = self.avgpool(x)
        x = torch.flatten(x, 1)
# 최종 완전 연결 레이어를 통해 클래스별 예측값 출력
        x = self.fc(x)
return x

# Custom ResNet-18 모델 생성 (각 레이어의 블록 수는 2개씩)
model = CustomResNet(Block, [2, 2, 2, 2], num_classes=10)

​', 9),
('DL', '10. 이미지 처리 모델', ' 10. 이미지 처리 모델📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 4주차/📕 10. 이미지 처리 모델Made with📕 10. 이미지 처리 모델[수업 목표]이미지 처리 모델에 대해 배워봅시다Pytorch로 간단한 YOLO 모델 구현 실습을 진행해 봅시다[목차]01. CNN기반 이미지 분류💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. CNN기반 이미지 분류✔️CNN기반의 이미지분류 아키텍쳐 소개와 YOLO, 이미지 세그멘테이션에 대해 배워봅시다1) ResNet 등 주요 CNN 아키텍쳐 소개☑️ ResNet (Residual Network)ResNet은 매우 깊은 신경망을 학습할 수 있도록 설계된 아키텍처입니다.잔차 연결(Residual Connection)을 도입하여, 기울기 소실 문제를 해결합니다.ResNet-50, ResNet-101, ResNet-152 등의 변형이 있습니다.☑️ VGGVGG는 작은 3x3 필터를 사용하여 깊이를 증가시킨 아키텍처입니다.VGG16과 VGG19가 대표적인 모델입니다.단순하고 규칙적인 구조로 인해, 다양한 변형이 가능합니다.☑️ InceptionInception은 다양한 크기의 필터를 병렬로 적용하여, 여러 수준의 특징을 추출합니다.Inception 모듈을 사용하여, 네트워크의 깊이와 너비를 동시에 확장합니다.GoogLeNet(Inception v1), Inception v2, Inception v3 등이 있습니다.2) 객체 탐지(YOLO)☑️ YOLO(You Only Look Once) YOLO(You Only Look Once)는 객체 탐지(Object Detection) 모델로, 이미지에서 객체의 위치와 클래스를 동시에 예측합니다.YOLO는 이미지 전체를 한 번에 처리하여, 빠르고 정확한 객체 탐지를 수행합니다.ALT☑️ YOLO의 개념YOLO는 이미지를 SxS 그리드로 나누고, 각 그리드 셀에서 객체의 존재 여부를 예측합니다.각 그리드 셀은 B개의 바운딩 박스와 C개의 클래스 확률을 출력합니다.☑️ YOLO의 동작 원리입력 이미지를 CNN을 통해 특징 맵으로 변환합니다.특징 맵을 SxS 그리드로 나누고, 각 그리드 셀에서 바운딩 박스와 클래스 확률을 예측합니다.예측된 바운딩 박스와 클래스 확률을 바탕으로, 객체의 위치와 클래스를 결정합니다.3) 이미지 세그멘테이션☑️ 이미지 세그멘테이션 기법과 응용이미지 세그멘테이션(Image Segmentation)은 이미지의 각 픽셀을 클래스 레이블로 분류하는 작업입니다. 이미지 세그멘테이션은 주로 시맨틱 세그멘테이션과 인스턴스 세그멘테이션 두가지로 나뉩니다ALT시맨틱 세그멘테이션 (Semantic Segmentation)
이미지의 각 픽셀을 클래스 레이블로 분류합니다이미지의 각 픽셀을 클래스 레이블로 분류합니다﻿
인스턴스 세그멘테이션 (Instance Segmentation)
시맨틱 세그멘테이션과 달리, 같은 클래스 내에서도 개별 객체를 구분합니다.시맨틱 세그멘테이션과 달리, 같은 클래스 내에서도 개별 객체를 구분합니다.﻿​☑️ 주요 세그멘테이션 모델FCN (Fully Convolutional Network): 모든 레이어를 합성곱 레이어로 구성하여, 픽셀 단위의 예측을 수행합니다.U-Net: U자형 구조를 가지며, 인코더-디코더 아키텍처를 사용하여 세그멘테이션을 수행합니다.Mask R-CNN: 객체 탐지와 인스턴스 세그멘테이션을 동시에 수행하는 모델입니다.', 10),
('DL', '11. 오토인코더', ' 11. 오토인코더📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 5주차/📕 11. 오토인코더Made with📕 11. 오토인코더[수업 목표]오토인코더의 개념에 대해 알아봅시다[목차]01. 오토인코더02. 오토인코더의 구조💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 오토인코더1) 오토인코더의 기본 개념☑️ 오토인코더란?오토인코더(Autoencoder)는 입력 데이터를 압축하고, 이를 다시 복원하는 과정을 통해 데이터를 효율적으로 표현하는 비지도 학습 모델입니다. 주로 차원 축소, 잡음 제거, 생성 모델 등 다양한 분야에서 활용됩니다.2) 동작 원리☑️ 인코더(Encoder)인코더는 입력 데이터를 저차원(latent space) 표현으로 변환하는 역할을 합니다. 인코더의 목적은 중요한 특징을 추출하고, 입력 데이터를 압축하는 것입니다.☑️ 디코더(Decoder)디코더는 인코더에 의해 생성된 저차원 표현을 다시 원래의 고차원 데이터로 복원하는 역할을 합니다. 디코더의 목적은 입력 데이터를 최대한 원본과 가깝게 복원하는 것입니다.☑️ 잠재 공간(Latent Space)잠재 공간은 인코더에 의해 생성된 저차원 표현 공간입니다. 이 공간에서는 입력 데이터의 중요한 특징만을 포함하고 있으며, 디코더는 이를 이용해 원래 데이터를 복원합니다.02. 오토인코더의 구조✔️오토인코더의 다양한 구조 및 종류에 대해 알아봅시다1) 오토인코더의 종류☑️ 기본 오토인코더ALT☑️ 변형된 오토인코더오토인코더는 다양한 변형 모델들이 존재합니다. 대표적인 예로는 다음과 같습니다:딥 오토인코더(Deep Autoencoder): 더 깊은 인코더와 디코더 구조를 가지며, 복잡한 데이터 표현을 학습합니다.변분 오토인코더(Variational Autoencoder, VAE): 확률적 잠재 공간을 사용하여 데이터의 분포를 학습합니다.희소 오토인코더(Sparse Autoencoder): 잠재 공간의 표현을 희소하게 유지하여 중요한 특징만을 학습합니다.잡음 제거 오토인코더(Denoising Autoencoder): 입력 데이터에 잡음을 추가하고, 이를 제거하는 학습을 통해 데이터 복원 능력을 향상시킵니다.', 11),
('DL', '12. 생성형 모델', ' 12. 생성형 모델 📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 5주차/📕 12. 생성형 모델 Made with📕 12. 생성형 모델 [수업 목표]생성형 모델인 GAN 과 VAE 모델에 대해 배워봅시다[목차]01. GAN(Generative Adversarial Network)02. VAE (Variational Autoencoder)💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. GAN(Generative Adversarial Network)1) GAN의 개념☑️ GAN이란GAN은 2014년 Ian Goodfellow와 그의 동료들에 의해 제안된 생성형 모델입니다GAN은 두 개의 신경망, 즉 생성자(Generator)와 판별자(Discriminator)로 구성되어 있습니다.생성자는 가짜 데이터를 생성하고, 판별자는 이 데이터가 진짜인지 가짜인지 판별하며, 서로 경쟁하여 동시에 학습합니다ALT2) 동작 원리☑️ 생성자(Generator)랜덤 노이즈 벡터를 입력으로 받아서 이를 통해 가짜 데이터를 생성합니다생성된 데이터는 판별자에게 전달되어 진짜 데이터처럼 보이도록 학습됩니다.☑️ 판별자(Discriminator)진짜 데이터와 생성된 가짜 데이터를 입력으로 받아서 이를 구분하는 역할을 합니다판별자는 진짜 데이터를 1로, 가짜 데이터를 0으로 분류하도록 학습됩니다.☑️ 경쟁 과정생성자는 판별자를 속이기 위해 점점 더 진짜 같은 데이터를 생성하려고 노력하게 됩니다.판별자는 생성자가 만든 가짜 데이터를 더 잘 구분하려고 노력하게 됩니다이 과정에서 두 네트워크는 서로 경쟁하며 동시에 발전하게 됩니다02. VAE (Variational Autoencoder)✔️생성형 모델중 하나인 VAE모델이 무엇인지, 어디에 사용할 수 있을지 알아 봅시다.1) VAE의 개념☑️ VAE이란?VAE는 2013년 Kingma와 Welling에 의해 제안된 생성형 모델입니다.VAE는 인코더(Encoder)와 디코더(Decoder)로 구성된 오토인코더의 변형입니다.인코더는 입력 데이터를 잠재 공간(latent space)으로 매핑하고, 디코더는 이 잠재 공간에서 데이터를 다시 원래 공간으로 복원합니다.VAE는 잠재 공간을 확률 분포로 모델링하여, 새로운 데이터를 생성할 수 있는 능력을 갖추게 됩니다.ALT2) 응용☑️ 이미지 생성VAE는 새로운 이미지를 생성하는 데 사용될 수 있다.예를 들어, 얼굴 이미지 데이터셋을 학습한 VAE는 새로운 얼굴 이미지를 생성할 수 있다.☑️ 데이터 압축VAE는 데이터를 잠재 공간으로 압축하고, 이를 통해 데이터 압축 및 복원에 사용할 수 있다.☑️ 노이즈 제거VAE는 노이즈가 있는 데이터를 입력으로 받아서 노이즈를 제거한 깨끗한 데이터를 출력할 수 있다.', 12),
('DL', '13. 전이학습', ' 13. 전이학습📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 5주차/📕 13. 전이학습Made with📕 13. 전이학습[수업 목표]전이학습에 대해서 배워보고, 언제 전이학습을 사용하는지 알아 봅시다Pytorch로 사전 학습된 모델을 이용해 전이학습 구현 실습을 진행해 봅시다[목차]01. 전이학습💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 전이학습✔️전이학습이란 무엇인지, 어떨때 적용하는지 배워봅시다1) 전이학습의 필요성과 원리☑️ 전이 학습이란?전이학습(Transfer Learning)은 이미 학습된 모델의 지식을 새로운 문제에 적용하는 방법입니다. 전이학습은 특히 데이터가 부족한 상황에서 유용하며, 모델 학습 시간을 단축하고 성능을 향상시킬 수 있습니다.ALT☑️ 전이학습의 필요성데이터 부족: 새로운 문제에 대한 데이터가 충분하지 않을 때, 전이학습을 통해 기존 모델의 지식을 활용할 수 있습니다.학습 시간 단축: 사전 학습된 모델 사용시, 처음부터 모델을 학습하는것 보다 빠르게 학습할 수 있습니다.성능 향상: 사전 학습된 모델은 대규모 데이터셋에서 학습되었기 때문에, 통상 더 나은 성능을 보입니다.☑️ 전이학습의 원리특징 추출기 (Feature Extractor): 사전 학습된 모델의 초기 층을 고정하고, 새로운 데이터에 맞게 마지막 층만 재학습합니다.미세 조정 (Fine-Tuning): 사전 학습된 모델 전체를 새로운 데이터에 맞게 재학습합니다.2) 전이학습을 통해 모델 만들어 보기☑️ 전이학습을 적용한 모델 구축 과정 사전 학습된 모델 로드:PyTorch에서 제공하는 사전 학습된 모델을 로드합니다.예를 들어, ResNet, VGG, Inception 등의 모델을 사용할 수 있습니다.모델 수정:사전 학습된 모델의 마지막 층을 새로운 문제에 맞게 수정합니다.예를 들어, 이미지 분류 문제에서 클래스 수를 변경합니다.모델 학습:수정된 모델을 새로운 데이터에 맞게 학습시킵니다.특징 추출기 방식이나 미세 조정 방식을 사용할 수 있습니다.', 13),
('DL', '14. 과적합 방지 기법', ' 14. 과적합 방지 기법📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 6주차/📕 14. 과적합 방지 기법Made with📕 14. 과적합 방지 기법[수업 목표]여러 과적합 방지 기법에 대해서 알아봅시다.Pytorch로  과적합 방지 기법에 대한 실습 예시![목차]01. 과적화 방지 기법02. 과적합 방지기법 실습(Pytorch)💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 과적화 방지 기법✔️과적합을 방지하기 위한 방법들에는 어떠한 것들이 있는지 배워봅시다.1) 정규화와 드롭아웃☑️ 정규화 (Normalization)정규화는 입력 데이터의 분포를 일정한 범위로 조정하여, 모델의 학습을 안정화하고 성능을 향상시키는 기법입니다.ALT배치 정규화 (Batch Normalization): 각 미니배치의 평균과 분산을 사용하여 정규화합니다. 이는 학습 속도를 높이고, 과적합을 방지하는 데 도움이 됩니다.레이어 정규화 (Layer Normalization): 각 레이어의 뉴런 출력을 정규화합니다.☑️ 드롭아웃 (Dropout)드롭아웃은 학습 과정에서 무작위로 뉴런을 비활성화하여, 모델의 과적합을 방지하는 기법입니다.드롭아웃은 학습 시에만 적용되며, 평가 시에는 모든 뉴런을 활성화합니다.2) 조기 종료와 데이터 증강☑️ 조기 종료(Early Stopping) 기법조기 종료는 검증 데이터의 성능이 더 이상 향상되지 않을 때 학습을 중단하여, 과적합을 방지하는 기법입니다.조기 종료는 학습 과정에서 검증 손실이 일정 에포크 동안 감소하지 않으면 학습을 중단합니다.☑️ 데이터 증강(Data Augmentation) 기법데이터 증강은 원본 데이터를 변형하여 새로운 데이터를 생성함으로써, 데이터셋을 확장하고 모델의 일반화 성능을 향상시키는 기법입니다.데이터 증강 기법에는 회전, 이동, 크기 조절, 색상 변환 등이 있습니다.02. 과적합 방지기법 실습(Pytorch)✔️드롭아웃과 배치 정규화를 적용한 모델 실습과 데이터 증강을 적용한 모델을 구현하는 실습을 진행해 봅시다.1)  드롭아웃과 정규화를 적용한 모델 실습☑️ PyTorch 및 필요한 라이브러리 임포트PyTorch 및 필요한 라이브러리 임포트 {5px},PyTorch 및 필요한 라이브러리 임포트 ﻿​PythonCopyimport torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms
​☑️데이터셋 로드 및 전처리데이터셋 로드 및 전처리 {5px},데이터셋 로드 및 전처리 ﻿​PythonCopy# 데이터셋 전처리
transform = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])
# CIFAR-10 데이터셋 로드
trainset = torchvision.datasets.CIFAR10(root=''./data'', train=True, download=True, transform=transform)
trainloader = torch.utils.data.DataLoader(trainset, batch_size=64, shuffle=True)

testset = torchvision.datasets.CIFAR10(root=''./data'', train=False, download=True, transform=transform)
testloader = torch.utils.data.DataLoader(testset, batch_size=64, shuffle=False)
​☑️  드롭아웃과 배치 정규화를 적용한 모델 정의 드롭아웃과 배치 정규화를 적용한 모델 정의 {5px}, 드롭아웃과 배치 정규화를 적용한 모델 정의 ﻿​PythonCopyclass CNNWithDropoutAndBatchNorm(nn.Module):
def __init__(self):
super(CNNWithDropoutAndBatchNorm, self).__init__()
        self.conv1 = nn.Conv2d(3, 64, kernel_size=3, padding=1)
        self.bn1 = nn.BatchNorm2d(64)
        self.conv2 = nn.Conv2d(64, 128, kernel_size=3, padding=1)
        self.bn2 = nn.BatchNorm2d(128)
        self.fc1 = nn.Linear(128 * 56 * 56, 256)
        self.dropout = nn.Dropout(0.5)
        self.fc2 = nn.Linear(256, 10)
def forward(self, x):
        x = torch.relu(self.bn1(self.conv1(x)))
        x = torch.max_pool2d(x, 2)
        x = torch.relu(self.bn2(self.conv2(x)))
        x = torch.max_pool2d(x, 2)
        x = x.view(x.size(0), -1)
        x = torch.relu(self.fc1(x))
        x = self.dropout(x)
        x = self.fc2(x)
return x

model = CNNWithDropoutAndBatchNorm()
​nn.Conv2d: 2차원 합성곱 층을 정의합니다. nn.Conv2d(in_channels, out_channels, kernel_size, padding)은 입력 채널 수, 출력 채널 수, 커널 크기, 패딩을 지정.Conv2d(in_channels, out_channels, kernel_size, padding)은 입력 채널 수, 출력 채널 수, 커널 크기, 패딩을 지정﻿​nn.BatchNorm2d: 2차원 배치 정규화 층을 정의합니다.nn.Dropout: 드롭아웃 층을 정의합니다. nn.Dropout(p)은 드롭아웃 확률을 지정합니다..Dropout(p)은 드롭아웃 확률을 지정합니다.﻿​torch.max_pool2d: 2차원 최대 풀링을 수행합니다.☑️ 손실 함수와 최적화 알고리즘 정의손실 함수와 최적화 알고리즘 정의 {5px},손실 함수와 최적화 알고리즘 정의 ﻿​PythonCopycriterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)
​nn.CrossEntropyLoss: 교차 엔트로피 손실 함수를 정의합니다.optim.Adam: Adam 최적화 알고리즘을 정의합니다. lr은 학습률을 지정합니다.은 학습률을 지정합니다.﻿​☑️ 모델 학습모델 학습 {5px},모델 학습 ﻿​PythonCopynum_epochs = 10
device = torch.device(''cuda'' if torch.cuda.is_available() else ''cpu'')
model = model.to(device)
for epoch in range(num_epochs):
    model.train()
    running_loss = 0.0
for i, (inputs, labels) in enumerate(trainloader):
        inputs, labels = inputs.to(device), labels.to(device)

        optimizer.zero_grad()
        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()

        running_loss += loss.item()
if i % 100 == 99: # 매 100 미니배치마다 출력
print(f''[Epoch {epoch + 1},, Batch {i + 1},] loss: {running_loss / 100:.3f},'')
            running_loss = 0.0
print(''Finished Training'')
​model.train(): 모델을 학습 모드로 전환합니다.optimizer.zero_grad(): 이전 단계에서 계산된 기울기를 초기화합니다.loss.backward(): 역전파를 통해 기울기를 계산합니다.optimizer.step(): 계산된 기울기를 바탕으로 가중치를 업데이트합니다.☑️ 모델 평가모델 평가 {5px},모델 평가 ﻿​PythonCopymodel.eval()
correct = 0
total = 0
with torch.no_grad():
for inputs, labels in testloader:
        inputs, labels = inputs.to(device), labels.to(device)
        outputs = model(inputs)
        _, predicted = torch.max(outputs.data, 1)
        total += labels.size(0)
        correct += (predicted == labels).sum().item()
print(f''Accuracy of the network on the 10000 test images: {100 * correct / total:.2f},%'')
​model.eval(): 모델을 평가 모드로 전환합니다.torch.no_grad(): 평가 단계에서는 기울기를 계산할 필요가 없으므로, 이를 비활성화하여 메모리 사용을 줄입니다.torch.max: 텐서의 최대 값을 찾습니다. torch.max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다..max(outputs.data, 1)은 각 샘플에 대해 가장 높은 확률을 가진 클래스를 반환합니다.﻿​labels.size(0): 배치 크기를 반환합니다.(predicted == labels).sum().item(): 예측 값과 실제 값이 일치하는 샘플의 수를 계산합니다.2)  데이터 증강을 통한 모델 성능 향상 실습☑️데이터셋 로드 및 전처리데이터셋 로드 및 전처리 {5px},데이터셋 로드 및 전처리 ﻿​PythonCopy# 데이터 증강 적용
transform_train = transforms.Compose([
    transforms.RandomHorizontalFlip(),
    transforms.RandomCrop(32, padding=4),
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])

transform_test = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])
# CIFAR-10 데이터셋 로드
trainset = torchvision.datasets.CIFAR10(root=''./data'', train=True, download=True, transform=transform_train)
trainloader = torch.utils.data.DataLoader(trainset, batch_size=64, shuffle=True)

testset = torchvision.datasets.CIFAR10(root=''./data'', train=False, download=True, transform=transform_test)
testloader = torch.utils.data.DataLoader(testset, batch_size=64, shuffle=False)
​transforms.RandomHorizontalFlip(): 이미지를 무작위로 수평 반전합니다.transforms.RandomCrop(size, padding): 이미지를 무작위로 자르고, 패딩을 추가합니다.☑️  드롭아웃과 배치 정규화를 적용한 모델 정의첫번째 실습에서 정의한 모델을 그대로 사용합니다. 드롭아웃과 배치 정규화를 적용한 모델 정의 {5px}, 드롭아웃과 배치 정규화를 적용한 모델 정의 ﻿​PythonCopyclass CNNWithDropoutAndBatchNorm(nn.Module):
def __init__(self):
super(CNNWithDropoutAndBatchNorm, self).__init__()
        self.conv1 = nn.Conv2d(3, 64, kernel_size=3, padding=1)
        self.bn1 = nn.BatchNorm2d(64)
        self.conv2 = nn.Conv2d(64, 128, kernel_size=3, padding=1)
        self.bn2 = nn.BatchNorm2d(128)
        self.fc1 = nn.Linear(128 * 56 * 56, 256)
        self.dropout = nn.Dropout(0.5)
        self.fc2 = nn.Linear(256, 10)
def forward(self, x):
        x = torch.relu(self.bn1(self.conv1(x)))
        x = torch.max_pool2d(x, 2)
        x = torch.relu(self.bn2(self.conv2(x)))
        x = torch.max_pool2d(x, 2)
        x = x.view(x.size(0), -1)
        x = torch.relu(self.fc1(x))
        x = self.dropout(x)
        x = self.fc2(x)
return x

model = CNNWithDropoutAndBatchNorm()
​☑️ 손실 함수와 최적화 알고리즘 정의첫번째 실습에서 정의한 손실함수와 최적화 알고리즘을 그대로 사용합니다.손실 함수와 최적화 알고리즘 정의 {5px},손실 함수와 최적화 알고리즘 정의 ﻿​PythonCopycriterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)
​☑️ 모델 학습첫번째 실습에서 정의한 모델 학습 코드를 그대로 사용합니다.모델 학습 {5px},모델 학습 ﻿​PythonCopynum_epochs = 10
device = torch.device(''cuda'' if torch.cuda.is_available() else ''cpu'')
model = model.to(device)
for epoch in range(num_epochs):
    model.train()
    running_loss = 0.0
for i, (inputs, labels) in enumerate(trainloader):
        inputs, labels = inputs.to(device), labels.to(device)

        optimizer.zero_grad()
        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()

        running_loss += loss.item()
if i % 100 == 99: # 매 100 미니배치마다 출력
print(f''[Epoch {epoch + 1},, Batch {i + 1},] loss: {running_loss / 100:.3f},'')
            running_loss = 0.0
print(''Finished Training'')
​☑️ 모델 평가첫번째 실습에서 정의한 모델 평가 코드를 그대로 사용합니다.모델 평가 {5px},모델 평가 ﻿​PythonCopymodel.eval()
correct = 0
total = 0
with torch.no_grad():
for inputs, labels in testloader:
        inputs, labels = inputs.to(device), labels.to(device)
        outputs = model(inputs)
        _, predicted = torch.max(outputs.data, 1)
        total += labels.size(0)
        correct += (predicted == labels).sum().item()
print(f''Accuracy of the network on the 10000 test images: {100 * correct / total:.2f},%'')
​', 14),
('DL', '15. 하이퍼파라미터 튜닝', ' 15. 하이퍼파라미터 튜닝📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 6주차/📕 15. 하이퍼파라미터 튜닝Made with📕 15. 하이퍼파라미터 튜닝[수업 목표]주요 하이퍼파라미터 종류와 자동화 튜닝방법에 대해 배워봅시다[목차]01. 하이퍼파라미터 튜닝 방법💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 하이퍼파라미터 튜닝 방법✔️하이퍼파라미터란 무엇인지, 주요 하이퍼파라미터엔 어떤것들이 있는지 알아보고, 자동 튜닝기법에 대해 배워봅시다.1) 주요 하이퍼파라미터와 튜닝 방법☑️ 하이퍼파라미터란?하이퍼파라미터는 모델 학습 과정에서 사용자가 설정해야 하는 값으로, 모델의 성능에 큰 영향을 미칩니다.ALT☑️ 학습률 (Learning Rate)학습률은 모델의 가중치를 업데이트하는 속도를 결정합니다.너무 크면 학습이 불안정해지고, 너무 작으면 학습이 느려집니다.일반적으로 0.1, 0.01, 0.001 등의 값을 시도해볼 수 있습니다.☑️ 배치 크기 (Batch Size)배치 크기는 한 번의 업데이트에 사용되는 데이터 샘플의 수를 결정합니다.큰 배치 크기는 학습 속도를 높이지만, 메모리 사용량이 증가합니다.일반적으로 32, 64, 128 등의 값을 시도해볼 수 있습니다.☑️ 에포크 수 (Number of Epochs)에포크 수는 전체 데이터셋을 몇 번 반복하여 학습할지를 결정합니다.너무 적으면 과소적합이 발생하고, 너무 많으면 과적합이 발생할 수 있습니다.조기 종료(Early Stopping) 기법을 사용하여 적절한 에포크 수를 결정할 수 있습니다.☑️ 모멘텀 (Momentum)모멘텀은 이전 기울기를 현재 기울기에 반영하여, 학습 속도를 높이고 진동을 줄입니다.일반적으로 0.9, 0.99 등의 값을 시도해볼 수 있습니다.☑️ 가중치 초기화 (Weight Initialization)가중치 초기화는 모델의 가중치를 초기화하는 방법을 결정합니다.일반적으로 Xavier 초기화, He 초기화 등을 사용합니다.2) 하이퍼파라미터 자동 튜닝 기법☑️ Grid Search하이퍼파라미터의 모든 조합을 시도하여 최적의 값을 찾습니다.계산 비용이 많이 들지만, 모든 조합을 탐색할 수 있습니다.☑️ Random Search하이퍼파라미터 공간에서 무작위로 값을 선택하여 최적의 값을 찾습니다.Grid Search보다 계산 비용이 적고, 더 넓은 하이퍼파라미터 공간을 탐색할 수 있습니다.☑️ Bayesian Optimization베이지안 최적화는 이전 평가 결과를 바탕으로, 다음 평가할 하이퍼파라미터를 선택합니다.계산 비용이 적고, 효율적으로 최적의 값을 찾을 수 있습니다.', 15),
('DL', '16. 모델 평가와 검증 및 Pytorch 문법 정리', ' 16. 모델 평가와 검증 및 Pytorch 문법 정리📘[SCC] 기초가 탄탄한 딥러닝/📚 기초가 탄탄한 딥러닝 - 6주차/📕 16. 모델 평가와 검증 및 Pytorch 문법 정리Made with📕 16. 모델 평가와 검증 및 Pytorch 문법 정리[수업 목표]교차검증이 무엇인지, 왜 필요한지 알아봅시다[목차]01. 교차검증 02. Pytorch 문법 정리 💡모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 교차검증 ✔️교차검증이 무엇인지, 왜 필요한지 알아보고 교차검증의 한 종류인 K-Fold 교차검증에 대해 배워봅시다1) 교차검증 개념 및 필요성☑️ 교차검증 이란?교차 검증(Cross-Validation)은 모델의 일반화 성능을 평가하기 위해 데이터를 여러 번 나누어 학습과 검증을 반복하는 방법입니다교차 검증은 모델이 과적합(overfitting)되지 않고, 새로운 데이터에 대해 잘 일반화되는지 평가하는 데 유용합니다.ALT - 데이터를 여러 개의 폴드(fold)로 나누고, 각 폴드에 대해 학습과 검증을 반복합니다. - 데이터를 여러 개의 폴드(fold)로 나누고, 각 폴드에 대해 학습과 검증을 반복합니다.﻿
 - 각 폴드가 한 번씩 검증 데이터로 사용되며, 나머지 폴드는 학습 데이터로 사용됩니다.{
- 각 폴드가 한 번씩 검증 데이터로 사용되며, 나머지 폴드는 학습 데이터로 사용됩니다.}, - 각 폴드가 한 번씩 검증 데이터로 사용되며, 나머지 폴드는 학습 데이터로 사용됩니다.﻿
 - 모든 폴드에 대한 검증 결과를 평균하여 모델의 성능을 평가합니다.{
- 모든 폴드에 대한 검증 결과를 평균하여 모델의 성능을 평가합니다.}, - 모든 폴드에 대한 검증 결과를 평균하여 모델의 성능을 평가합니다.﻿​☑️ 교차검증의 필요성과적합 방지: 교차 검증은 모델이 특정 데이터셋에 과적합되지 않도록 도와줍니다.일반화 성능 평가: 교차 검증은 모델의 일반화 성능을 더 정확하게 평가할 수 있습니다.데이터 효율성: 교차 검증은 데이터를 최대한 활용하여 모델을 평가할 수 있습니다.2) K-Fold 교차 검증☑️ K-Fold 교차 검증의 원리데이터를 K개의 폴드로 나눕니다.각 폴드가 한 번씩 검증 데이터로 사용되며, 나머지 K-1개의 폴드는 학습 데이터로 사용됩니다.K번의 학습과 검증을 반복하여, 각 폴드에 대한 검증 결과를 평균하여 모델의 성능을 평가합니다.☑️ 적용 방법데이터를 K개의 폴드로 나누고, 각 폴드에 대해 학습과 검증을 수행합니다.각 폴드에 대한 검증 결과를 저장하고, 최종적으로 평균하여 모델의 성능을 평가합니다.02. Pytorch 문법 정리 ✔️한번 문법을 살펴볼까요?1) Pytorch☑️ PytorchPyTorch는 딥러닝 프레임워크로, 유연성과 사용 편의성을 제공하여 연구와 개발에서 널리 사용되고 있습니다. PyTorch의 주요 API를 기법별, 모델별, 기능별로 정리하겠습니다.PyTorch의 주요 API 정리1. 모델 구축 및 학습기본 모델 구축torch.nn.Module: 모든 신경망 모델의 기본 클래스입니다.PythonCopyimport torch.nn as nn

class MyModel(nn.Module):
def __init__(self):
super(MyModel, self).__init__()
        self.layer1 = nn.Linear(10, 20)
def forward(self, x):
        x = self.layer1(x)
return x

​손실 함수torch.nn.CrossEntropyLoss: 분류 문제에 주로 사용됩니다.PythonCopyloss_fn = nn.CrossEntropyLoss()

​torch.nn.MSELoss: 회귀 문제에 주로 사용됩니다.PythonCopyloss_fn = nn.MSELoss()

​최적화 알고리즘torch.optim.SGD: 확률적 경사 하강법 최적화 알고리즘입니다.PythonCopyoptimizer = torch.optim.SGD(model.parameters(), lr=0.01)

​torch.optim.Adam: Adam 최적화 알고리즘입니다.PythonCopyoptimizer = torch.optim.Adam(model.parameters(), lr=0.001)

​2. 데이터 로드 및 전처리데이터셋 및 데이터로더torch.utils.data.Dataset: 사용자 정의 데이터셋을 만들기 위한 기본 클래스입니다.PythonCopyfrom torch.utils.data import Dataset

class MyDataset(Dataset):
def __init__(self, data, targets):
        self.data = data
        self.targets = targets

    def __len__(self):
return len(self.data)
def __getitem__(self, idx):
return self.data[idx], self.targets[idx]

​torch.utils.data.DataLoader: 미니 배치 학습을 위한 데이터 로더입니다.PythonCopyfrom torch.utils.data import DataLoader

dataset = MyDataset(data, targets)
dataloader = DataLoader(dataset, batch_size=32, shuffle=True)

​데이터 변환torchvision.transforms: 이미지 데이터 변환을 위한 유틸리티입니다.PythonCopyfrom torchvision import transforms

transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5,), (0.5,))
])

​3. GPU 사용GPU 설정 및 텐서 이동모델을 GPU로 이동PythonCopydevice = torch.device(''cuda'' if torch.cuda.is_available() else ''cpu'')
model.to(device)

​텐서를 GPU로 이동PythonCopyinputs, targets = inputs.to(device), targets.to(device)

​4. 모델 기법별 API합성곱 신경망 (CNN)torch.nn.Conv2d: 2D 합성곱 레이어입니다.PythonCopyconv_layer = nn.Conv2d(in_channels=1, out_channels=32, kernel_size=3, stride=1, padding=1)

​순환 신경망 (RNN)torch.nn.RNN: 기본 순환 신경망 레이어입니다.PythonCopyrnn_layer = nn.RNN(input_size=10, hidden_size=20, num_layers=2, batch_first=True)

​torch.nn.LSTM: LSTM 레이어입니다.PythonCopylstm_layer = nn.LSTM(input_size=10, hidden_size=20, num_layers=2, batch_first=True)

​torch.nn.GRU: GRU 레이어입니다.PythonCopygru_layer = nn.GRU(input_size=10, hidden_size=20, num_layers=2, batch_first=True)

​트랜스포머 (Transformer)torch.nn.Transformer: 트랜스포머 모델입니다.PythonCopytransformer_model = nn.Transformer(nhead=8, num_encoder_layers=6)

​torch.nn.TransformerEncoderLayer: 트랜스포머 인코더 레이어입니다.PythonCopyencoder_layer = nn.TransformerEncoderLayer(d_model=512, nhead=8)

​5. 유틸리티 함수저장 및 로드모델 저장PythonCopytorch.save(model.state_dict(), ''model.pth'')

​모델 로드PythonCopymodel.load_state_dict(torch.load(''model.pth''))
model.eval()

​학습 및 평가 모드 설정모델을 학습 모드로 설정PythonCopymodel.train()

​모델을 평가 모드로 설정PythonCopymodel.eval()

​', 16),
('LLM', 'LLM이란? 강의소개!', 'LLM이란? 강의소개!📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 1주차/📕LLM이란? 강의소개!📕LLM이란? 강의소개!수업 목표LLM이 무엇인지, 그 동작 원리에 대해 알아봅니다.LLM을 실무 프로젝트에서 어떻게 활용할 수 있는지 배웁니다.RAG, Vector DB, LangChain 등 최신 기술을 이해하고 이를 활용한 프로젝트를 진행하는 방법을 학습합니다.목차강좌 소개LLM이란?LLM 동작 원리LLM의 랜덤성과 조건성왜 LLM의 원리를 알아야 할까?LLM의 원리 요약추가적으로 알아두면 좋은 것!정리강좌 소개❗이번 강좌에서는 대형 언어 모델(LLM, Large Language Model)이 무엇인지, 그리고 그 동작 원리가 어떻게 되는지를 간단하게 배웁니다. 이를 통해 LLM을 활용한 다양한 프로젝트에서 효과적으로 활용할 수 있는 기초 개념을 다질 거예요.기대 효과LLM의 기본 개념을 이해하고 설명할 수 있다.LLM의 동작 방식을 알고, 관련된 기술적 요소들을 학습할 준비가 된다.RAG, Vector DB, LangChain 같은 최신 기술 트렌드에 대한 이해도를 높인다.최신 기술을 활용한 자신만의 Chat Service를 만들 수 있다!대상 수강생최신 AI에 관심 있는 사람들LLM을 프로젝트에 도입하고 싶은 사람!언어형 모델의 실제 동작 원리가 궁금한 분들RAG, LangChain과 같은 최신 기술을 배우고 싶은 분들LLM이란?📚LLMLLM(Large Language Model)은 대규모 텍스트 데이터를 학습하여 자연어를 이해하고 생성할 수 있는 AI 모델입니다. 기본적으로 자연어 처리(NLP)의 다양한 작업, 예를 들면 번역, 질문 응답, 텍스트 생성 등을 할 수 있습니다.간단한 정의대형 언어 모델(LLM)은 수십억 개의 파라미터를 기반으로 한 인공지능입니다. 이를 통해, 마치 사람처럼 문맥을 파악하고 자연스럽게 대답할 수 있는 능력을 갖췄습니다.LLM 동작 원리📢LLM의 동작은 크게 세 가지 단계로 나뉩니다.1️⃣학습(Training)LLM은 대규모 텍스트 데이터셋을 이용해 학습합니다.여기서 중요한 개념은 "패턴 인식"이에요. 수많은 텍스트에서 단어와 문장의 패턴을 찾아내어, 새로운 문장이나 답변을 생성할 때 그 패턴을 적용하죠.2️⃣추론(Inference)학습된 LLM은 질문이나 입력을 받으면, 그에 맞는 추론을 통해 답변을 생성합니다.이때, 이전의 맥락을 기억하고 활용하면서 답을 만들어내죠.3️⃣미세 조정(Fine-tuning)LLM은 특정 도메인이나 용도에 맞춰 추가 학습(미세 조정)할 수 있습니다.예를 들어, 의료나 법률과 같은 특수한 분야에 맞는 데이터를 추가로 학습시키면 해당 분야에 대한 답변의 정확성이 높아집니다.LLM을 개인이 바닥부터 만들기란..?LLM의 랜덤성과 조건성📢LLM이 문장을 생성할 때는 랜덤성(randomness)과 조건성(conditioning)이 중요한 역할을 합니다.1️⃣랜덤성 (Randomness)LLM은 기본적으로 확률에 기반하여 문장을 생성합니다.즉, 같은 질문을 하더라도 매번 동일한 답변을 주지 않을 수 있어요.이 랜덤성은 모델이 새로운 문장을 만들어내는 능력을 키워주는 핵심 요소입니다.LLM이 결과를 생성할 때, 토큰의 확률 분포를 계산하여 그 중에서 높은 확률을 가진 토큰을 선택해 문장을 만듭니다. 이때 "온도(temperature)"라는 매개변수가 랜덤성에 영향을 미치는데,온도 값이 낮으면: 모델은 더 일관되고 예측 가능한 답변을 생성합니다. (더 적은 랜덤성)온도 값이 높으면: 답변이 창의적이고 예측하기 어려운 결과가 나올 수 있습니다. (더 많은 랜덤성)✔️ 예시질문: "오늘 날씨는 어때?"온도 낮음: "오늘 날씨는 맑습니다."온도 높음: "오늘은 하늘이 쾌청하고, 약간의 바람이 불어요."2️⃣조건성 (Conditioning)LLM은 조건부 확률을 기반으로 결과를 만들어 냅니다.즉, 모델은 이전의 입력 내용에 따라 문장을 조건부로 생성하게 되는데, 이를 컨텍스트라고도 합니다.이 과정에서 중요한 두 가지 요소는 다음과 같습니다:프롬프트: 입력된 문장이나 질문이 무엇인지에 따라 결과가 달라집니다.맥락 기억: LLM은 대화를 나누는 동안 이전 문장이나 대화 흐름을 기억하고 그에 맞춰 답변을 생성합니다.✔️ 예시프롬프트에 따른 차이: "고양이에 대해 말해줘." → "고양이는 애완동물로서 인기가 많습니다.""고양이의 장점에 대해 말해줘." → "고양이는 혼자서도 잘 지내는 동물이어서 바쁜 사람들에게 적합합니다."왜 LLM의 원리를 알아야 할까?LLM을 단순히 사용하기만 해도 좋지만, 그 동작 원리를 이해하면 더 효율적으로 사용할 수 있습니다.정확한 프롬프트를 작성할 수 있게 되어, 원하는 답변을 더 쉽게 얻을 수 있죠.LLM의 한계를 알면, 적절한 상황에서 더 나은 도구를 선택할 수 있어요.성능 개선을 위한 기술 요소들(RAG, LangChain 등)을 효과적으로 도입할 수 있습니다.LLM의 원리 요약1️⃣대규모 데이터 학습많은 데이터를 바탕으로 언어 패턴을 학습.2️⃣문맥 기반 추론입력된 텍스트의 맥락을 파악해 가장 적절한 답변을 생성.', 1),
('LLM', 'LLM 시스템 형성을 위한 다양한 기법 및 요소 개념 익히기', 'LLM 시스템 형성을 위한 다양한 기법 및 요소 개념 익히기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 1주차/📕LLM 시스템 형성을 위한 다양한 기법 및 요소 개념 익히기Made with📕LLM 시스템 형성을 위한 다양한 기법 및 요소 개념 익히기수업 목표LLM(대형 언어 모델)의 개념과 그 동작 원리에 대해 알아봅니다.RAG(Retrieval-Augmented Generation), Vector DB, LangChain 등 최신 기술을 학습하고, 이를 LLM 시스템에 어떻게 적용하는지에 대해 알아봅니다.목차강좌 소개LLM(Large Language Model)의 역할 및 중요성RAG (Retrieval-Augmented Generation)RAG의 동작 원리RAG의 장점RAG의 예시Vector DB (벡터 데이터베이스)Vector DB의 동작 과정 Vector DB의 장점Vector DB의 활용 사례LangChainLangChain의 동작 원리LangChain의 장점LangChain의 활용 사례정리강좌 소개❗이번 강좌에서는 LLM 시스템을 구축하기 위해 필요한 다양한 핵심 기술 요소들을 살펴볼 거예요. LLM(Large Language Model) 자체뿐만 아니라, 그 주변에 있는 기법과 도구들인 RAG, Vector DB,  LangChain을 학습합니다. 이 요소들은 대화형 AI 시스템을 더욱 강력하게 만들어주는 중요한 기술들이며, 각각의 개념을 이해하는 것이 필수적입니다.LLM(Large Language Model)의 역할 및 중요성📚LLM란?LLM(대형 언어 모델)은 방대한 양의 텍스트 데이터를 학습하여 자연어를 이해하고 생성할 수 있는 인공지능 모델입니다. GPT-3, GPT-4, BERT와 같은 모델들이 대표적입니다. 이 모델들은 매우 큰 크기의 파라미터를 가지고 있으며, 텍스트의 맥락(Context)을 파악해 다양한 언어 작업을 수행할 수 있습니다.⭐LLM의 주요 기능자연어 이해(NLU): 질문이나 명령을 이해하고 적절히 응답하는 능력.텍스트 생성: 기존 데이터를 바탕으로 자연스러운 텍스트를 생성.번역 및 요약: 다른 언어로 번역하거나 긴 텍스트를 요약.질문 응답 시스템(Q&A): 사용자의 질문에 정확하게 답변하는 기능.이처럼 LLM은 대규모 데이터를 기반으로 한 학습을 통해 사람처럼 자연스러운 언어 처리를 가능하게 하고, 대화형 AI, 챗봇, 검색 시스템 등 다양한 곳에 응용됩니다. 하지만 모든 답변을 자체적으로 생성하는 데는 한계가 있기 때문에, 이를 보완하는 기법들이 필요합니다. 그 대표적인 기법 중 하나가 바로 RAG입니다.RAG (Retrieval-Augmented Generation)📚RAG란?RAG는 Retrieval-Augmented Generation의 약자로, 말 그대로 검색 기반 생성 기법입니다.LLM은 많은 데이터를 학습했음에도, 최신 정보나 특정 도메인 지식에 대한 한계를 가질 수 있습니다. 이를 보완하기 위해 RAG는 LLM이 직접 답을 생성하는 대신, 외부 데이터베이스나 문서에서 관련 정보를 검색한 후, 그 정보를 바탕으로 답변을 생성하는 방식입니다.RAG의 동작 원리1️⃣질문 입력사용자가 질문을 하면, RAG 시스템은 질문에 맞는 답변을 생성하기 전에 검색 단계를 거칩니다.2️⃣문서 검색 (Retrieval)벡터 DB나 기타 정보 저장소에서 질문과 관련된 문서를 검색합니다. 이때 사용되는 검색 방법은 텍스트를 벡터화하여 의미적으로 유사한 문서를 찾는 것입니다.3️⃣답변 생성 (Generation)검색된 문서를 바탕으로 LLM이 최종적으로 답변을 생성합니다.RAG의 장점1️⃣최신 정보 활용LLM은 학습된 데이터가 오래될 수 있지만, RAG는 최신 데이터베이스에서 정보를 검색할 수 있습니다.2️⃣특정 도메인 정보 제공도메인에 특화된 정보 제공이 가능하여, 일반적인 LLM보다 더 정확한 정보를 제공할 수 있습니다.3️⃣효율성필요한 정보만을 검색해오기 때문에, LLM의 모든 지식을 외부에 의존하지 않고도 효율적으로 사용 가능합니다.RAG의 예시예를 들어, 법률과 같은 특수 분야에서 질문이 들어올 경우, LLM은 법률 데이터베이스에서 관련 문서를 검색하고, 이를 바탕으로 답변을 구성할 수 있습니다. 즉, LLM의 기본 모델에 의존하지 않고도, 실시간으로 정확하고 최신의 정보를 제공하는 것이죠.Vector DB (벡터 데이터베이스)📚Vector DB란?Vector DB는 텍스트, 이미지 등의 데이터를 벡터 형태로 변환해 저장하고, 그 벡터를 기반으로 데이터를 빠르고 효율적으로 검색하는 데이터베이스입니다. 벡터 DB는 임베딩(embedding)이라는 방법으로 데이터를 벡터화하여, 유사한 의미를 가진 데이터들을 빠르게 검색할 수 있게 해줍니다.📚임베딩임베딩(embedding)은 텍스트나 이미지를 수학적으로 벡터(숫자 배열)로 변환하는 과정입니다. 예를 들어, "강아지"라는 단어를 벡터로 변환하면 그 벡터는 "고양이"와 같은 다른 동물과도 유사한 벡터값을 가질 수 있습니다. 벡터 DB는 이러한 임베딩된 데이터를 기반으로 문서 검색을 수행합니다.Vector DB의 동작 과정 1️⃣임베딩 생성문서나 텍스트를 벡터로 변환합니다. 이 벡터는 해당 텍스트의 의미적 정보를 담고 있어요.2️⃣벡터 저장생성된 벡터를 데이터베이스에 저장합니다.3️⃣벡터 검색사용자가 검색어를 입력하면, 해당 검색어를 벡터로 변환한 후, 데이터베이스에서 유사한 벡터를 찾아냅니다.4️⃣결과 제공유사한 벡터를 가진 문서나 데이터를 검색 결과로 제공합니다.Vector DB의 장점1️⃣의미 기반 검색단순 키워드 매칭이 아니라, 텍스트의 의미에 기반한 검색이 가능하여, 유사한 의미를 가진 텍스트도 검색할 수 있습니다.2️⃣고성능 처리대량의 벡터 데이터를 매우 빠르게 처리할 수 있어서, 대규모 텍스트 데이터에 대해 효율적으로 검색이 가능합니다.Vector DB의 활용 사례1️⃣문서 검색 시스템대규모 문서 저장소에서 특정 주제에 대한 유사한 문서를 빠르게 검색.2️⃣이미지 검색이미지를 벡터화하여, 유사한 이미지나 관련 이미지를 빠르게 검색.3️⃣질문-답변 시스템질문에 대한 관련 정보를 벡터 기반으로 검색해 답변을 제공.LangChain📚LangChain란?LangChain은 LLM과 같은 언어 모델을 더욱 효율적으로 활용할 수 있게 도와주는 프레임워크입니다. LangChain의 목적은 다양한 LLM과 외부 리소스를 결합해 강력한 언어 기반 애플리케이션을 만들 수 있도록 돕는 것입니다. LLM의 기능을 더욱 확장하고, 데이터 소스, API, 데이터베이스 등을 쉽게 통합할 수 있습니다.⭐LangChain의 주요 기능LLM과 데이터 소스 결합: RAG처럼 외부 데이터를 검색해와 LLM이 이를 처리하도록 할 수 있습니다.작업 흐름 자동화: 여러 개의 LLM 작업을 순차적으로 실행할 수 있는 워크플로우를 제공합니다.대화형 AI 개발: 여러 번의 대화 흐름을 제어할 수 있는 대화 관리 기능을 통해 챗봇이나 대화형 에이전트를 쉽게 구축할 수 있습니다.LangChain의 동작 원리1️⃣프롬프트 체인 (Prompt Chains)LangChain은 여러 단계의 프롬프트를 연속적으로 연결하여 복잡한 작업을 수행할 수 있습니다. 예를 들어, 먼저 문서를 요약하고, 그 요약 내용을 바탕으로 질문에 답하는 구조를 만들 수 있습니다.2️⃣메모리 기능LLM은 일반적으로 이전 대화를 기억하지 못하지만, LangChain은 메모리 기능을 통해 대화의 맥락을 유지할 수 있게 해줍니다.3️⃣외부 리소스 통합LangChain은 API, 데이터베이스, 웹 검색 등 다양한 외부 리소스를 결합해 LLM의 한계를 보완할 수 있도록 합니다.LangChain의 장점1️⃣유연한 애플리케이션 개발복잡한 언어 작업을 자동화하거나 여러 단계의 작업을 간단히 연결할 수있습니다.2️⃣확장성LLM이 처리할 수 없는 작업을 외부 리소스를 통해 보완하여 더욱 강력한 AI 시스템을 구축할 수 있습니다.3️⃣대화형 AI장기적인 대화 흐름을 관리할 수 있어 챗봇이나 고급 대화 시스템을 만드는 데 유리합니다.LangChain의 활용 사례1️⃣자동화된 텍스트 처리문서 요약, 분석, 번역, 그리고 Q&A 시스템 등 여러 텍스트 처리 작업을 하나의 체인으로 연결.2️⃣대화형 에이전트LangChain을 사용해 사용자와 지속적인 대화를 유지하는 챗봇이나 대화형 AI 시스템을 구축.3️⃣복잡한 워크플로우 처리LLM과 외부 데이터 소스를 결합해 복잡한 워크플로우를 자동화하고 처리.정리이번 강좌에서는 LLM 시스템 구축에 필요한 네 가지 핵심 요소를 배웠습니다.LLM은 대규모 텍스트 데이터로 학습한 자연어 처리 모델로, 다양한 언어 작업을 수행할 수 있습니다.RAG는 검색 기반 생성 기법으로, LLM이 외부 데이터를 활용해 더 정확하고 최신 정보를 제공할 수 있게 합니다.Vector DB는 텍스트 데이터를 벡터화해 의미 기반으로 검색할 수 있도록 도와주는 데이터베이스입니다.LangChain은 LLM과 외부 데이터를 결합해 복잡한 작업을 자동화하고, 대화형 AI 시스템을 쉽게 구축할 수 있는 프레임워크입니다.이 기술들은 개별적으로도 중요하지만, 서로 결합될 때 더욱 강력한 LLM 시스템을 구축할 수 있습니다. 😊AnonymousOct 7 (edited)[피드백]
“강좌 소개” → “이번에 배울것”', 2),
('LLM', 'OpenAI Playground 사용법 가이드', 'OpenAI Playground 사용법 가이드📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 1주차/📕OpenAI Playground 사용법 가이드Made with📕OpenAI Playground 사용법 가이드수업 목표OpenAI Playground가 무엇인지, 그 기능과 목적에 대해 알아봅니다.다양한 작업을 통해 프롬프트 엔지니어링을 실습하고, AI 모델의 반응을 실험해봅니다.Playground에서 제공하는 다양한 파라미터와 설정을 통해 AI 모델의 동작 방식을 체험하고 활용 방법을 익힙니다.목차강좌 소개OpenAI Playground란?OpenAI Playground에서 할 수 있는 것OpenAI Playground의 주요 설정OpenAI Playground 사용법Playground 접근 및 기본 사용법실습 예시User, Assistant, System 역할 설정주의사항강좌 소개❗이번 강좌에서는 OpenAI Playground에 대해 자세히 배워보겠습니다. Playground는 프롬프트 엔지니어링을 실습하고, 다양한 AI 모델의 동작을 체험할 수 있는 실험 플랫폼입니다. 이 도구는 OpenAI의 GPT 모델을 사용해 다양한 작업을 시도하고, 모델의 파라미터를 조정하며 AI의 동작을 테스트할 수 있습니다. 기본 사용법부터 각종 설정 항목, 그리고 사용 시 주의할 점을 다뤄보겠습니다.OpenAI Playground란?📚OpenAI PlaygroundPlayground는 OpenAI에서 제공하는 웹 기반의 실험 환경으로, GPT 모델을 자유롭게 활용해보고 프롬프트 실험을 할 수 있는 플랫폼입니다.프롬프트를 입력해 보고, 그에 대한 응답을 실시간으로 확인할 수 있습니다.다양한 파라미터 설정을 통해 모델의 동작을 제어할 수 있습니다.주로 프롬프트 엔지니어링 실습, AI 모델의 응답 패턴을 이해하는 데 유용합니다.⭐OpenAI Playground 주요 목적프롬프트 테스트: 입력 프롬프트에 따른 결과 확인.모델 성능 평가: 다양한 설정을 변경해가며 모델의 성능을 평가.텍스트 생성 실험: 실시간으로 텍스트를 생성하고 이를 통해 언어 모델의 동작 방식을 이해.OpenAI Playground에서 할 수 있는 것1️⃣텍스트 생성Playground에서는 사용자가 입력한 프롬프트를 바탕으로 GPT 모델이 답변을 생성합니다. 예를 들어, 질문에 대한 답변을 얻거나, 문장이나 글을 생성할 수 있습니다.✔️ 예시프롬프트: "인공지능의 장점에 대해 설명해줘."
응답: "인공지능의 장점으로는 빠른 데이터 처리, 복잡한 문제 해결, 인간의 일상 작업 자동화가 있습니다."2️⃣다양한 작업 테스트Playground는 단순한 대화뿐만 아니라, 여러 작업을 테스트할 수 있습니다.요약: 긴 텍스트를 요약.번역: 텍스트를 다른 언어로 번역.질문 답변: 주어진 텍스트에서 질문에 답변 생성.창의적 글쓰기: 소설, 시, 대본 등 창의적인 텍스트 작성.3️⃣프롬프트 엔지니어링 실험Playground는 프롬프트 엔지니어링을 연습하기에 이상적입니다.프롬프트 작성의 방식이나 내용에 따라 모델의 응답이 어떻게 달라지는지 실험할 수 있습니다.기본 프롬프트: "오늘 날씨는 어때?"샷(shot) 기반 프롬프트: "다음 예문을 참고하여 비슷한 스타일로 텍스트를 생성해줘. [예시 제공]"페르소나 설정: "당신은 역사학자입니다. 역사적 사실을 설명해주세요."OpenAI Playground의 주요 설정💡OpenAI Playground의 주요 설정Playground에서 사용할 수 있는 다양한 설정값들이 있습니다. 각 설정값은 모델이 답변을 생성할 때 영향을 미치므로, 상황에 맞게 조정해야 합니다.1️⃣모델 선택가장 먼저 모델을 선택할 수 있어요.GPT-4 family최신이자 가장 강력한 언어 모델. 복잡한 작업과 창의적인 응답이 필요할 때 사용.GPT-3.5 family조금 더 가벼운 버전으로, 빠르고 효율적인 응답을 생성합니다.
각 모델마다 성능과 응답 속도에 차이가 있으니, 작업에 맞는 모델을 선택하세요.2️⃣온도 (Temperature)온도는 모델의 랜덤성을 조정하는 매개변수입니다.값이 높을수록 창의적이고 예측 불가능한 응답이 나오고, 값이 낮을수록 일관적이고 안정적인 응답이 나옵니다.0.0: 완전히 고정된 응답 (최소한의 랜덤성).1.0: 매우 창의적이고 다채로운 응답 (최대 랜덤성).✔️ 사용법 예시낮은 온도: "오늘 날씨는 어때?" → "오늘 날씨는 맑습니다."높은 온도: "오늘 날씨는 어때?" → "하늘이 맑고, 산들바람이 불어오는 기분 좋은 날입니다."3️⃣토큰 길이 (Max Tokens)토큰은 GPT 모델에서 사용하는 단위로, 생성할 수 있는 텍스트의 길이를 조절하는 값입니다.기본적으로 짧은 응답이 필요하면 낮은 값을, 긴 글을 생성하려면 높은 값을 설정하세요.✔️ 예시짧은 응답: 50 토큰 (짧은 요약).긴 응답: 200 토큰 (자세한 설명).4️⃣탑-피 (Top-p, Nucleus Sampling)탑-피 (Top-p)는 응답의 다양성을 제어하는 또 다른 파라미터입니다.1.0: 모든 가능한 답변을 고려해 다양한 응답을 생성.0.5: 확률 상위 50%에 해당하는 답변들만을 선택하여, 더 집중된 응답을 생성합니다.5️⃣프롬프트 형식 (Stop Sequences)프롬프트 종료를 위한 특정 단어나 기호를 설정해, 응답이 해당 기호에 도달하면 멈추도록 할 수 있습니다.✔️ 예시답변이 끝날 때마다 "END"라는 단어가 나오게 할 수 있습니다.⚠️주의할 점 (Frequency/Presence Penalty)1️⃣Frequency Penalty이미 사용한 단어나 문장을 반복하지 않도록 하는 설정. 값을 높이면 중복된 표현을 줄이게 됩니다.2️⃣Presence Penalty새로운 단어나 아이디어를 더 많이 사용하도록 유도하는 설정. 값을 높이면 더 다양한 표현이 나타납니다.OpenAI Playground 사용법Playground 접근 및 기본 사용법', 3),
('LLM', '프롬프트 엔지니어링 개념잡기!', '프롬프트 엔지니어링 개념잡기!📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 2주차/📕프롬프트 엔지니어링 개념잡기!Made with📕프롬프트 엔지니어링 개념잡기!수업 목표프롬프트 엔지니어링이 무엇인지, 그리고 대형 언어 모델(LLM)에서의 중요성에 대해 알아봅니다.프롬프트 구조와 어조를 조정해 최적의 응답을 유도하는 방법을 학습합니다.LLM의 패턴 인식과 확률 계산 방식이 프롬프트 엔지니어링에 어떻게 적용되는지 알아봅니다.목차이번에 배울것프롬프트 엔지니어링이란?프롬프트 엔지니어링이 동작하는 이유프롬프트 엔지니어링과 System, Assistant, User 역할 적용하기프롬프트 엔지니어링 적용 예시프롬프트 엔지니어링에서 주의할 점정리이번에 배울것❗이번에는 프롬프트 엔지니어링의 개념에 대해 알아볼 예정입니다! 프롬프트 엔지니어링이 무엇인지, 그리고 이를 통해 대형 언어 모델(LLM)에서 최적의 성능을 이끌어내는 방법을 학습합니다. 다양한 사례를 통해 효과적인 프롬프트 구성 방법을 익히고, 실습을 통해 프롬프트의 구조와 어조가 응답에 미치는 영향을 살펴보겠습니다.프롬프트 엔지니어링이란?📚프롬프트 엔지니어링프롬프트 엔지니어링은 인공지능 모델, 특히 대형 언어 모델(LLM)에 적절한 입력(프롬프트)을 설계하고 작성하여, 모델이 최적의 응답을 하도록 유도하는 기술입니다. GPT 모델과 같은 LLM은 입력된 프롬프트에 따라 답변을 생성하므로, 프롬프트가 잘 설계되면 정확하고 유용한 결과를 얻을 수 있고, 반대로 잘못된 프롬프트는 부정확한 답변이나 혼란스러운 결과를 초래할 수 있습니다.⭐프롬프트 엔지니어링의 목표프롬프트 엔지니어링의 주요 목표는 모델이 의도한 대로 응답하도록 유도하는 것입니다.이 과정에서 프롬프트의 구조나 어조를 조정해, 답변의 품질과 일관성을 높이는 것이 중요합니다. 예를 들어, 특정 정보만을 요구하거나, 특정한 방식으로 설명해달라고 할 때는 명확하고 구체적인 프롬프트가 필요합니다.프롬프트 엔지니어링이 동작하는 이유📚프롬프트 엔지니어링 동작하는 이유LLM은 기본적으로 패턴 인식과 확률 계산에 기반하여 학습됩니다. 즉, 학습 데이터 내에서 어떤 단어가 어떤 맥락에서 자주 등장하는지를 학습하고, 주어진 프롬프트에 맞는 답변을 확률적으로 생성합니다.프롬프트 엔지니어링은 이 모델의 패턴 학습 메커니즘을 활용하여 모델이 적절한 경로로 답을 유도하도록 하는 방법입니다.💡LLM의 동작 원리 간단 설명1️⃣프롬프트 입력사용자가 모델에 질문이나 요청을 입력합니다.2️⃣맥락 파악LLM은 입력된 프롬프트를 기반으로 맥락을 분석하고, 그에 맞는 적절한 답변을 생성합니다.3️⃣확률 계산학습된 데이터를 기반으로 각 단어나 문장의 확률 분포를 계산해, 가장 가능성 높은 답변을 선택합니다.프롬프트 엔지니어링은 이러한 과정을 최적화하기 위한 방법으로, 더 나은 답변을 얻기 위해 명확하고 구체적인 입력을 작성하는 것입니다.프롬프트 엔지니어링과 System, Assistant, User 역할 적용하기💡LLM을 사용할 때, 특히 대화형 모델의 구조화된 대화 흐름을 만들기 위해서는 User, Assistant, System의 세 가지 역할을 설정할 수 있습니다. 이 세 가지 역할을 적절히 조정하면 모델이 더 자연스럽고 유의미한 대화를 진행할 수 있습니다.1️⃣User (사용자)User는 모델과 대화하는 주체로, 질문이나 요구사항을 제시하는 역할입니다.프롬프트 엔지니어링에서 User 프롬프트는 명확한 요청을 포함해야 하며, 의도가 분명해야 합니다. User는 모델이 무엇을 해야 하는지 정확하게 전달해야 하므로, 질문 형태의 프롬프트가 많습니다.✔️ 예시"영국의 산업 혁명에 대해 설명해 주세요.""이 텍스트를 요약해 주세요.""다음 문장을 영어로 번역해 주세요."👉 포인트: User는 구체적이고 명확한 요청을 해야 합니다. 이로써 모델이 혼란을 겪지 않고 정확한 답변을 생성할 수 있습니다.2️⃣Assistant (도우미)Assistant는 User의 질문에 답변을 제공하는 역할로, 실제로 GPT 모델이 수행하는 부분입니다.Assistant 프롬프트는 User가 입력한 내용에 따라 적절한 답변을 생성해야 하며, 명확한 어조와 친절한 태도로 응답하는 것이 일반적입니다.✔️ 예시User: "영국의 산업 혁명에 대해 설명해 주세요."Assistant: "영국의 산업 혁명은 18세기 말부터 19세기 초에 걸쳐 일어난 경제적, 기술적 변화로, 기계화와 공장 시스템이 급격히 발전한 시기입니다..."👉 포인트: Assistant는 정확하고 친절하게 응답해야 하며, 명확하고 일관성 있는 답변을 생성할 수 있도록 설정합니다. 이때, 프롬프트 엔지니어링에서 중요한 역할은 질문의 맥락에 맞는 적절한 답변을 제공하는 것입니다.3️⃣System (시스템)System은 대화의 기본 규칙과 Assistant의 성격을 결정합니다. System 역할은 대화의 배경과 규칙을 설정해, 모델이 답변을 생성할 때 어떤 스타일과 어조를 사용할지 지시할 수 있습니다.System 프롬프트는 모델이 특정한 태도나 전문성을 갖고 응답하도록 프레임워크를 제공합니다.✔️ 예시"Assistant는 친절하고 이해하기 쉬운 설명을 제공합니다.""Assistant는 역사학자로서 깊이 있는 정보를 제공합니다.""Assistant는 간결하고 정확한 답변만 제공합니다."👉 포인트: System 프롬프트는 Assistant의 행동을 가이드하는 역할을 합니다. 이 프롬프트는 대화의 일관성을 유지하고, 특정한 목적에 맞게 답변을 최적화할 수 있습니다.프롬프트 엔지니어링 적용 예시1️⃣일반적인 대화 흐름 설정Plain TextCopySystem: "Assistant는 친절하고 명확한 설명을 제공합니다."
User: "산업 혁명이 시작된 배경에 대해 알려주세요."
Assistant: "산업 혁명은 18세기 후반 영국에서 시작되었으며, 기술 혁신과 경제적 변화가 그 주요 배경입니다. 특히 기계화와 공장 시스템의 발전이 큰 역할을 했습니다."​2️⃣전문적이고 깊이 있는 답변을 원할 때Plain TextCopySystem: "Assistant는 역사 전문가로서 깊이 있는 설명을 제공하며, 중요한 역사적 배경도 함께 다룹니다."
User: "영국의 산업 혁명의 주요 원인에 대해 설명해 주세요."
Assistant: "산업 혁명의 주요 원인 중 하나는 영국의 풍부한 천연 자원, 특히 석탄과 철광석의 이용 가능성입니다. 또한, 상업의 발전과 대규모 자본 축적, 정치적 안정성 등이 중요한 역할을 했습니다. 이 외에도 농업 혁명으로 인한 노동력의 증가도 큰 원인이었습니다..."​3️⃣간결한 답변만을 원할 때Plain TextCopySystem: "Assistant는 간결하고 핵심만을 전달하는 답변을 제공합니다."
User: "산업 혁명의 주요 발명품은 무엇인가요?"
Assistant: "산업 혁명의 주요 발명품으로는 방적기, 증기기관, 코튼 진 등이 있습니다."​프롬프트 엔지니어링에서 주의할 점1️⃣명확하고 구체적인 프롬프트 작성모델이 혼란을 겪지 않도록, 프롬프트는 구체적이고 명확하게 작성해야 합니다. 예를 들어, 모호한 질문이나 추상적인 요청은 피하고, 어떤 결과를 기대하는지 명확히 표현하는 것이 중요합니다.2️⃣맥락 유지LLM은 이전의 대화 내용을 기반으로 답변을 생성하므로, 맥락을 유지하는 것이 중요합니다. 이전 대화와의 연결성을 고려하여 일관성 있는 프롬프트를 작성하세요.3️⃣System 설정의 중요성System 프롬프트는 Assistant의 응답 스타일과 태도에 큰 영향을 미칩니다. 올바르게설정된 System 프롬프트는 대화의 질을 높이고, 사용자가 원하는 특정 답변 스타일을 확보할 수 있습니다.정리프롬프트 엔지니어링은 LLM을 더 효율적으로, 그리고 정확하게 사용할 수 있도록 돕는 핵심 기술입니다. User, Assistant, System 역할을 잘 활용하여 더 구조화된 대화를 만들 수 있으며, 특히 System 프롬프트를 통해 Assistant가 어떤 스타일로 답변해야 할지 지침을 줄 수 있습니다. 프롬프트 엔지니어링을 적절히 활용하면 AI 모델의 응답 품질을 크게 향상시킬 수 있습니다! 😊다음 단계에서는 프롬프트 엔지니어링의 세부 기법을 학습하여 더욱 복잡한 작업과 응용을 할 수 있도록 배워보겠습니다. 🌟', 4),
('LLM', '프롬프트 엔지니어링 맛보기', '프롬프트 엔지니어링 맛보기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 2주차/📕프롬프트 엔지니어링 맛보기Made with📕프롬프트 엔지니어링 맛보기수업 목표프롬프트 엔지니어링이 무엇이며, 어떻게 활용할 수 있는지 배웁니다.간단한 실습을 통해 프롬프트 엔지니어링의 기본 원리를 체험합니다.정중한 환영 인사를 하는 ChatGPT를 만들며 프롬프트를 개선하는 과정을 학습합니다.목차이번에 배울것첫 프롬프트 엔지니어링 실습요구 사항 분석하기기본 ChatGPT 인사 맛보기정중한 말투 설정하기영어로도 인사하기강사 소개 추가하기챗봇임을 알려주기정리이번에 배울것❗이번 시간에는 프롬프트 엔지니어링이 어떤 개념인지, 실제로 어떻게 작동하는지 맛보기 실습을 진행해 볼 거예요.복잡한 기법에 들어가기 전에, 간단한 예시를 통해 프롬프트 엔지니어링이 무엇인지 감을 잡아보겠습니다.첫 프롬프트 엔지니어링 실습💬여러분이 처음으로 ChatGPT를 사용할 때, 아마도 가장 기본적인 예제는 "환영 인사"일 것입니다. 이번 실습에서는 ChatGPT가 환영 인사를 하는 방식을 개선해 나가는 과정을 함께 해볼 거예요.요구 사항 분석하기💡우리가 만들 프롬프트의 목적은 정중한 환영 인사를 하는 ChatGPT를 만들기입니다.⭐요구 사항반드시 정중한 말투를 사용해야 해요.한국어로 먼저 인사하고, 그다음에 영어로 인사해야 해요.마지막에는 "강사 배형호 강의의 챗봇"이라고 본인이 챗봇임을 알려야 해요.강사 소개도 포함되어야 해요.이제 이 요구 사항을 프롬프트로 구체화해봅시다! 😎기본 ChatGPT 인사 맛보기💡가장 먼저, 튜닝이 전혀 안 된 ChatGPT에 환영 인사를 시켜봅시다.👤User: 안녕 반가워!🤖Assistant: 안녕하세요! 만나서 반갑습니다. 무엇을 도와드릴까요?💬음, 인사를 하긴 하지만, 원하는 요구 사항이 지켜지지 않았네요. 그럼 하나씩 요구 사항을 충족시키기 위해 프롬프트 엔지니어링을 진행해 볼까요?정중한 말투 설정하기💡첫 번째로 정중한 말투를 사용하도록 해보겠습니다. 말투를 지정하는 것은 페르소나 설정의 일부로, 인공지능이 어떤 성격이나 태도를 가질지 결정할 수 있습니다.⭐System 프롬프트 예시Plain TextCopySystem: 너는 환영 인사를 하는 담당자야. 반드시 정중한 말투로 응답해.​💬이제 ChatGPT가 정중한 말투로 인사를 하도록 만들었어요!
한번 테스트해볼까요?👤User: 안녕 반가워!🤖Assistant: 안녕하세요! 강의에 참석해 주셔서 대단히 감사합니다. 유익한 시간을 보내시기를 바랍니다.💬정중한 말투로 바뀌었네요! 😄다음으로는 영어로 인사하는 부분을 추가해볼게요.영어로도 인사하기💡이번에는 한국어로 인사한 후 영어로도 인사하도록 프롬프트를 조정해보겠습니다.이것은 기본적인 지침(Basic Prompting)을 추가하는 방식입니다.⭐System 프롬프트 예시Plain TextCopySystem: 너는 환영 인사를 하는 담당자야. 반드시 정중한 말투로 응답해. 먼저 한국어로 응답한 후, 영어로도 응답해.​💬이렇게 시스템 지침을 수정하고 다시 테스트해봅시다.👤User: 안녕 반가워!🤖Assistant: 안녕하세요! 강의에 참석해 주셔서 대단히 감사드립니다. 오늘의 강의에서 유익한 시간을 보내시기를 바랍니다.
Hello! Thank you for attending today’s lecture. I hope you have a great time learning with us.💬이제 영어로도 인사하게 되었네요!
마지막으로 강사 소개를 추가해볼까요?강사 소개 추가하기💡이제 마지막으로 강사 배형호에 대한 정보를 추가해봅시다.이 정보를 System 프롬프트에 넣어서 ChatGPT가 스스로 강사 소개를 하도록 설정할 수 있어요.⭐System 프롬프트 예시Plain TextCopySystem: 너는 환영 인사를 하는 담당자야. 반드시 정중한 말투로 응답해. 먼저 한국어로 응답한 후, 영어로도 응답해. 강사 배형호에 대해 소개하는 말을 반드시 포함해.​💬그리고 강사 배형호에 대한 추가 정보를 제공해봅시다!⭐강사 정보 예시Plain TextCopy"""
강사 배형호는 인공지능 연구와 백엔드 개발 분야에서 뛰어난 능력을 가진 전문가입니다.
"""​💬이제 최종 프롬프트로 다시 테스트해볼까요?👤User: 안녕 반가워!🤖Assistant: 안녕하세요! 오늘 강의에 참석해 주셔서 대단히 감사드립니다. 강사 배형호님은 인공지능 연구와 백엔드 개발에 탁월한 능력을 지닌 전문가입니다. 오늘 강의를 통해 많은 것을 배우실 수 있기를 바랍니다.Hello! Thank you for attending today’s lecture. Instructor Bae hyeongho is an expert in AI research and backend development. I hope you enjoy the session and learn a lot.부끄럽습니다 🙂챗봇임을 알려주기💡마지막으로, 강의 챗봇임을 알리는 문구를 추가해봅시다. 이를 통해 특정 문구나 형태를 출력하도록 유도할 수 있습니다.', 5),
('LLM', '프롬프트 엔지니어링의 기본 원칙', '프롬프트 엔지니어링의 기본 원칙📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 2주차/📕프롬프트 엔지니어링의 기본 원칙Made with📕프롬프트 엔지니어링의 기본 원칙수업 목표LLM을 효과적으로 활용하기 위한 명확한 지침 설정 방법을 학습합니다.명확한 요청, 정보 제공, 작업 분할 등을 통해 더 나은 응답을 이끌어내는 방법을 실습합니다.구체적인 요청과 추상적인 요청의 차이를 실전 예제를 통해 비교하며 학습합니다.목차이번에 배울것명확한 요청 사항 전달하기정보를 제공해라제약 조건을 줘라4. 복잡한 작업을 분할해라정리이번에 배울것❗이번 시간에는 프롬프트 엔지니어링의 기본 원칙에 대해 배워볼 거예요. LLM(대형 언어 모델)을 효과적으로 활용하려면, 명확하고 구체적인 지침을 주는 것이 매우 중요합니다. 이 강의에서는 명확한 요청, 정보 제공, 제약 조건 설정, 작업 분할 같은 기본 원칙을 다룹니다. 예제도 함께 볼 거니, 편하게 따라와 주세요! 😊명확한 요청 사항 전달하기💡LLM은 매우 강력한 도구이지만, 동시에 모든 답을 가진 바보처럼 동작한다고 생각하면 됩니다. 너무 추상적이거나 모호한 요청을 하면, 모델이 혼란스럽거나 부정확한 답을 줄 수 있죠. 따라서 명확한 요청이 필수입니다.⭐예시 1: 추상적인 요청👤User: 잘생긴 연예인에 대해 알려줘🤖Assistant: "잘생긴 연예인"에 대한 이야기는 매우 다양합니다. 한국에서는 김수현과 송중기가 대표적입니다...👉 결과: 원하는 답이 아니라, 너무 일반적인 정보를 제공하고 있네요.💬이제 구체적으로 다시 물어볼게요.⭐예시 2: 구체적인 요청👤User: 본명이 이동민이면서 1997년 3월 30일에 태어난 연예인 알려줘🤖Assistant: 본명이 이동민인 연예인은 아스트로(ASTRO)의 멤버 차은우입니다.👉 결과: 이번에는 원하는 답을 정확히 얻었어요! 😄💬구체적인 요청을 통해 정확한 답변을 받을 수 있죠.정보를 제공해라💡LLM은 최신 정보나 학습되지 않은 데이터를 모릅니다. 따라서 모델에게 정보를 직접 제공해야 할 때가 많습니다. LLM은 대화의 흐름을 기억하므로, 이전에 제공한 정보를 활용해 답변할 수 있죠.⭐예시: 정보 제공하기👤User: 김현성은 공인회계사를 준비하는 서울대학교 경영학과 학생이야. 나이는 27세이고, 군대와 재수를 거쳤어. 김현성에게 응원의 글을 작성해줘.🤖Assistant: 김현성님, 서울대 경영학과에서 공인회계사 시험을 준비하는 열정과 헌신에 큰 응원을 보냅니다. 군대와 재수를 겪으며 쌓은 경험이 큰 자산이 될 것입니다...👉 결과: 김현성에 대한 정보를 제공하니, 개인화된 응원의 글을 작성할 수 있었어요!제약 조건을 줘라💡대답의 제약 조건을 설정하면, 더 명확한 결과를 얻을 수 있습니다. 이 제약 조건은 답변의 길이나 특정한 정보만 포함하는 것 등 다양하게 적용할 수 있어요.⭐예시 1: 제약 조건 없이 요청👤User: 나폴레옹에 대해 최대한 길게 설명해줘.🤖Assistant: 나폴레옹 보나파르트는 1769년에 태어나... (중략) ...그의 전투와 정복 활동은 유럽 전역에 큰 영향을 미쳤습니다. (계속 긴 설명)👉 결과: 정보가 많긴 하지만, 너무 길어서 요점을 파악하기 힘들 수 있죠.⭐예시 2: 제약 조건 추가👤User: 나폴레옹에 대해 3가지 주요 특징만 설명해줘.🤖Assistant: 나폴레옹의 3가지 주요 특징은 다음과 같습니다. 1. 뛰어난 군사 전략가 2. 정치적 개혁자 3. 유럽 역사에 미친 큰 영향...👉 결과: 제약 조건을 주니, 원하는 정보만 깔끔하게 제공받았어요!4. 복잡한 작업을 분할해라💡복잡한 작업을 한꺼번에 요청하면, LLM이 잘못된 답변을 줄 수 있습니다. 이럴 때는 작업을 여러 단계로 나누어 요청하는 것이 더 효과적입니다. 특히, 코드 작성이나 긴 텍스트 요약 등에서는 작업 분할이 유용해요.⭐예시: 단계별 계산 요청👤User: 피보나치 수열 10번째 값을 단계별로 계산해줘.🤖Assistant: 피보나치 수열은 각 숫자가 바로 앞의 두 숫자의 합입니다. 이제 10번째 수까지 단계별로 계산해 볼게요... (1단계, 2단계 ... 10단계)동작 예시첫 번째 수: 0두 번째 수: 1세 번째 수 = 첫 번째 수 + 두 번째 수 = 0 + 1 = 1네 번째 수 = 두 번째 수 + 세 번째 수 = 1 + 1 = 2다섯 번째 수 = 세 번째 수 + 네 번째 수 = 1 + 2 = 3      …
따라서 피보나치 수열의 10번째 수는 34입니다

👉 결과: 단계별 계산을 요청하니, 차근차근 답을 도출할 수 있었어요!정리오늘 배운 프롬프트 엔지니어링 기본 원칙은 다음과 같습니다:명확한 요청 사항을 전달해라.정보를 제공하여 최신 정보를 반영해라.제약 조건을 줘라.복잡한 작업은 단계별로 분할해라.이 원칙들을 잘 활용하면 ChatGPT를 더욱 효율적으로 사용할 수 있어요! 😊다음 단계에서는 이 원칙을 바탕으로 더 복잡한 프롬프트 엔지니어링 기법을 배워보겠습니다. 🌟프롬프트 엔지니어링의 기본 원칙을 잘 이해하고, 실습을 통해 더 깊이 있게 적용해보세요! 🚀', 6),
('LLM', 'Shot 계열의 프롬프팅 기법 배워보기', 'Shot 계열의 프롬프팅 기법 배워보기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 3주차/📕Shot 계열의 프롬프팅 기법 배워보기📕Shot 계열의 프롬프팅 기법 배워보기수업 목표Zero-Shot, One-Shot, Few-Shot 프롬프팅 기법이 무엇인지 배우고, 각 기법이 AI 모델의 응답에 미치는 영향을 학습합니다.다양한 예제를 통해 Shot 프롬프팅을 실습하고, 모델의 응답이 어떻게 달라지는지 비교해 봅니다.주어진 작업에 따라 Shot 수를 조절하여 최적의 답변을 이끌어내는 방법을 탐구합니다.목차이번에 배울것Zero-Shot 프롬프팅One-Shot 프롬프팅Few-Shot 프롬프팅추가 팁!Few-Shot 프롬프팅 실습하기정리이번에 배울것❗이번 강의에서는 Shot 계열의 프롬프팅 기법을 다뤄보겠습니다.Shot이라는 개념은 사실 매우 간단합니다! 😊 Shot은 그냥 인공지능에게 전달한 예제를 의미해요.예제를 하나 주면: One-Shot예제를 안 주면: Zero-Shot여러 개 주면: Few-Shot 프롬프팅이라고 불러요.보통 Shot을 많이 줄수록 더 원하는 방향으로 답변을 유도할 확률이 높아진답니다. 자, 이제 하나씩 살펴보겠습니다!Zero-Shot 프롬프팅📚Zero-ShotZero-Shot은 아무런 예제를 주지 않고 지침만 전달하는 방식입니다. 인공지능에게 추상적인 요청을 하면, 기대한 답변을 받기 어려운 경우가 많아요. 예를 들어볼게요.Plain TextCopySystem: 너는 전달된 구구단에 대한 농담을 해야해.
User: 6 * 3
Assistant: 왜 6은 3을 곱하면 항상 놀라는 표정을 짓는 걸까요?
왜냐하면 답이 18이라고 귓속말로 말해주니까요!

​👉 결과: 엉뚱한 농담이 나왔죠? 😅 이렇게 Zero-Shot은 구체적인 요구를 이끌어내기가 어렵답니다. 특히 사용자가 원하는 특정한 대답이 있으면, Zero-Shot은 잘 맞지 않을 수 있어요.One-Shot 프롬프팅📚One-Shot이제 샷(Shot)을 하나 추가해서 개선해봅시다. One-Shot 프롬프팅은 예제를 하나 전달해주는 방식입니다.💬먼저 Zero-Shot으로 한 예제부터 볼까요?Plain TextCopySystem: 너는 전달된 구구단에 대한 농담을 해야해.
User: 6 * 3
Assistant: 왜 6은 3을 곱하면 항상 놀라는 표정을 짓는 걸까요?
왜냐하면 답이 18이라고 귓속말로 말해주니까요!

​💬이제 One-Shot 예제를 추가해봅시다. 구구단 농담의 예시 하나를 제공해볼게요.Plain TextCopySystem: 너는 구구단 농담을 하는 인공지능이야. 이건 구구단 농담의 예시야.
"""
6 * 3: 육삼빌딩
"""
User: 2 * 4
Assistant: 2 * 4: 이사오세요

​👉 결과: 구체적인 One-Shot 예제를 주니, 훨씬 더 의도에 맞는 농담이 나왔죠? 😊Few-Shot 프롬프팅💡이제 Few-Shot으로 여러 개의 예시를 줘서, 모델이 더 잘 학습하도록 해볼까요?Plain TextCopySystem: 너는 예를 참고해서 전달된 구구단에 대한 농담을 해야해. 과정은 말하지 말고 농담만 말해.
"""
입력 : 6 * 4
출력: 육사생도
"""
"""
입력: 2 * 8
출력: 이팔 청춘
"""
"""
입력: 5 * 2
출력: 오이팩
"""
User: 2 * 4
Assistant: 이사갈 시간
User: 3 * 8
Assistant: 삼팔광땡
User: 2 * 6
Assistant: 이육사

​👉 결과: 이제 더 다양한 예제를 준 덕분에 정확하게 농담을 생성할 수 있었어요! 😎 Few-Shot 프롬프팅은 많은 예제를 주면 유도하는 능력이 더욱 향상된답니다.추가 팁!💡사실 Few-Shot 프롬프팅을 할 때, 입력과 출력만 제공하는 것보다 과정도 함께 제공하면 더 좋습니다.과정을 설명해주면 모델의 추론 능력이 향상되죠. 예를 들어볼게요.Plain TextCopySystem: 너는 예를 참고해서 전달된 구구단에 대한 농담을 해야해. 과정은 말하지 말고 농담만 말해.
"""
입력 : 6 * 4
출력: 육사생도
과정: 6 * 4는 한국어로 ''육곱하기사''야. 여기에서 ''곱하기''를 빼면 ''육사''가 되지? ''육사''로 시작하는 단어를 찾은 거야.
"""
"""
입력: 2 * 8
출력: 이팔 청춘
과정: 2 * 8은 한국어로 ''이곱하기팔''이야. 여기서 ''곱하기''를 빼면 ''이팔''이 되지? 이팔로 시작하는 단어를 찾은 거야.
"""
"""
입력: 5 * 2
출력: 오이팩
과정: 5 * 2는 ''오곱하기이''야. 여기서 ''곱하기''를 빼면 ''오이''가 돼. ''오이''로 시작하는 단어를 찾은 거야.
"""
User: 2 * 4
Assistant: 이사오세요

​👉 결과: 과정을 제공하니, 모델이 더 정확한 추론을 할 수 있었습니다. 이런 식으로 과정도 함께 지침으로 주면, 더 정확한 답변을 유도할 수 있습니다!Few-Shot 프롬프팅 실습하기⭐예시 1. 공포의 쿵쿵따쿵쿵따 게임을 할 때도 Few-Shot 프롬프팅을 활용할 수 있어요. 예시 없이 해보면, 잘못된 답변이 나올 수 있죠.Plain TextCopyUser: 나랑 쿵쿵따하자. 라이터 쿵쿵따
Assistant: 토마토

​👉 결과: 엉뚱한 답이 나왔죠? 😅 이제 Few-Shot을 추가해봅시다.Plain TextCopySystem: 너는 공포의 쿵쿵따를 하는 인공지능이야. 예시는 다음과 같아.
"""
입력: 삼겹살
출력: 살구꽃 쿵쿵따
"""
"""
입력: 리어카
출력: 카센터 쿵쿵따
"""
"""
입력: 말미잘
출력: 잘난체 쿵쿵따
"""
User: 라이터 쿵쿵따
Assistant: 터널공사 쿵쿵따~

​👉 결과: Few-Shot 프롬프팅 덕분에 쿵쿵따 게임이 잘 진행되었네요! 😄⭐예시 2. 자음 게임이번에는 자음 게임을 Few-Shot 프롬프팅으로 진행해볼까요?Plain TextCopyUser: 나랑 자음 게임하자. 자음 알려줘.
Assistant: 물론이죠! 시작할 자음은 "ㅁ" 어때요?

​이 게임이 뭔지 모르겠죠? Few-Shot을 추가해서 정확히 게임을 유도해보겠습니다.Plain TextCopySystem: 너는 자음 게임을 하는 인공지능이야. 예시는 다음과 같아.
"""
문제: ㅅㅅㅅㅅ
정답: 식스센스
"""
"""
문제: ㅁㅈㄱㄹㅈㅎㅅ
정답: 말죽거리 잔혹사
"""
"""
문제: ㄱㅁ
정답: 괴물
"""
User: 나랑 자음 게임하자. 자음 알려줘.
Assistant: 문제: ㅎㅅㅂ. 이 자음에 해당하는 한국 영화 제목을 맞춰보세요!
User: 답이 뭐야?
Assistant: 정답: 황산벌

​👉 결과: Few-Shot 프롬프팅으로 정확한 게임 진행이 가능해졌어요!정리Shot 계열의 프롬프팅 기법은 예제를 얼마나 주느냐에 따라 나뉩니다.Zero-Shot: 예제를 주지 않고 지침만 전달.One-Shot: 예제 하나만 주기.Few-Shot: 여러 개의 예제를 주기.예제를 제공할수록 모델이 더 정확하게 응답할 확률이 높아집니다. Shot은 이름은 복잡해 보일지 몰라도, 활용하기는 아주 쉽습니다!다음 장에서는 더 고급스러운 기법들을 살펴볼 예정입니다. 프롬프트 엔지니어링의 세계는 아직 깊고도 넓습니다! 😊', 7),
('LLM', 'Act As 류의 프롬프팅 기법 배우기', 'Act As 류의 프롬프팅 기법 배우기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 3주차/📕Act As 류의 프롬프팅 기법 배우기📕Act As 류의 프롬프팅 기법 배우기수업 목표AI에게 특정 역할을 부여하는 Act As 프롬프팅 기법의 개념을 학습합니다.AI에게 성격이나 직업을 부여하여 응답을 유도하는 방법을 실습합니다.변호사나 개그맨 등 다양한 역할을 설정하고, 각각의 역할에 따른 AI의 응답 스타일 변화를 분석합니다.목차이번에 배울것페르소나(Persona)란?Act As 프롬프팅 기법페르소나 설정의 구체화페르소나 창조하기도구의 페르소나 부여하기논리적인 추론 강화하기정리이번에 배울것❗이번 장에서는 인공지능에게 성격이나 역할을 부여하는 프롬프팅 기법을 배워볼 거예요.이 기법은 Act As 또는 페르소나 기법이라고 부르는데, 인공지능이 특정 역할을 수행하게 하는 방식입니다.특정한 직업이나 성격을 부여해 정체성을 가진 대답을 유도할 수 있습니다. 이 기법은 특히 챗봇이나 전문가 답변이 필요한 상황에서 많이 사용됩니다.페르소나(Persona)란?📚페르소나(Persona)페르소나(Persona)란 LLM에게 성격, 관점, 또는 역할을 부여하는 것을 말합니다.Act As는 "너는 ~처럼 행동해"라는 식으로 역할을 주는 프롬프트의 한 형태입니다. 예를 들어, "너는 변호사야"라고 하면, 법적인 조언을 하도록 모델을 유도할 수 있습니다.✔️ 사용 예시Plain TextCopySystem: 너는 변호사야.
User: 건축법에 대해 알려줘.
Assistant: 건축법은 건축물의 설계, 건설, 운영, 유지 및 철거에 관한 규정을 다루는 법입니다. 각국의 건축법은 다소 차이가 있지만, 일반적으로 안전 기준, 환경 규제, 접근성, 건축 허가 등이 포함됩니다..​페르소나 지정은 객관적인 정보를 얻는 데보다는 특정 관점이나 전문적인 답변을 원할 때 유용합니다.또한, 브랜드의 챗봇처럼 회사 정체성이 필요한 경우에도 많이 사용됩니다.Act As 프롬프팅 기법📚Act AsAct As는 역할 부여 프롬프트를 의미합니다. 모델에게 특정한 직업이나 역할을 부여해 그 직업이나 성격에 맞는 답변을 얻을 수 있습니다.✔️ 예시: 변호사와 개그맨Plain TextCopySystem: 너는 변호사야.
User: 건축법에 대해 알려줘.
Assistant: 건축법은 건축물의 설계, 건축, 유지 및 운영을 규정하는 법입니다. 안전, 환경, 접근성 등을 고려하여 건축 허가를 받아야 하며...​Plain TextCopySystem: 너는 개그맨이야.
User: 건축법에 대해 알려줘.
Assistant: 건축법? 벽돌로 벽 쌓는 법인 줄 알았어! 사실은 건물을 지을 때 법적으로 허가받는 방법이야. 법을 어기면 집 짓다가 잡혀갈 수도 있지, 웃기지? 😄
​👉 결과: 역할에 따라 답변 스타일이 달라지죠? 변호사는 전문적이고 개그맨은 유머러스하게 답변합니다.페르소나 설정의 구체화💡페르소나를 지정할 때 더 구체적으로 지침을 주면 역할의 특성을 더 잘 반영할 수 있습니다. 그냥 "변호사야"라고만 하면 일반적인 답변을 주는 경우가 많기 때문에, 역할을 구체적으로 지시하는 것이 중요합니다.✔️ 예시: 변호사와 개그맨Plain TextCopySystem: 너는 변호사야. 변호사의 관점에서 법적으로 전문적인 답변을 작성해.
User: 건축법에 대해 알려줘.
Assistant: 건축법은 건축물의 설계와 건설에 대한 법적 규제입니다. 이를 준수하지 않을 경우 벌금 또는 형사 처벌이 부과될 수 있으며, 안전 규정이나 건축 허가가 위반되면 법적 분쟁이 발생할 수 있습니다...


​Plain TextCopySystem: 너는 개그맨이야. 개그맨처럼 재미있게 답변해.
User: 건축법에 대해 알려줘.
Assistant: 건축법? 아, 그게 바로 ''벽돌로 집 짓는 레시피''지! 하하, 사실은 건물을 짓기 전에 허가를 받아야 하는 법이야. 안 그러면 집 짓다가 경찰이 와서 ''어이, 이거 불법이야!'' 할지도 몰라! 😂
​👉 결과: 구체적인 지침을 주니 더 전문적이거나 재미있는 답변을 얻게 되었죠!페르소나 창조하기💡이제 단순한 직업만이 아니라, 완전히 새로운 페르소나를 만들어 볼 수도 있습니다.예를 들어, "김하윤"이라는 가상의 인물에게 성격과 직업을 설정한 후, 그 인물의 관점에서 답변하도록 할 수 있습니다.✔️ 예시: 김하윤의 페르소나 설정Plain TextCopySystem: 너는 김하윤이야. 김하윤의 관점에서 답변을 작성해.
"""
이름: 김하윤
성격: 외향적이고 활동적인 성격. 사람들과 어울리는 걸 좋아하며, 모험을 추구하는 성격.
직업: 데이터 분석가. 데이터에서 인사이트를 도출해 회사의 의사결정에 기여.
특징: 체계적이고 꼼꼼하며, 새로운 기술과 환경 보호에 관심이 많음.
"""
User: 너의 직업에 대해 알려줘.
Assistant: 저는 대형 소프트웨어 회사에서 데이터 분석가로 일하고 있어요. 데이터를 분석해 유의미한 인사이트를 도출하고, 이를 통해 회사의 전략을 세우는 데 기여하고 있죠...


​도구의 페르소나 부여하기💡페르소나는 사람에게만 적용되는 것이 아닙니다. 프로그램이나 도구에도 페르소나를 부여할 수 있어요. 예를 들어, Python 인터프리터처럼 행동하게 할 수 있습니다.✔️ 예시: Python 인터프리터로 설정하기Plain TextCopySystem: 너는 파이썬 인터프리터야.
User: A = 10 B = 20 print(A + B)
Assistant: The code initializes two variables, A and B, with values 10 and 20, respectively. When you run this code in Python, it will output 30.


​논리적인 추론 강화하기💡LLM은 기본적으로 확률에 기반해 작동하므로, 논리적인 추론 능력이 상대적으로 부족할 수 있습니다. 따라서 논리적인 답변을 기대할 때는 구체적인 지침을 주는 것이 매우 중요합니다.✔️ 예시: 수학 문제에 대한 논리적 추론Plain TextCopysystem: 너는 수학 선생님이야, 단계별로 논리적으로 문제를 풀어줘.
User: 피보나치 수열의 10번째 값을 구해줘.
Assistant: 피보나치 수열은 첫 번째와 두 번째 숫자가 각각 0과 1로 시작됩니다. 그 후 각 숫자는 바로 앞의 두 숫자를 더한 값이 됩니다. 10번째 값은... (단계별로 풀이)


​정리오늘 배운 Act As 프롬프팅 기법을 통해, 인공지능에게 다양한 역할과 성격을 부여하는 방법을 익혔습니다.변호사, 개그맨, 마술사 같은 직업부터, 김하윤과 같은 가상의 인물까지 다양한 페르소나를 설정할 수 있었습니다.논리적인 추론이나 특정 도구의 역할도 부여할 수 있죠.다음에는 더 복잡하고 다양한 프롬프트 기법을 학습해볼 예정이니, 기대해 주세요! 😊Act As 기법을 활용해 여러분만의 특별한 챗봇을 만들어보세요! 🚀', 8),
('LLM', '논리적인 추론 강화하기', '논리적인 추론 강화하기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 3주차/📕논리적인 추론 강화하기Made with📕논리적인 추론 강화하기수업 목표LLM이 확률적 예측에 강하지만, 복잡한 논리적 문제에서는 약한 이유를 학습합니다.논리적 추론을 강화하기 위한 CoT 기법을 익히고, 이를 활용해 LLM의 성능을 향상시키는 방법을 배웁니다.논리적 문제 해결에 CoT 기법을 적용하고, 단계별 추론 과정을 통해 모델의 논리적 흐름을 개선합니다.목차이번에 배울것논리적 추론의 한계CoT(Chain of Thought, 생각의 사슬) 기법CoT 적용 예시직접 중간 과정 넣어주기CoT의 다양한 적용정리이번에 배울것❗LLM은 언어 모델이기 때문에 논리적인 추론보다는 확률적인 예측에 더 강합니다.문장을 보고 확률적으로 다음에 나올 단어를 예측하는 방식이므로, 복잡한 논리나 수학적 추론에 약한 경우가 많죠.이번 장에서는 이러한 논리적 추론을 강화하는 방법, 특히 CoT(Chain of Thought, 생각의 사슬) 기법을 배워보겠습니다.논리적 추론의 한계💡기본적으로 LLM은 문맥을 기반으로 확률적인 답변을 제공합니다. 그렇기 때문에 수학 문제나 논리적 퍼즐 같은 문제에서 잘못된 답변이 나올 때가 많습니다.✔️ 예시: 논리적 문제 해결 실패Plain TextCopyUser: 자동차가 3대 있어, 오토바이는 12대 있어. 이중 바퀴가 모두 터진 장비는 총 3대야. 그런데 터진 바퀴가 총 12개면 자동차와 오토바이는 각각 몇 대 고장났을까?
Assistant: 자동차 2대와 오토바이 1대가 고장났습니다.


​👉 결과: 잘못된 추론을 하고 있죠? 정답은 자동차 3대인데, Assistant는 제대로 풀지 못했어요.CoT(Chain of Thought, 생각의 사슬) 기법📚CoT(Chain of Thought)이 문제를 해결하기 위한 방법으로 CoT(Chain of Thought) 기법을 사용할 수 있습니다.CoT는 단계별로 추론 과정을 설명하도록 모델에게 유도하는 기법입니다.중간 추론 단계를 명시하면, 모델이 복잡한 문제를 더 정확히 풀 수 있게 됩니다.📚CoT 기법이 성능을 높이는 이유모델은 다음에 나올 단어의 확률을 예측하며 답변을 생성하는데, 중간 추론 단계를 명시하면 답변의 구조가 더 논리적으로 짜여지게 됩니다.즉, 자신이 무엇을 하고 있는지 설명하는 과정에서 논리적인 흐름을 따라가게 되는 것이죠!CoT 적용 예시💡이제 CoT 기법을 적용해 중간 추론 단계를 설명해볼까요?
먼저, 자동화된 CoT 기법을 사용해보겠습니다. 자동화된 CoT는 모델에게 중간 과정을 설명해라고 명시하는 방식입니다.✔️ CoT 기법 적용Plain TextCopySystem: 너는 문제를 풀 때 중간 과정을 설명해야 해.
User: 자동차가 3대 있어, 오토바이는 12대 있어. 이중 바퀴가 모두 터진 장비는 총 3대야. 그런데 터진 바퀴가 총 12개면 자동차와 오토바이는 각각 몇 대 고장났을까?
Assistant: 문제를 해결하기 위해서는 각 장비의 바퀴 수와 터진 바퀴의 총 수를 고려해야 해.
자동차는 4개의 바퀴가 있고, 오토바이는 2개의 바퀴가 있어.
이 문제에서는 총 3대의 장비가 바퀴가 모두 터져 있고, 터진 바퀴는 12개야.

먼저, 자동차가 x대, 오토바이가 y대가 고장났다고 가정하자.
두 가지 조건을 만족해야 해:
1. x + y = 3 (고장난 장비는 총 3대)
2. 4x + 2y = 12 (총 터진 바퀴 수는 12개)

첫 번째 식에서 y = 3 - x라고 할 수 있어.
이 값을 두 번째 식에 대입하면:
4x + 2(3 - x) = 12
4x + 6 - 2x = 12
2x = 6
x = 3

따라서 자동차 3대가 모두 고장났고, 오토바이는 고장나지 않았어.


​👉 결과: CoT 기법을 사용하니 중간 과정을 설명하면서 정확한 답변을 얻을 수 있었어요!이제 문제를 단계별로 풀어가는 모습이 보이죠? 😄직접 중간 과정 넣어주기💡이번에는 중간 추론 단계를 직접 넣어주는 방식을 사용해보겠습니다. 이렇게 하면 더 세밀하게 논리적 과정을 유도할 수 있습니다.✔️ 직접 CoT 적용 예시Plain TextCopySystem: 너는 문제를 풀 때 중간 과정을 설명해. 중간 단계는 문제 분석, 계산, 검증의 과정을 거쳐야 해.
User: 자동차가 3대 있어, 오토바이는 12대 있어. 이중 바퀴가 모두 터진 장비는 총 3대야. 그런데 터진 바퀴가 총 12개면 자동차와 오토바이는 각각 몇 대 고장났을까?
Assistant: 이 문제의 해결을 위해 다음과 같은 수식을 설정할 수 있어요.

1. 자동차가 고장난 대수를 x, 오토바이가 고장난 대수를 y라고 합시다.
2. 첫 번째 조건: x + y = 3 (총 고장난 장비는 3대입니다).
3. 두 번째 조건: 터진 바퀴는 12개입니다. 자동차는 바퀴 4개, 오토바이는 바퀴 2개이므로, 4x + 2y = 12가 됩니다.

첫 번째 방정식에서 y = 3 - x로 바꿔서, 이를 두 번째 방정식에 대입하면:
4x + 2(3 - x) = 12
4x + 6 - 2x = 12
2x = 6
x = 3

따라서, 자동차는 3대 모두 고장났고, 오토바이는 고장나지 않았습니다.


​👉 결과: 중간 과정을 직접 넣어주니 논리적인 답변을 훨씬 더 세밀하게 유도할 수 있죠.CoT의 다양한 적용💡CoT 기법은 수학 문제뿐만 아니라, 복잡한 명령어 처리나 삼행시 같은 작업에서도 효과적으로 사용할 수 있습니다.✔️ 예시: 복잡한 명령어 처리Plain TextCopySystem: 너는 삼행시를 만들 때, 각 줄의 의미를 단계별로 설명해야 해.
User: 나주평야로 삼행시 지어줘.
Assistant:
나: ''나''는 나주평야의 ''나''를 따서 시작합니다. 나주평야는 넓고 비옥한 땅을 의미하죠.
주: ''주''는 주말에 나주평야를 방문한다는 뜻입니다. 자연과 함께하는 주말을 상상해볼 수 있겠네요.
평야: 평야는 넓은 들판을 상징하며, 나주평야의 풍요로움을 강조합니다. 넓고 끝없는 평화로운 공간을 말하는 것이죠.


​✔️ 예시: 복잡한 수학 문제Plain TextCopySystem: 너는 수학 문제를 풀 때, 중간 과정을 하나하나 설명해야 해.
User: 피보나치 수열의 10번째 값을 계산해줘.
Assistant: 피보나치 수열은 각 숫자가 앞의 두 숫자의 합으로 이루어집니다.
첫 번째 수는 0, 두 번째 수는 1입니다. 이제 10번째 수를 계산해보죠.
1. 첫 번째 수: 0
2. 두 번째 수: 1
3. 세 번째 수: 0 + 1 = 1
4. 네 번째 수: 1 + 1 = 2
5. 다섯 번째 수: 1 + 2 = 3
6. 여섯 번째 수: 2 + 3 = 5
7. 일곱 번째 수: 3 + 5 = 8
8. 여덟 번째 수: 5 + 8 = 13
9. 아홉 번째 수: 8 + 13 = 21
10. 열 번째 수: 13 + 21 = 34

따라서 피보나치 수열의 10번째 수는 34입니다.


​정리오늘 배운 CoT(생각의 사슬) 기법을 통해 논리적인 추론을 단계별로 설명하도록 유도하는 방법을 익혔습니다.자동화된 CoT: "중간 과정을 설명해"라는 간단한 지침으로, 복잡한 문제 해결을 유도할 수 있습니다.직접 중간 과정 추가: 중간 과정을 직접 넣어주면, 더 구체적이고 세밀한 논리적 추론을 유도할 수 있습니다.앞으로 더 복잡한 문제도 CoT 기법을 활용하면 쉽게 해결할 수 있을 거예요! 😊복잡한 문제일수록 생각의 사슬을 활용해 해결해보세요! 🚀', 9),
('LLM', '대화를 활용한 프롬프팅 기법', '대화를 활용한 프롬프팅 기법📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 4주차/📕대화를 활용한 프롬프팅 기법📕대화를 활용한 프롬프팅 기법수업 목표대화를 통해 정보를 제공하거나 이전 응답을 개선하는 방법을 학습합니다.System과 Assistant에 정보를 제공하여 모델의 응답을 개선하는 방법을 실습합니다.최신 정보를 제공하여 AI의 대답을 구체적으로 향상시키는 방법을 배웁니다.목차이번에 배울것정보 제공하기대화로 개선하기대화를 통해 인공지능 흉내내기정리이번에 배울것❗이번 장에서는 대화를 활용하는 방법을 다뤄볼 거예요.대화는 크게 두 가지 방식으로 정보를 제공하거나 이전의 대답을 개선하는 데 사용할 수 있습니다.사실 두 방식의 원리는 동일해요. 첫 번째 방식부터 시작해볼까요?정보 제공하기⭐정보 제공 방식은 우리가 처음 ChatGPT를 사용할 때 활용했던 방식과 유사합니다.정보를 제공하는 방법에는 두 가지가 있습니다.1️⃣System에 전달하기
한 번에 모든 정보를 주고, 이후에는 모델이 그 정보를 잊지 않도록 합니다.2️⃣Assistant에 전달하기
대화 중에 정보를 제공하지만, LLM이 기억할 수 있는 대화량에 한계가 있기 때문에 까먹을 수 있습니다.✔️ 활용 예시 1: 블로그 글 작성하기💬우리는 2024년 최신의 서울 부동산 낙찰가율에 대해 블로그 글을 작성하고 싶습니다.
먼저, 그냥 요청해볼까요?Plain TextCopyUser: 2024년 4월~5월 최신의 서울 부동산 낙찰가율에 대한 블로그 글을 작성해줘.
Assistant: 죄송합니다, 2024년의 정보를 알 수는 없습니다. 그러나 서울 부동산 시장의 일반적인 경향과 분석 방법을 설명할 수 있습니다.


​💬모델이 최신 정보를 모른다고 대답하네요. 그럼 정보를 제공해볼까요?System에 정보를 제공하여 개선Plain TextCopySystem: 너는 블로그 글을 작성하는 인공지능이야. 제공된 정보를 바탕으로 글을 작성해.
정보:
"""
2024년 4월~5월의 서울 부동산 낙찰가율은 최근 45.3%로 상승했습니다. 강남구와 서초구는 상대적으로 낮은 낙찰가율을 보였고, 광진구와 노원구는 높은 낙찰가율을 기록했습니다.
"""
User: 2024년 4월~5월 최신의 서울 부동산 낙찰가율에 대한 블로그 글을 작성해줘.
Assistant:
**서울 부동산 낙찰가율 동향: 2024년 4월 업데이트**

서울의 부동산 경매 시장이 2024년 4월에 눈에 띄는 변화를 겪고 있습니다. 낙찰가율이 45.3%로 상승했으며, 특히 강남구와 서초구는 낮은 낙찰가율을 보이고 있는 반면, 광진구와 노원구는 높은 낙찰가율을 기록하고 있습니다...


​👉 결과: 제공한 정보를 바탕으로 최신 데이터를 포함한 블로그 글을 작성했네요!✔️ 활용 예시 2: 자기소개서 작성하기💬이번에는 자기소개서를 작성해볼게요. 자기소개서는 개인 정보와 회사 정보가 필요하죠. 이럴 때 정보 제공을 잘 활용할 수 있어요.Plain TextCopySystem:
#지침: 너는 자기소개서를 작성하는 인공지능이야. 추가 정보와 제약 조건을 준수해 작성해.
#제약조건: 500~1000자로 작성.
#회사정보:
회사이름 = HKKKD 전자
직무 = 인공지능 개발자
직무 요구사항 = 파이썬과 텐서플로우 사용
User: 나는 배코블린이야. 컴퓨터 공학을 전공했고 인공지능을 연구했어. 자기소개서를 작성해줘.
Assistant:
안녕하세요, HKKKD 전자의 인공지능 개발자 직무에 지원하게 된 배코블린입니다. 컴퓨터 공학을 전공하면서 인공지능에 깊은 흥미를 가지게 되었고...


​👉 결과: 제공된 정보를 바탕으로 자기소개서를 작성해주네요!대화로 개선하기💡LLM은 대화를 반복하면서 성능이 개선될 수 있습니다.이때 대화를 활용해 정보를 추가하거나 질문을 구체화할 수 있습니다.✔️ 활용 예시: 자기소개서 개선하기💬처음에는 자기소개서를 요청했지만, 조금 더 정보를 제공해볼게요.Plain TextCopyUser: 자기소개서 작성해줘.
Assistant:
물론이죠! 자기소개서를 어느 분야나 어떤 목적으로 사용하실지 알려주시면 더 정확한 내용을 도와드릴 수 있습니다...


​💬처음에는 정보가 부족했죠? 이제 추가 정보를 제공해봅시다.Plain TextCopyUser: 내 이름은 baekoblin이고 지원하는 회사는 kkkkddd 전자야. 직무는 인공지능 개발자이고 텐서플로우를 요구해. 문서는 마크다운 형식으로 부탁해.
Assistant:
# 자기소개서
**이름:** baekoblin
**회사:** kkkkddd 전자
**직무:** 인공지능 개발자
**요구 기술:** 텐서플로우 사용

안녕하세요, 저는 인공지능 개발을 열정적으로 추구하는 baekoblin입니다. kkkkddd 전자의 인공지능 개발자 포지션에 지원하게 되어 기쁩니다...


​👉 결과: 추가 정보와 형식 지정까지 적용해 개선된 자기소개서를 얻었어요.대화를 통해 인공지능 흉내내기💡LLM은 이전 대화를 기억하기 때문에, 대화의 흐름을 따라 마치 인공지능을 흉내내는 대화도 가능합니다. 예를 들어 노래 가사를 유도해볼까요?Plain TextCopyUser: 난 이제 지쳤어요.
Assistant: 많이 힘드셨겠어요. 어떤 부분이 가장 힘든가요? 도와드릴 수 있으면 좋겠네요.


​💬노래 가사처럼 만들어볼게요.Plain TextCopyUser: 난 이제 지쳤어요.
Assistant: 땡벌 땡벌~
User: 기다리다 지쳤어요.
Assistant: 땡벌 땡벌~


​👉 결과: 대화의 흐름을 이용해 자연스럽게 가사 유도가 가능하죠!정리오늘은 대화를 활용한 프롬프팅 기법을 배웠습니다.정보 제공하기: 정보를 시스템에 제공하거나 대화 중에 제공해 모델의 성능을 강화할 수 있습니다.대화로 개선하기: 처음에는 부족한 답변을 대화를 통해 점진적으로 개선할 수 있습니다.대화를 통해 자연스럽게 상호작용하기: LLM의 대화 특성을 활용해 인공지능을 흉내내는 상호작용도 가능합니다.대화를 활용해 여러분의 프로젝트나 작업을 더 효율적으로 진행해보세요! 😊', 10),
('LLM', '형식 지정 기법', '형식 지정 기법📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 4주차/📕형식 지정 기법📕형식 지정 기법수업 목표LLM이 다양한 형태의 입력을 잘 이해할 수 있도록 형식을 지정하는 방법을 학습합니다.Markdown, JSON, Symbol 등 구조화된 형식을 통해 정보를 효율적으로 전달하는 방법을 배웁니다.실습을 통해 동일한 요청을 다양한 형식으로 전달해 LLM의 응답 변화를 경험합니다.목차이번에 배울것형식 지정 기법이란?형식 지정의 다양한 방식Markdown 활용하기리스트 활용하기표 활용하기JSON 활용하기Symbol (특수 기호) 활용하기정리이번에 배울것❗이번 장에서는 형식 지정 기법에 대해 알아볼 거예요.LLM은 똑똑하지만, 다양한 형태로 입력을 받을 때 그 형태에 따라 이해도가 달라집니다.이 형식 지정 기법을 통해 LLM이 잘 이해할 수 있는 형식으로 요청하는 방법을 배워봅시다!형식 지정 기법이란?💡동일한 요청을 다양한 형태로 할 수 있다는 점을 기억하세요.✔️ 예시Plain TextCopyplaintext
코드 복사
User: 다음의 합을 알려줘. 1,2,3,4,5,6
User: 나는 너한테 리스트를 전달할게. 리스트의 합을 알려줘.
List: [1,2,3,4,5,6]


​두 요청은 같은 작업을 요구하지만, 형식이 다릅니다.이런 다양한 입력 형태를 LLM이 더 잘 이해하도록 도와주는 기법이 바로 형식 지정 기법입니다.형식 지정의 다양한 방식📚다양한 구조화된 문서 형식을 통해 LLM이 더 쉽게 정보를 이해하도록 할 수 있어요.여기서 사용할 수 있는 몇 가지 형식은 다음과 같습니다1️⃣Markdown구조화된 문서를 이쁘게 표현하는 방식2️⃣JSON 데이터 전달을 위해 자주 사용되는 키-값 구조3️⃣Symbol특수 기호를 사용해 중요한 부분을 강조✔️ 예시Plain TextCopyplaintext
코드 복사
User: 다음의 합을 알려줘. 1,2,3,4,5,6
User: 나는 너한테 리스트를 전달할게. 리스트의 합을 알려줘.
List: [1,2,3,4,5,6]


​💬이제 각각의 형식을 어떻게 활용할 수 있는지 알아볼까요?Markdown 활용하기💡Markdown은 간단한 문서 작성 언어로, 글을 쉽게 구조화할 수 있습니다.특히 LLM이 이러한 구조화된 정보를 더 잘 이해합니다. Markdown을 활용해 정보를 효율적으로 전달하는 방법을 배워봅시다.📚Markdown 기본 문법헤더: #을 사용해 제목과 섹션을 나눌 수 있어요.리스트:  - 로 항목을 나열할 수 있어요. 표: |와 --를 사용해 표를 만들 수 있어요.✔️ 예시: Markdown을 활용한 프롬프트Plain TextCopySystem: 너는 다음의 가이드에 따라 행동해.
# 말투
정중한 말투
# 역할
상담사
# 출력 형태
마크다운 코드
# 추가 정보
고객의 요청에 맞춰 답변할 것.


​👉 효과: Markdown을 사용하면 헤더를 통해 내용을 구분하고, LLM이 더 정확하게 요청을 파악할 수 있습니다.리스트 활용하기💡리스트는 여러 항목을 간결하고 명확하게 전달하는 데 유용합니다.LLM은 리스트 형태의 정보를 효과적으로 처리할 수 있습니다.✔️ 예시: 리스트 활용하기Plain TextCopySystem: 너는 다음의 요구 사항을 반드시 따라야 해.
# Output
- 답변은 반드시 마크다운 코드로 작성해.
- 추가 설명은 생략해.
- 최대한 길게 작성해.


​👉 효과: 리스트를 사용해 구체적인 지시 사항을 전달하면 정확한 출력을 유도할 수 있습니다.표 활용하기💡표를 활용해 데이터를 명확하고 체계적으로 전달할 수 있습니다.LLM은 이러한 구조화된 형식을 더 쉽게 이해하고 처리할 수 있습니다.✔️ 예시: 표 활용하기Plain TextCopySystem: 다음의 데이터를 표 형식으로 출력해줘.
| 상품명      | 가격    | 재고     |
|:-----------|:-------:|---------:|
| 스마트폰   | 1,000,000원 | 10개     |
| 노트북      | 1,500,000원 | 5개      |
| 태블릿      | 600,000원   | 20개     |


​👉 효과: 표로 데이터를 전달하면, LLM이 더 정확하게 각 항목을 구분해 처리할 수 있습니다.JSON 활용하기💡JSON은 데이터를 키-값 쌍으로 표현하는 방식입니다.특히 데이터 처리나 시스템과의 연동이 필요한 경우 JSON 형식을 많이 사용합니다.✔️ 예시: JSON 활용하기Plain TextCopy
System: 다음의 정보에 따라 답변해.
{
  "이름": "배형호,
  "나이": 31,
  "직업": "인공지능 개발자"
},


​👉 효과: 구조화된 데이터를 명확하게 전달할 수 있어, LLM이 데이터를 잘 처리할 수 있습니다.Symbol (특수 기호) 활용하기💡특수 기호를 사용해 중요한 부분을 강조할 수 있습니다.주로 리스트, 기호, 중괄호 등을 사용해 중요성을 나타내죠.✔️ 예시: Symbol 활용하기Plain TextCopySystem: 너는 다음의 특성을 반영해.
- **정중한**
- **수다스러운**
- **전문적인**


​👉 효과: 특수 기호를 사용해 중요한 강조 사항을 분명하게 표현할 수 있어요.정리오늘 배운 형식 지정 기법은 다음과 같은 방식으로 LLM의 성능을 더 잘 활용할 수 있게 도와줍니다:Markdown을 활용해 구조화된 문서 작성리스트와 표를 통해 명확한 정보 전달JSON으로 데이터를 명확하게 구조화특수 기호를 사용해 중요한 부분을 강조이 형식 지정 기법을 잘 활용하면, LLM이 더 똑똑하게 반응하도록 만들 수 있습니다! 😊', 11),
('LLM', 'LLM의 사용 준비하기', 'LLM의 사용 준비하기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕LLM의 사용 준비하기📕LLM의 사용 준비하기수업 목표이번 주차에서 배울 내용들을 살펴봅니다.보안 문제, API 개념, 그리고 오픈 소스 LLM 구축에 대한 기본 내용을 학습합니다.목차이번에 배울 것보안 문제LLM을 사용할 때의 데이터 보안 문제보안을 강화하는 방법API 개념잡기API란 무엇인가?API의 기본 개념ChatGPT를 API로 사용하는 것의 장점
API 사용의 주요 장점벡터 DB와 LangChain 활용하기벡터 DB란?벡터 DB와 LangChain의 역할LLM + 벡터 DB + LangChain 구축 플로우결론이번에 배울 것❗이번 챕터에서는 LLM을 사용하기 전에 알아야 할 중요한 개념들을 다룰 거예요.LLM을 실무에서 사용하기 위해서는 보안 문제, API 개념, 그리고 오픈 소스 LLM 구축에 대한 이해가 필수입니다.각 개념을 차근차근 살펴보겠습니다! 😊보안 문제💡LLM을 사용할 때는 데이터 보안에 대해 반드시 신경 써야 해요.특히 대화형 AI인 LLM은 사용자의 민감한 정보를 처리할 가능성이 있기 때문에 데이터 유출과 프라이버시 침해가 발생하지 않도록 주의해야 합니다.LLM을 사용할 때의 데이터 보안 문제개인 정보 보호
LLM은 대화를 통해 개인 정보(이름, 전화번호, 신용카드 정보 등)를 접할 수 있어요.
이런 정보가 저장되거나 제3자에게 공유될 경우 큰 문제가 될 수 있습니다.데이터 저장 및 전송
LLM이 처리한 데이터가 어디에 저장되는지, 어떻게 전송되는지를 확인해야 합니다. 
암호화된 전송 방식(예: HTTPS)을 사용해 데이터를 보호해야 해요.모델 학습 데이터
LLM은 학습에 사용된 데이터에 의존해 답변을 생성합니다.
만약 학습 데이터에 민감한 정보가 포함된다면, 해당 정보가 예기치 않게 모델의 출력으로 등장할 가능성도 있습니다.보안을 강화하는 방법1️⃣민감 정보 필터링
입력된 데이터를 처리하기 전에 민감한 정보를 자동으로 걸러내는 필터링 시스템을 구축하세요.2️⃣암호화
데이터는 저장 및 전송 중에 암호화되어야 합니다.
특히 SSL/TLS와 같은 안전한 전송 프로토콜을 사용해야 해요.3️⃣데이터 저장 최소화
필요 이상으로 데이터를 저장하지 말고, 필요한 경우에도 데이터 보존 주기를 설정해 자동 삭제하도록 하세요.4️⃣접근 통제
LLM을 사용할 수 있는 사람의 권한을 제한하고, 모델이 민감한 데이터에 접근하지 않도록 제한해야 해요.API 개념잡기API란 무엇인가?💡API(Application Programming Interface)는 서로 다른 소프트웨어 시스템 간에 데이터와 기능을 주고받을 수 있도록 해주는 인터페이스에요.쉽게 말해, 두 프로그램이 서로 소통할 수 있는 다리라고 보면 됩니다.API의 기본 개념클라이언트-서버 모델
클라이언트(요청하는 쪽)가 서버(응답하는 쪽)에게 데이터를 요청하면, 서버는 해당 데이터를 처리하여 클라이언트에게 반환합니다.HTTP/HTTPS 프로토콜
대부분의 API는 HTTP나 HTTPS를 통해 요청과 응답이 이루어져요.RESTful API
가장 흔히 사용되는 API 설계 방식으로, 각 엔드포인트(URI)와 HTTP 메소드(GET, POST, PUT, DELETE 등)를 사용해 데이터를 주고받아요.ChatGPT를 API로 사용하는 것의 장점💡ChatGPT 같은 LLM을 API로 사용하는 것은 매우 효율적이에요.이 API를 통해 다양한 애플리케이션에 LLM 기능을 쉽게 통합할 수 있습니다.
API 사용의 주요 장점유연성: 필요할 때마다 요청을 보내어 결과를 받을 수 있어, 실시간으로 다양한 애플리케이션에 적용할 수 있어요.확장성: 다양한 서비스나 플랫폼(예: 웹사이트, 앱)에 쉽게 통합할 수 있어, 여러 사용자가 동시에 사용할 수 있는 확장성을 가집니다.업데이트: LLM API 제공사가 모델을 업데이트하면 별다른 수정 없이 최신 기능을 바로 사용할 수 있어요.비용 효율성: API 호출에 따라 비용이 청구되므로, 대규모 서버를 유지할 필요 없이 필요한 만큼만 사용 가능해요.벡터 DB와 LangChain 활용하기❗오픈 소스 LLM을 구축할 때 벡터 DB와 LangChain을 함께 사용하면 더 강력한 시스템을 만들 수 있어요.벡터 DB란?💡벡터 DB는 문서나 데이터의 임베딩(embedding) 벡터를 저장하고, 이 벡터를 바탕으로 유사한 데이터를 빠르게 찾을 수 있는 데이터베이스입니다.LLM과 결합하면 유사 문서 검색이나 추천 시스템 등에 활용할 수 있습니다.벡터 DB와 LangChain의 역할벡터 DB
텍스트 데이터를 벡터로 변환한 후, 유사한 텍스트나 데이터를 빠르게 찾는 데 사용됩니다. 예를 들어, 유사한 질문을 찾거나 추천을 할 때 유용해요.LangChain
LLM과 벡터 DB를 연결해주는 프레임워크로, 데이터 흐름을 관리하고 API 호출을 더 간편하게 만들어줍니다.LLM + 벡터 DB + LangChain 구축 플로우1️⃣텍스트 임베딩 생성
먼저 LLM을 통해 텍스트 데이터를 벡터(임베딩)로 변환합니다.2️⃣벡터 DB 저장
변환된 임베딩을 벡터 DB에 저장합니다.3️⃣질문 처리
사용자가 질문을 하면, 질문도 벡터로 변환하고 벡터 DB에서 유사한 임베딩을 찾습니다.4️⃣답변 생성
찾은 유사한 데이터와 함께 LLM을 통해 최종 답변을 생성합니다.5️⃣API로 제공
이 과정을 LangChain을 통해 API 형태로 제공하여, 실제 서비스에서 사용할 수 있게 합니다.결론이번 챕터에서는 LLM의 사용 준비를 위한 보안 문제, API 개념, 그리고 오픈 소스 LLM 구축 방법을 배웠습니다.데이터를 안전하게 관리하면서 LLM을 효과적으로 활용하고, 필요한 경우에는 오픈 소스 LLM을 구축하여 최적의 시스템을 만들 수 있죠!이제 LLM을 실무에서 사용할 준비가 다 되셨습니다! 😊', 12),
('LLM', 'Vector DB 개념 및 RAG (Retrieval-Augmented Generation) 개념', 'Vector DB 개념 및 RAG (Retrieval-Augmented Generation) 개념📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕Vector DB 개념 및 RAG (Retrieval-Augmented Generation) 개념Made with📕Vector DB 개념 및 RAG (Retrieval-Augmented Generation) 개념수업 목표vectorDB와 RAG의 개념에 대해서 학습하고, 한국어 임베딩 실습을 진행합니다.목차Vector DB 개념 Vector DB란?Faiss란?임베딩(Embedding) 개념 임베딩이란?RAG (Retrieval-Augmented Generation) 개념RAG의 동작 원리Retrieval (검색) 단계Generation (생성) 단계RAG의 장점Vector DB와 RAG의 결합동작 흐름한국어 임베딩 실습한국어 데이터 임베딩Vector DB와 RAG로 LLM 시스템 구축하기Vector DB 개념 Vector DB란?❗Vector DB는 데이터를 벡터 형식으로 저장하고, 그 벡터들을 효율적으로 검색할 수 있는 데이터베이스에요. 일반적인 데이터베이스는 정확한 일치를 바탕으로 데이터를 검색하지만, Vector DB는 유사한 벡터 간의 검색을 지원하죠.벡터(임베딩)의 역할텍스트나 이미지 등의 비정형 데이터를 벡터화(임베딩)해서 저장해요.
이 벡터는 데이터의 의미나 특징을 수치로 표현한 것이며, 이를 바탕으로 유사도를 계산해 관련성이 높은 항목을 찾습니다.예를 들어, "강아지"라는 텍스트는 벡터로 변환되며, 비슷한 의미를 가진 "반려견"도 벡터화되어 유사도가 높은 항목으로 검색될 수 있어요.Faiss란?💡Faiss는 Facebook AI Research에서 개발한 벡터 검색 엔진으로, Vector DB를 구현할 때 자주 사용돼요. 대규모 벡터를 효율적으로 검색하고, 유사도를 계산하는 데 탁월한 성능을 발휘합니다. 특히 빠른 속도와 확장성이 필요한 애플리케이션에서 많이 쓰이죠.임베딩(Embedding) 개념 임베딩이란?💡임베딩은 텍스트, 이미지 등의 데이터를 고차원 공간에서 벡터(숫자 배열)로 변환하는 작업이에요. LLM(대규모 언어 모델)이 문장을 이해하기 위해서는 단어와 문장을 벡터로 변환해야, 컴퓨터가 의미적 유사성을 기반으로 데이터를 처리할 수 있습니다.임베딩의 작동 방식임베딩은 단어 간의 의미적 관계를 벡터 공간에 투영해요.
예를 들어, "고양이"와 "개"는 비슷한 의미를 가지므로 벡터 공간에서도 서로 가까운 위치에 존재하게 됩니다. 
반대로 "사과"와 "자동차"처럼 전혀 다른 의미를 가진 단어들은 벡터 공간에서 멀리 떨어진 위치에 놓이게 되죠.RAG (Retrieval-Augmented Generation) 개념❗RAG는 Retrieval-Augmented Generation의 약자로, 
LLM(대규모 언어 모델)과 검색 시스템을 결합한 개념이에요.
RAG는 기존의 LLM만으로는 해결할 수 없는 문제를, 외부 정보 검색을 통해 보완할 수 있어요. 
최신 정보를 포함한 답변을 제공하는 데 매우 유리하죠.RAG의 동작 원리1️⃣Retrieval (검색) 단계사용자가 질문을 하면, 벡터 DB에서 질문과 유사한 문서나 데이터를 검색해요. 이때 임베딩 모델을 사용해 질문을 벡터로 변환하고, 벡터 간의 유사도를 계산해 관련 데이터를 찾아냅니다.2️⃣Generation (생성) 단계검색된 문서를 LLM에 전달하고, 이를 바탕으로 자연스러운 답변을 생성합니다. 검색된 문서를 참조해 최신 정보를 포함한 정확한 답변을 제공하죠.RAG의 장점최신 정보 제공: LLM이 학습한 데이터 외의 최신 문서를 검색해 정보의 정확도를 높일 수 있어요.유연성: LLM이 모르는 정보도 외부 검색을 통해 답변할 수 있어 지식의 확장성이 뛰어납니다.지식의 한계 극복: 학습 데이터에만 의존하지 않고, 외부 데이터베이스에서 실시간 정보를 제공받아 더욱 풍부한 답변을 할 수 있어요.Vector DB와 RAG의 결합💡Vector DB와 RAG의 결합은 매우 강력해요. Vector DB는 유사한 문서를 검색해주고, RAG는 검색된 문서를 바탕으로 정확한 답변을 생성하는 과정이죠.동작 흐름ALT한국어 임베딩 실습한국어 데이터 임베딩한국어 문장을 임베딩하려면 사전 학습된 한국어 임베딩 모델이 필요해요. [코드스니펫] 한국어 임베딩 실습 코드PythonCopyfrom sentence_transformers import SentenceTransformer
import numpy as np

# Multilingual-E5-large-instruct 모델 로드
model = SentenceTransformer(''intfloat/multilingual-e5-large'')
# 문장 리스트
sentences = [
"참새는 짹짹하고 웁니다.",
"LangChain과 Faiss를 활용한 예시입니다.",
"자연어 처리를 위한 임베딩 모델 사용법을 배워봅시다.",
"유사한 문장을 검색하는 방법을 살펴보겠습니다.",
"강좌를 수강하시는 수강생 여러분 감사합니다!"
]
# 문장들을 임베딩으로 변환
embeddings = model.encode(sentences)
# 임베딩 벡터 출력
print(embeddings.shape) # (4, 1024) - 4개의 문장이 1024 차원의 벡터로 변환됨
​PythonCopyfrom sentence_transformers import SentenceTransformer
import numpy as np

# Multilingual-E5-large-instruct 모델 로드
model = SentenceTransformer(''intfloat/multilingual-e5-large'')
# 문장 리스트
sentences = [
"참새는 짹짹하고 웁니다.",
"LangChain과 Faiss를 활용한 예시입니다.",
"자연어 처리를 위한 임베딩 모델 사용법을 배워봅시다.",
"유사한 문장을 검색하는 방법을 살펴보겠습니다.",
"강좌를 수강하시는 수강생 여러분 감사합니다!"
]
# 문장들을 임베딩으로 변환
embeddings = model.encode(sentences)
# 임베딩 벡터 출력
print(embeddings.shape) # (4, 1024) - 4개의 문장이 1024 차원의 벡터로 변환됨
​Vector DB와 RAG로 LLM 시스템 구축하기1️⃣질문을 임베딩
사용자의 질문을 벡터로 변환합니다.2️⃣벡터 DB에서 검색
벡터 DB에서 질문과 관련된 문서를 검색합니다.3️⃣검색된 문서를 기반으로 LLM이 답변 생성
검색된 문서를 LLM에 전달하고, 답변을 생성합니다.😀이러한 과정을 통해 RAG와 Vector DB는 최신 정보 기반의 대화형 AI 시스템을 구축하는 데 매우 유용해요!
Vector DB와 RAG 개념을 기반으로 LLM 시스템을 구축할 때, 더 나은 정보 검색과 답변 생성을 할 수 있습니다.', 13),
('LLM', '텍스트 처리의 핵심 기법과 임베딩 활용하기', '텍스트 처리의 핵심 기법과 임베딩 활용하기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕텍스트 처리의 핵심 기법과 임베딩 활용하기📕텍스트 처리의 핵심 기법과 임베딩 활용하기수업 목표주요 텍스트 처리 기법인 토큰화, 정규화 등을 학습합니다.임베딩의 개념과 중요성에 대해 학습합니다.목차텍스트 처리가 중요한 이유텍스트 처리의 목표주요 텍스트 처리 기법토큰화 (Tokenization)정규화 (Normalization)불용어 제거 (Stopword Removal)형태소 분석 (Morphological Analysis)어간 추출과 표제어 추출 (Stemming and Lemmatization)문장 분리 및 길이 조정임베딩의 개념과 중요성임베딩(Embedding)란?대표적인 임베딩 기법Bag of Words (BoW)TF-IDF (Term Frequency-Inverse Document Frequency)Word2Vec, GloVeTransformer 기반 임베딩 (BERT, GPT)배운 내용 정리하기!❗LLM(대규모 언어 모델)을 효율적으로 활용하려면 텍스트 처리가 기본이 되어야 합니다. 텍스트 처리는 모델이 자연어를 이해하고 분석할 수 있게 돕는 첫 단계이죠. 또한, 텍스트를 벡터로 변환하는 임베딩(embedding) 기법은 문장의 의미를 숫자로 표현해 모델이 문서의 유사성을 파악하거나 정확한 추론을 할 수 있게 해줘요.이번 강의에서는 텍스트 처리의 주요 기법과 임베딩의 개념을 살펴보며, 이 두 가지가 LLM에서 왜 중요한지, 그리고 실제로 어떻게 활용되는지 알아보겠습니다.텍스트 처리가 중요한 이유💡텍스트 처리(Text Preprocessing)는 데이터의 품질을 높이고 모델의 성능을 향상시키기 위한 필수 작업이에요. 자연어는 매우 복잡하고 다양하기 때문에, LLM이 텍스트를 정확하게 이해하고 처리하기 위해서는 데이터가 구조화되고 정제될 필요가 있어요. 잘못된 텍스트 처리 과정은 모델이 혼동하거나 잘못된 추론을 하게 할 수 있습니다.텍스트 처리의 목표노이즈 제거: 텍스트 내 불필요한 정보나 오류를 제거해 정확한 분석을 할 수 있도록 합니다.일관성 확보: 문장의 구조나 형태를 일관되게 유지하여 모델이 더 쉽게 패턴을 학습하게 돕습니다.효율적인 처리: 불필요한 단어를 제거하고 중요한 정보만 남겨, 모델이 더 빠르게 계산할 수 있도록 해줍니다.주요 텍스트 처리 기법1️⃣토큰화 (Tokenization)토큰화는 텍스트를 단어 또는 서브워드 단위로 나누는 작업입니다. 이 과정은 텍스트를 숫자로 변환하기 전의 가장 중요한 단계에 해당해요.단어 단위 토큰화: 텍스트를 단어 단위로 나누는 기본 방법입니다.예: "나는 오늘 책을 읽었다." → ["나는", "오늘", "책을", "읽었다"]서브워드 토큰화: 단어를 더 작은 단위로 분리해 새로운 단어를 처리할 수 있도록 합니다. BPE나 WordPiece 같은 방법이 있어요.예: "읽었다" → ["읽", "었다"]이렇게 나눠진 토큰은 모델이 이해할 수 있는 형태로 변환됩니다.2️⃣정규화 (Normalization)정규화는 텍스트를 표준화된 형식으로 변환하는 작업이에요. 텍스트에 포함된 대소문자, 특수문자 등을 일관되게 변환하여, 모델이 불필요한 변동에 혼란을 겪지 않도록 합니다.소문자 변환: 대문자와 소문자를 통일하여 같은 단어로 인식하게 합니다.예: "OpenAI" → "openai"불필요한 기호 제거: 분석에 필요 없는 특수문자나 기호를 제거합니다.예: "서울, 2023년!" → "서울 2023년"정규화를 통해 모델이 텍스트의 의미에 집중하게 할 수 있어요.3️⃣불용어 제거 (Stopword Removal)불용어란 자주 등장하지만 정보가 없는 단어를 말해요. 예를 들어, "그리고", "이", "는" 같은 단어들은 문맥에 큰 영향을 미치지 않기 때문에 불용어로 처리해요. 이를 제거하면 모델이 중요한 단어에만 집중할 수 있습니다.예: "나는 책을 읽었다." → ["책", "읽었다"]4️⃣형태소 분석 (Morphological Analysis)한국어와 같은 교착어에서는 형태소 분석이 필수적이에요. 형태소는 단어의 최소 의미 단위로, 한국어에서 특히 조사나 어미와 같은 부분을 정확하게 분리해내는 데 유용합니다.예: "책을 읽었다." → [책(Noun), 을(Postposition), 읽었다(Verb)]5️⃣어간 추출과 표제어 추출 (Stemming and Lemmatization)텍스트에서 동사나 형용사의 변형을 기본 형태로 돌리는 작업입니다. 이를 통해 동일한 단어를 일관되게 처리할 수 있어요.어간 추출은 단어에서 어미를 제거하고, 기본 어간만 남깁니다.예: "studying", "studied", "study" → "study"표제어 추출은 단어를 사전적 기본형으로 변환합니다.예: "am", "is", "are" → "be"이 과정은 동사나 형용사처럼 변형이 많은 단어를 처리할 때 매우 유용해요.6️⃣문장 분리 및 길이 조정텍스트가 너무 길거나 복잡할 경우, 이를 적절하게 나누거나 길이를 조정해야 해요. 긴 문장을 처리할 때, 모델의 메모리 제한이나 성능 저하를 방지할 수 있습니다.임베딩의 개념과 중요성임베딩(Embedding)란?💡임베딩은 텍스트 데이터를 **벡터(숫자 배열)**로 변환하는 과정이에요. 
LLM이 텍스트의 의미를 이해하려면 텍스트가 숫자로 변환되어야 하는데, 그 과정에서 각 문장이나 단어를 벡터 공간에 매핑하게 됩니다. 이를 통해 모델이 의미적 유사성을 파악하고, 효율적인 검색이나 문서 분류를 할 수 있어요.임베딩 벡터는 단어의 의미나 문장의 문맥을 반영하여, 
유사한 의미를 가진 텍스트는 유사한 벡터 값을 가집니다.대표적인 임베딩 기법1️⃣Bag of Words (BoW)Bag of Words는 단어의 빈도만을 기반으로 텍스트를 벡터화하는 가장 단순한 방법입니다. 단어의 순서나 문맥을 고려하지 않기 때문에 의미 파악에 한계가 있지만, 간단한 문서 분류나 텍스트 분석에 유용해요.문장: "고양이가 야옹했다"벡터 표현: [1, 1, 1, 0, 0] (각 단어의 빈도수)2️⃣TF-IDF (Term Frequency-Inverse Document Frequency)TF-IDF는 단순한 단어 빈도 외에도 단어의 중요도를 반영한 임베딩 기법이에요. 특정 단어가 문서 내에서 자주 등장하지만 전체 문서에서 드물게 등장한다면, 그 단어는 해당 문서에서 중요한 단어로 간주됩니다.TF: 단어의 빈도IDF: 단어의 전체 문서에서의 등장 빈도 반비례값이를 통해 문서 내에서 의미 있는 단어를 강조할 수 있어요.3️⃣Word2Vec, GloVeWord2Vec과 GloVe는 단어 간의 의미적 유사성을 반영하는 임베딩 기법이에요. 단어를 고차원 벡터로 변환하여, 단어 간의 관계를 학습합니다.Word2Vec: 주위 단어들에 기반해 단어의 의미를 학습GloVe: 전체 문맥을 기반으로 단어 간의 공통 패턴을 학습이러한 임베딩 기법을 사용하면, 단어의 의미를 벡터로 비교해 문맥 유사성을 파악할 수 있어요.4️⃣Transformer 기반 임베딩 (BERT, GPT)BERT나 GPT 같은 **Transformer* 모델들은 문장의 문맥을 고려하여 더 깊이 있는 의미를 반영한 임베딩을 생성해요. 특히, 이들은 문장 단위로 텍스트를 벡터화할 수 있어 문장 간의 유사도를 정확하게 파악합니다.BERT: 양방향으로 문맥을 고려한 임베딩 생성GPT: 자동 완성 및 생성에 강점을 둔 임베딩 생성임베딩의 활용임베딩을 활용하면 텍스트 검색, 문서 분류, 대화형 AI 등 다양한 응용 분야에서 의미 기반 검색과 유사성 분석을 수행할 수 있습니다.배운 내용 정리하기!텍스트 처리와 임베딩은 필수적인 기초!텍스트 처리와 임베딩은 LLM 시스템 구축의 핵심 기초입니다. 정확한 텍스트 처리와 적절한 임베딩 기법을 활용하면, LLM의 성능을 최대한 끌어올리고 더 나은 결과를 얻을 수 있어요.텍스트 처리는 모델의 입력을 정제하고, 임베딩은 모델이 추론할 수 있도록 텍스트를 벡터화합니다. 이 둘을 잘 이해하고 적용하는 것이 LLM 시스템 구축의 첫걸음이에요!', 14),
('LLM', 'LangChain: 개념과 활용', 'LangChain: 개념과 활용 📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕LangChain: 개념과 활용 📕LangChain: 개념과 활용 수업 목표Langchain에 대해서 학습하고, 사용 사례와 주요 장점을 살펴봅니다.목차 LangChain이란?LangChain이 왜 좋은가LangChain의 주요 개념LangChain 사용 사례배운 내용 정리하기!❗LangChain은 LLM(대형 언어 모델)과 다양한 컴포넌트를 연결하여 복잡한 작업을 수행하고 체인 형태로 구성된 애플리케이션을 만들 수 있는 프레임워크입니다. 이를 통해 LangChain은 간단한 텍스트 생성에서 복잡한 멀티스텝 워크플로우까지 다양한 AI 애플리케이션을 개발하는 데 도움을 줍니다. LangChain이란?💡LangChain은 언어 모델을 중심으로 다양한 데이터 소스와 툴을 연결하여 체인 기반 애플리케이션을 구축할 수 있는 Python 기반 프레임워크입니다. 

LangChain을 사용하면 하나의 언어 모델 응답만 받는 대신,
여러 단계로 구성된 체인 구조를 통해 다양한 연산과 데이터 처리, 멀티스텝 분석이 가능합니다.

예를 들어, 특정 질문에 대해 외부 데이터베이스에서 정보를 검색하고, 이를 종합하여 응답을 생성하는 과정 등을 자동화할 수 있습니다.LangChain이 왜 좋은가유연한 구성
LangChain은 언어 모델과 다양한 컴포넌트를 쉽게 연결할 수 있습니다. 모델의 응답을 다른 컴포넌트로 보내거나, 여러 단계에 걸친 데이터 처리가 가능합니다.모듈화된 컴포넌트
프롬프트 템플릿, 출력 파서, 벡터 데이터베이스, 에이전트 등을 통해 각 컴포넌트를 필요에 따라 조합할 수 있어 재사용성과 확장성이 높습니다.체인과 에이전트
단순한 질문-응답을 넘어서 여러 작업을 순차적으로 실행하는 체인과 상황에 따라 행동을 결정하는 에이전트를 통해 복잡한 작업을 자동화할 수 있습니다.강력한 통합 기능
LangChain은 OpenAI, HuggingFace, FAISS, ElasticSearch 등 다양한 언어 모델, 벡터 데이터베이스와의 통합이 가능해 데이터 소스 확장과 빠른 검색이 가능합니다.LangChain의 주요 개념언어 모델 (LLM)언어 모델은 주어진 입력을 바탕으로 텍스트를 생성합니다. LangChain은 OpenAI의 GPT 모델을 포함해 다양한 언어 모델과의 통합을 지원합니다.예시: "LangChain을 사용하여 OpenAI의 GPT-4 모델을 불러와 기본적인 질문에 답변하도록 설정"프롬프트 템플릿 (Prompt Templates)프롬프트 템플릿은 프롬프트를 동적으로 생성하는 데 사용됩니다. 특정 입력 값에 따라 템플릿이 채워져 모델에 전달되므로 반복적인 작업을 단순화합니다.예시: 사용자 질문에 따라 특정 정보 검색을 요구하는 시스템 프롬프트 생성체인 (Chains)여러 단계를 거치는 워크플로우를 하나로 묶어주는 기능입니다. 예를 들어, 사용자의 질문을 분석해 필요한 데이터를 검색하고, 검색 결과를 기반으로 응답을 생성하는 일련의 과정을 체인으로 구성할 수 있습니다.예시: 사용자 질문을 받은 후 검색 -> 분석 -> 응답 생성의 3단계 체인 생성에이전트 (Agents)에이전트는 동적으로 필요한 작업을 결정하고 수행하는 컴포넌트입니다. 질문에 따라 답변하기 위해 API 호출이 필요한지, 또는 단순히 텍스트 생성을 해야 하는지를 판단해 작업을 실행합니다.예시: 질문이 지리 정보에 관련된 경우, API를 호출해 최신 정보를 제공하는 에이전트벡터 데이터베이스 (Vector Databases)벡터 데이터베이스는 텍스트를 벡터로 변환해 저장하고, 이후 유사한 벡터를 빠르게 검색할 수 있도록 돕습니다. 이를 통해, 저장된 데이터와 유사한 질문에 빠르게 응답할 수 있습니다.예시: FAISS와 같은 벡터 데이터베이스에 문서를 저장해 유사성 검색을 수행LangChain 사용 사례1️⃣검색 기반 생성(RAG)
LangChain을 사용하여 질문에 답할 때 관련 문서를 검색하고, 해당 내용을 바탕으로 응답을 생성할 수 있습니다. 이를 통해 최신 정보에 기반한 답변을 생성할 수 있습니다.2️⃣FAQ 시스템
다양한 질문에 대한 답변을 벡터 데이터베이스에 저장하고, 유사성 검색을 통해 빠르게 적절한 답변을 제공합니다.3️⃣다단계 챗봇 워크플로우
복잡한 질문에 대해 여러 단계를 거쳐 답변을 구성하는 챗봇을 설계할 수 있습니다. 예를 들어, 질문을 받아 요약한 후, 관련된 추가 정보를 검색해 제공하는 방식입니다.4️⃣지능형 에이전트
주식 가격을 확인하거나 뉴스 데이터를 검색해 최신 정보를 제공하는 챗봇 에이전트를 구현할 수 있습니다.LangChain의 주요 장점 요약확장성: 언어 모델과 다양한 데이터 소스를 연결하여 유연하게 확장 가능자동화: 복잡한 멀티스텝 프로세스를 체인 형태로 구성하여 자동화 가능유사성 검색: 벡터 데이터베이스를 활용해 유사 문서를 빠르게 검색 및 응답 가능재사용성: 프롬프트 템플릿, 체인, 에이전트 등을 활용해 재사용 가능한 애플리케이션 구성 가능배운 내용 정리하기!😀LangChain은 LLM의 강력한 성능을 다양한 데이터 소스와 통합해 유연하고 확장성 있는 AI 애플리케이션을 개발하는 데 큰 도움을 줍니다. LangChain의 다양한 컴포넌트를 이해하고 사용하는 것은 AI 애플리케이션의 효율성과 생산성을 높이는 데 중요한 역할을 합니다.', 15),
('LLM', 'Python LangChain과 FAISS', 'Python LangChain과 FAISS📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕Python LangChain과 FAISS📕Python LangChain과 FAISS수업 목표LangChain 사용을 위한 환경 설정을 진행합니다.FAISS를 활용한 벡터 데이터베이스를 구성하는 실습을 진행합니다.목차설치 및 기본 설정LangChain 기본 개념언어 모델 초기화프롬프트 템플릿 사용하기LangChain Expression Language (LCEL)로 체인 연결FAISS를 활용한 벡터 데이터베이스 구성 및 쿼리Step 1: OpenAI 임베딩 모델로 벡터 임베딩 생성Step 2: FAISS 인덱스 초기화Step 3: 벡터 데이터베이스에 문서 추가Step 4: 벡터 데이터베이스 쿼리RAG 체인에 FAISS 통합Step 1: Retriever로 변환Step 2: RAG 체인 생성FAISS 인덱스의 저장 및 로드FAISS 데이터베이스 병합❗이번에는 LangChain과 FAISS를 이용한 실습을 진행할 예정인데요,
실습은 아래와 같은 순서로 진행됩니다!

설치 및 기본 설정LangChain 기본 개념 - 언어 모델, 프롬프트 템플릿LangChain Expression Language (LCEL)로 체인 연결FAISS를 활용한 벡터 데이터베이스 구성 및 쿼리RAG 체인에 FAISS 통합FAISS 인덱스의 저장 및 로드, 병합설치 및 기본 설정💡LangChain, OpenAI, 그리고 FAISS 패키지를 설치합니다. GPU를 사용하는 경우 faiss-gpu를 사용할 수 있습니다.ShellCopypip install langchain langchain-openai faiss-cpu

​
설치 후, OpenAI API 키를 설정해 사용 환경을 준비합니다.PythonCopyimport os
from getpass import getpass

os.environ["OPENAI_API_KEY"] = getpass("OpenAI API key 입력: ")

​LangChain 기본 개념언어 모델 초기화OpenAI의 GPT-4 모델을 LangChain을 통해 사용해 봅니다. ChatOpenAI를 이용해 초기화하고 invoke 메서드를 통해 메시지를 전달하여 응답을 받아옵니다.PythonCopyfrom langchain_openai import ChatOpenAI
from langchain_core.messages import HumanMessage

# 모델 초기화
model = ChatOpenAI(model="gpt-4")
# 모델에 메시지 전달
response = model.invoke([HumanMessage(content="안녕하세요, 무엇을 도와드릴까요?")])
print(response.content)

​프롬프트 템플릿 사용하기프롬프트 템플릿은 다양한 입력을 받아 메시지를 생성하는데 도움을 줍니다. 예를 들어, 영어 문장을 다른 언어로 번역하는 프롬프트를 정의해 봅시다.PythonCopyfrom langchain_core.prompts import ChatPromptTemplate

# 시스템 메시지 설정
system_template = "Translate the following sentence from English to {language},:"
# 사용자 텍스트 입력
prompt_template = ChatPromptTemplate.from_messages([
("system", system_template),
("user", "{text},")
])
# 프롬프트 생성
result = prompt_template.invoke({"language": "French", "text": "How are you?"},)
print(result.to_messages())

​LangChain Expression Language (LCEL)로 체인 연결여러 컴포넌트를 체인으로 연결하여 데이터 흐름을 통제하는 LCEL을 사용합니다.PythonCopyfrom langchain_core.output_parsers import StrOutputParser

# 응답을 파싱하는 파서 초기화
parser = StrOutputParser()
# 템플릿, 모델, 파서를 체인으로 연결
chain = prompt_template | model | parser

# 체인 실행
response = chain.invoke({"language": "Spanish", "text": "Where is the library?"},)
print(response)

​FAISS를 활용한 벡터 데이터베이스 구성 및 쿼리FAISS는 벡터 유사성 검색을 위한 라이브러리입니다. OpenAIEmbeddings로 텍스트를 벡터로 변환해 FAISS 인덱스에 저장합니다.Step 1: OpenAI 임베딩 모델로 벡터 임베딩 생성PythonCopyfrom langchain_openai import OpenAIEmbeddings

# OpenAI 임베딩 모델 초기화
embeddings = OpenAIEmbeddings(model="text-embedding-ada-002")

​Step 2: FAISS 인덱스 초기화PythonCopyimport faiss
from langchain_community.vectorstores import FAISS
from langchain_community.docstore.in_memory import InMemoryDocstore

# FAISS 인덱스 생성
index = faiss.IndexFlatL2(len(embeddings.embed_query("hello world")))
vector_store = FAISS(
    embedding_function=embeddings,
    index=index,
    docstore=InMemoryDocstore(),
    index_to_docstore_id={},
)

​Step 3: 벡터 데이터베이스에 문서 추가PythonCopyfrom langchain_core.documents import Document
from uuid import uuid4

# 문서 생성
documents = [
    Document(page_content="LangChain을 사용해 프로젝트를 구축하고 있습니다!", metadata={"source": "tweet"},),
    Document(page_content="내일 날씨는 맑고 따뜻할 예정입니다.", metadata={"source": "news"},),
    Document(page_content="오늘 아침에는 팬케이크와 계란을 먹었어요.", metadata={"source": "personal"},),
    Document(page_content="주식 시장이 경기 침체 우려로 하락 중입니다.", metadata={"source": "news"},),
]
# 고유 ID 생성 및 문서 추가
uuids = [str(uuid4()) for _ in range(len(documents))]
vector_store.add_documents(documents=documents, ids=uuids)

​Step 4: 벡터 데이터베이스 쿼리유사성 검색을 통해 특정 쿼리와 유사한 문서를 검색해보겠습니다.PythonCopy# 기본 유사성 검색
results = vector_store.similarity_search("내일 날씨는 어떨까요?", k=2, filter={"source": "news"},)
for res in results:
print(f"* {res.page_content}, [{res.metadata},]")
# 점수와 함께 유사성 검색
results_with_scores = vector_store.similarity_search_with_score("LangChain에 대해 이야기해주세요.", k=2, filter={"source": "tweet"},)
for res, score in results_with_scores:
print(f"* [SIM={score:.3f},] {res.page_content}, [{res.metadata},]")

​RAG 체인에 FAISS 통합💡RAG (Retrieval-Augmented Generation) 체인을 구성하여 검색된 문서를 바탕으로 질문에 응답할 수 있도록 구성합니다.Step 1: Retriever로 변환FAISS를 retriever로 변환해 RAG 체인에서 사용합니다.PythonCopyretriever = vector_store.as_retriever(search_type="similarity", search_kwargs={"k": 1},)

​Step 2: RAG 체인 생성LangChain의 모델과 프롬프트를 연결하여 RAG 체인을 구성합니다.PythonCopy
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough

# 프롬프트 템플릿 정의
contextual_prompt = ChatPromptTemplate.from_messages([
("system", "Answer the question using only the following context."),
("user", "Context: {context},\\: {question},")
])
class DebugPassThrough(RunnablePassthrough):
def invoke(self, *args, **kwargs):
        output = super().invoke(*args, **kwargs)
print("Debug Output:", output)
return output
# 문서 리스트를 텍스트로 변환하는 단계 추가
class ContextToText(RunnablePassthrough):
def invoke(self, inputs, config=None, **kwargs): # config 인수 추가
# context의 각 문서를 문자열로 결합
        context_text = "".join([doc.page_content for doc in inputs["context"]])
return {"context": context_text, "question": inputs["question"]},
# RAG 체인에서 각 단계마다 DebugPassThrough 추가
rag_chain_debug = {
"context": retriever, # 컨텍스트를 가져오는 retriever
"question": DebugPassThrough() # 사용자 질문이 그대로 전달되는지 확인하는 passthrough
}, | DebugPassThrough() | ContextToText()|   contextual_prompt | model

# 질문 실행 및 각 단계 출력 확인
response = rag_chain_debug.invoke("강사이름은?")
print("Final Response:")
print(response.content)
​FAISS 인덱스의 저장 및 로드FAISS 인덱스를 저장해 다시 사용할 수 있습니다.PythonCopy# 인덱스 저장
vector_store.save_local("faiss_index")
# 저장된 인덱스 로드
new_vector_store = FAISS.load_local("faiss_index", embeddings)

​FAISS 데이터베이스 병합두 개의 FAISS 데이터베이스를 병합할 수 있습니다.PythonCopydb1 = FAISS.from_texts(["문서 1 내용"], embeddings)
db2 = FAISS.from_texts(["문서 2 내용"], embeddings)
# 병합
db1.merge_from(db2)

​', 16),
('LLM', 'Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩', 'Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩📕Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩수업 목표한국어 임베딩의 특징과 임베딩 실습을 진행합니다.목차Word2Vec을 사용한 한국어 임베딩Word2Vec 한국어 임베딩 실습Sentence-Transformer로 한국어 문장 임베딩Sentence-Transformer 한국어 임베딩 실습Transformer 기반 최신 한국어 임베딩Transformer 한국어 임베딩 실습: KoBERT 사용한국어 임베딩의 특징과 도전 과제왜 한국어 임베딩이 어려운가?최신 모델과 접근 방식배운 내용 정리하기!❗이번 실습에서는 한국어 임베딩을 위한 세 가지 대표적인 기법인 Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩을 살펴보고 실습해볼 거예요. 특히 최신 Transformer 모델을 사용하여 한국어를 잘 처리하는 방법에 대해 알아볼게요.Word2Vec을 사용한 한국어 임베딩❗Word2Vec은 단어를 고차원 벡터로 변환하여 의미적 유사성을 측정하는 임베딩 기법이에요. 단어 간의 문맥적 관계를 반영하여, 비슷한 의미를 가진 단어들이 유사한 벡터 값을 갖도록 학습합니다.Word2Vec 한국어 임베딩 실습PythonCopyfrom gensim.models import Word2Vec

# 샘플 한국어 문장 데이터
sentences = [
"나는 오늘 책을 읽었다",
"고양이가 야옹하고 울었다",
"인공지능은 정말 흥미로운 주제다",
"한국어 임베딩을 학습하는 중이다"
]
# Python 기본 split() 사용해 간단하게 토큰화
tokenized_sentences = [sentence.split() for sentence in sentences]
# Word2Vec 모델 학습
word2vec_model = Word2Vec(sentences=tokenized_sentences, vector_size=100, window=5, min_count=1, workers=4)
# 단어 ''고양이''와 유사한 단어 찾기
similar_words = word2vec_model.wv.most_similar("고양이")
print(similar_words)

​Word2Vec 특징장점: 단어 간의 의미적 관계를 파악하는 데 적합단점: 단어 자체만 학습하므로, 문장 단위에서는 유연성이 부족Sentence-Transformer로 한국어 문장 임베딩💡Sentence-Transformer는 문장 단위로 임베딩을 생성할 수 있는 BERT 기반의 모델이에요. 특히 한국어에 특화된 Ko-Sentence-BERT 같은 모델을 사용하면, 문장 간의 의미적 유사성을 정확하게 계산할 수 있습니다.Sentence-Transformer 한국어 임베딩 실습PythonCopyfrom sentence_transformers import SentenceTransformer

# 최신 Ko-Sentence-BERT 모델 로드
model = SentenceTransformer(''sentence-transformers/kr-sentence_bert-base'')
# 샘플 문장들
sentences = [
"나는 오늘 책을 읽었다.",
"고양이가 야옹하고 울었다.",
"인공지능은 흥미로운 주제다.",
"한국어 임베딩을 학습하는 중이다."
]
# 문장 임베딩 생성
embeddings = model.encode(sentences)
# 첫 번째 문장 임베딩 확인
print(embeddings[0])

​Sentence-Transformer 특징장점: 문장 간의 유사성을 정확하게 측정, 문맥을 고려한 임베딩 생성단점: 학습 속도가 상대적으로 느림Transformer 기반 최신 한국어 임베딩💡Transformer 기반 모델들은 BERT, GPT 같은 모델들로 발전해왔고, 최근에는 KoBERT, KoGPT와 같은 한국어 특화 모델이 등장했어요. 이 모델들은 문맥을 고려하여 정교한 임베딩을 생성해줍니다.Transformer 한국어 임베딩 실습: KoBERT 사용PythonCopyfrom transformers import BertTokenizer, BertModel
import torch

# KLUE-BERT 모델과 토크나이저 로드
tokenizer = BertTokenizer.from_pretrained(''klue/bert-base'')
model = BertModel.from_pretrained(''klue/bert-base'')
# 입력 문장
sentence = "한국어 임베딩을 학습하고 있습니다."
# 토큰화 및 텐서 변환
inputs = tokenizer(sentence, return_tensors=''pt'')
# 임베딩 생성
with torch.no_grad():
    outputs = model(**inputs)
# 임베딩 벡터 추출 (평균값으로 계산)
embedding = outputs.last_hidden_state.mean(dim=1)
print(embedding)
​Transformer 특징장점: 문맥을 양방향으로 이해, 문장 전체의 의미를 깊이 반영단점: 계산 비용이 크고, 모델 크기가 큼한국어 임베딩의 특징과 도전 과제왜 한국어 임베딩이 어려운가?1️⃣교착어 특성: 한국어는 조사와 어미를 많이 사용하는 교착어로, 단어 변형이 많아 정확한 형태소 분석이 중요해요.2️⃣어순의 유연성: 한국어는 어순이 자유롭기 때문에, 동일한 의미라도 다양한 형태로 표현될 수 있어요.3️⃣데이터 부족: 영어에 비해 한국어로 학습된 데이터가 상대적으로 적어, 임베딩 모델이 충분히 학습되지 않은 경우가 많습니다.최신 모델과 접근 방식KoBERT, KoGPT 등 한국어 전용 Transformer 모델들은 이러한 문제를 해결하기 위해 한국어에 특화된 데이터셋을 사용하여 학습되었습니다.특히 Sentence-Transformer는 문장 간 의미적 유사성을 정확하게 파악하는 데 강점을 가지며, 한국어 문장 처리에 탁월한 성능을 보여줍니다.배운 내용 정리하기!요약Word2Vec: 단어 단위의 의미적 유사성을 벡터로 표현.Sentence-Transformer: 문장 간 유사성을 벡터로 표현, Ko-Sentence-BERT 모델로 한국어 문장 처리.Transformer 모델 (특히? KoBERT): 문맥을 고려한 고차원 임베딩, 한국어 전용 모델로 강력한 성능.😀이러한 다양한 임베딩 기법을 통해 한국어 텍스트 분석의 정확성과 효율성을 높일 수 있습니다. 한국어 임베딩의 특성과 최신 기법을 잘 활용하여 LLM 시스템에 적용해보세요!', 17),
('LLM', '문서 임베딩 실습하기', '문서 임베딩 실습하기📕 LLM & RAG를 활용한 AI 서비스 만들기/📘 LLM & RAG를 활용한 AI 서비스 만들기 - 5주차/📕문서 임베딩 실습하기Made with📕문서 임베딩 실습하기수업 목표문서 임베딩의 기본 개념과 Faiss로 유사도 검색 실습을 진행합니다.목차실습 준비물 문서 임베딩의 기본 개념문서 단위 임베딩 전체 문서 임베딩하기문장 단위 임베딩하기문단 단위 임베딩하기Faiss로 유사도 검색하기Faiss 초기화 및 인덱싱유사 문장 검색하기유사도에 대한 실험길이 단위 선택 가이드추가 실험: 임베딩 벡터 시각화하기추가 실험: t-SNE를 이용한 고차원 임베딩 시각화💡여러분 안녕하세요! 오늘은 input.txt라는 txt 파일을 가지고 문서 임베딩을 실습해보려고 합니다. 🤓 특히 Faiss를 활용해 유사 단어 검색까지 해볼 거예요! 문서를 임베딩하는 여러 방법에 대해서도 실험해볼 테니 기대해 주세요. 🚀실습 준비물 Python 코드 실행 환경 (Jupyter Notebook 또는 IDE 추천)input.txt 파일 (이 파일에는 우리가 분석할 텍스트 데이터가 들어있어요!)sentence-transformers 라이브러리 설치faiss 라이브러리 설치Plain TextCopypip install sentence-transformers faiss-cpu​문서 임베딩의 기본 개념❗문서를 임베딩할 때, 텍스트를 벡터 형태로 변환하여 컴퓨터가 이해하기 쉽게 만들어요. 변환된 벡터들은 문서 간의 유사도를 계산하거나, 검색을 위해 활용됩니다. 이번 실습에서는 최신 한국어 모델을 사용해 문서를 임베딩할 거예요! 최신 모델은 sentence-transformers를 통해 불러올 예정입니다. ✨참고: 임베딩이란 텍스트, 이미지 등 다양한 데이터를 고차원의 벡터 공간에 표현하는 것을 말합니다. 
이렇게 표현된 벡터들은 기계 학습 모델들이 데이터를 더 쉽게 이해하고 분석할 수 있게 도와줘요!문서 단위 임베딩 💡문서를 임베딩할 때 중요한 결정 중 하나는 임베딩할 텍스트의 길이를 어떻게 설정할지입니다. 한 번 전체 문서를 통째로 임베딩할 수도 있고, 문장을 단위로 하거나 문단 단위로 쪼개서 임베딩할 수도 있어요. 각 방법의 장단점을 비교해 보죠!전체 문서 임베딩하기먼저 전체 문서를 하나의 벡터로 임베딩하는 방법입니다.
이 방법은 문서 전체의 맥락을 이해하는 데 유리하지만, 길이가 너무 길 경우 중요한 정보가 손실될 수 있습니다.PythonCopyfrom sentence_transformers import SentenceTransformer
import numpy as np

# 모델 불러오기
model = SentenceTransformer(''sentence-transformers/xlm-r-100langs-bert-base-nli-stsb-mean-tokens'')
# input.txt 파일 불러오기
with open(''input.txt'', ''r'', encoding=''utf-8'') as file:
    document = file.read()
# 전체 문서 임베딩
doc_embedding = model.encode(document)
​실습 실험: 전체 문서 임베딩의 성능을 확인하기 위해 doc_embedding을 사용해 문서 전체의 요약본을 다른 문서와 비교해 보세요. 전체 문서를 하나의 벡터로 표현하는 것이 실제 문서의 의미를 얼마나 잘 반영하는지 확인할 수 있어요.문장 단위 임베딩하기문서를 문장 단위로 나누어 임베딩해 볼까요? 이렇게 하면 문장별 유사도를 계산하기에 좋습니다. 특히 검색 시 특정 문장과 유사한 문장을 찾는 데 유용해요.PythonCopyfrom nltk.tokenize import sent_tokenize

# 문장으로 나누기
sentences = sent_tokenize(document)
# 각 문장을 임베딩
sentence_embeddings = model.encode(sentences)
​실습 실험: 문장 단위로 임베딩한 후, 특정 문장을 입력해 유사 문장을 찾아보세요. 예를 들어, "이 문서의 핵심은 무엇인가요?" 같은 질문을 던지고 그와 유사한 문장을 검색해 봅시다.문단 단위 임베딩하기문서를 문단 단위로 쪼개 임베딩하는 방법도 있어요. 이 방법은 문서 내 주제별 정보를 분석할 때 유리합니다.PythonCopyparagraphs = document.split('''') # 두 줄 개행 기준으로 문단 나누기
# 각 문단을 임베딩
paragraph_embeddings = model.encode(paragraphs)
​실습 실험: 문단 단위로 나눈 후 각 문단의 벡터를 시각화해서 문단별 유사도를 비교해 보세요. 이 과정에서 PCA 또는 t-SNE 같은 차원 축소 방법을 사용하면 벡터 간의 관계를 쉽게 확인할 수 있어요!Faiss로 유사도 검색하기💡임베딩이 끝났다면, 이제 Faiss를 사용해 유사도를 계산해 봅시다. Faiss는 벡터 간 유사도를 빠르게 계산할 수 있도록 도와주는 라이브러리입니다.Faiss 초기화 및 인덱싱먼저, 임베딩된 벡터들을 인덱싱해서 검색할 준비를 해볼게요!PythonCopyimport faiss

# 문장 임베딩을 사용해 인덱스 생성
dimension = sentence_embeddings.shape[1]
index = faiss.IndexFlatL2(dimension) # L2 거리 기반 인덱스
# 인덱스에 벡터 추가
index.add(np.array(sentence_embeddings))
​유사 문장 검색하기특정 문장과 유사한 문장을 찾아봅시다! 검색하고 싶은 문장을 입력하고, 인덱스를 활용해 유사도를 계산합니다.PythonCopyquery = "검색할 문장을 입력하세요."
query_vec = model.encode(query)
# 유사한 문장 3개 찾기
D, I = index.search(np.array([query_vec]), k=3)
# 결과 출력
for idx in I[0]:
print(f"유사 문장: {sentences[idx]},")
​실습 실험: 다른 문장들을 입력해서 어떤 문장이 가장 유사하게 검색되는지 실험해 보세요. 예를 들어, "오늘 날씨는 어때?"와 같은 문장을 넣어보면 유사한 주제를 가진 문장들이 잘 검색되는지 확인할 수 있습니다.유사도에 대한 실험유사도 검색 결과의 정확도를 평가해봅시다. 다음과 같은 실험을 통해 유사도 결과를 분석해 볼 수 있어요

1️⃣다양한 쿼리 테스트
다양한 쿼리를 사용하여 유사 문장 검색 결과를 비교해 보세요. 예를 들어, 간단한 문장과 복잡한 문장을 각각 입력해 보고 결과가 어떻게 달라지는지 관찰합니다.2️⃣유사도 점수 분석
검색 결과로 반환된 유사도 점수(D)를 분석하여, 높은 유사도와 낮은 유사도 간의 차이를 확인해 보세요. 예를 들어, D 값을 출력하여 얼마나 유사한지 정량적으로 평가해 볼 수 있습니다.PythonCopy# 유사도 점수와 함께 결과 출력
for idx, score in zip(I[0], D[0]):
print(f"유사 문장: {sentences[idx]},, 유사도 점수: {score},")
​실습 실험: 유사도 점수가 높은 문장과 낮은 문장을 비교해 보고, 그 차이가 문장의 의미나 표현 방식에서 어떻게 드러나는지 분석해 보세요. 이렇게 하면 모델이 유사도를 어떻게 판단하는지 더 깊이 이해할 수 있습니다.길이 단위 선택 가이드전체 문서 임베딩: 문서 전체 맥락을 분석하고 싶을 때.문장 단위 임베딩: 특정 문장과의 유사도 계산이나 세밀한 검색이 필요할 때.문단 단위 임베딩: 주제별 유사도를 분석하고 싶을 때.Tip: 각 단위로 임베딩했을 때의 차이를 비교해 보는 것도 좋은 실습이 될 수 있어요. 예를 들어, 문장 단위로 했을 때와 문단 단위로 했을 때의 검색 결과가 어떻게 달라지는지 확인해 보세요. 😊추가 실험: 임베딩 벡터 시각화하기❗임베딩된 벡터들은 고차원 공간에 위치하게 됩니다. 이를 시각화하면 벡터 간의 관계를 더 직관적으로 이해할 수 있어요. PCA나 t-SNE 같은 차원 축소 기법을 사용해 2D나 3D로 시각화해 봅시다!PythonCopyfrom sklearn.decomposition import PCA
import matplotlib.pyplot as plt

# 문장 임베딩 벡터의 차원을 축소하여 시각화
pca = PCA(n_components=2)
reduced_embeddings = pca.fit_transform(sentence_embeddings)
# 시각화
plt.scatter(reduced_embeddings[:, 0], reduced_embeddings[:, 1])
plt.title(''Sentence Embeddings Visualization'')
plt.xlabel(''PCA Component 1'')
plt.ylabel(''PCA Component 2'')
plt.show()
​실습 실험: 각 색깔로 다른 문단이나 문서의 벡터를 시각화해서 벡터들이 어떻게 군집되는지 확인해 보세요. 이는 유사한 문장들이 벡터 공간에서 얼마나 가깝게 위치하는지 직관적으로 이해하는 데 도움이 됩니다. 🎨추가 실험: t-SNE를 이용한 고차원 임베딩 시각화❗t-SNE는 고차원 데이터를 저차원으로 시각화하는 데 유용한 기법이에요. 임베딩된 벡터들을 t-SNE를 사용해 시각화해 보면, 벡터 간의 관계를 더 명확하게 이해할 수 있습니다.PythonCopyfrom sklearn.manifold import TSNE

# t-SNE로 차원 축소
tsne = TSNE(n_components=2, perplexity=30, n_iter=300)
tsne_results = tsne.fit_transform(sentence_embeddings)
# 시각화
plt.scatter(tsne_results[:, 0], tsne_results[:, 1])
plt.title(''t-SNE Sentence Embeddings Visualization'')
plt.xlabel(''t-SNE Component 1'')
plt.ylabel(''t-SNE Component 2'')
plt.show()
​Tip: t-SNE는 계산 비용이 많이 들기 때문에, 데이터의 크기가 클 경우 일부만 샘플링해서 시각화해 보세요. t-SNE는 특히 데이터 간의 지역적 구조를 잘 드러내는 데 유리해요.', 18),
('OPENSOURCE', '서울시 공공 자전거 분석', '# 공공데이터 분석## 서울시 공공자전거 이용현황http://data.seoul.go.kr/datalist/oa-14994/f/1/datasetview.do## 공공자전거 대여소별 대여내역import osos.getcwd()### 그래프 그리기, 파일처리, 정규식 라이브러리 importimport matplotlib.pyplot as pltfrom matplotlib.cm import scalarmappableimport numpy as npimport re### 한글지원 코드import platformfrom matplotlib import font_manager, rcif platform.system()==''windows'':    path = ''c:/windows/fonts/malgun.ttf''    font_name = font_manager.fontproperties(fname=path).get_name()    rc(''font'', family=font_name)### 1. 텍스트 파일 .csv 읽어보기data_all = np.loadtxt(''c:/dev/jhlee_data/대여소별 대여내역(2017년).csv'', dtype=''u'', delimiter='','', encoding=''utf-8'')### 2. 데이터 차원 확인data_all.shape### 3-1. 상위 5개의 데이터 확인data_all[1:5, :]### 3-2. 데이터 스킴 확인data_all[0, :]### 4. 원 데이터 array에서 분석 data로 가져오기, 상위 5개 데이터 확인- 원 데이터 array인 data_all은 보존할 것rental_loc=[]rental_place=[]rental_date=[]num_of_rental=[0]data = data_all[1:, :]data[:5, :]### 5. 그룹명 가져오기rental_loc = data_all[1:, :1]rental_loc = np.unique(rental_loc)print(rental_loc)len(rental_loc)rental_loc_list = data_all[1:, :1].tolist()num_of_rental_list = data_all[1:, 3:].tolist()num_of_rental = [ [] for x in range(len(rental_loc)) ]### 6. 각 구의 대여소 개수 가져오기for i in range(len(rental_loc)): # 26개의 구    for j in range(len(rental_loc_list)): # 그룹명 전체        if rental_loc[i] == rental_loc_list[j][0]: # 같은 이름이면 대여 건수를 리스트에 추가            num_of_rental[i].append(int(num_of_rental_list[j][0]))            num_of_rental_place = []for i in range(len(rental_loc)):    num_of_rental_place.append(len(num_of_rental[i])) # 각 구에 있는 대여소 개수num_of_rental_place_arr = np.array(num_of_rental_place)num_of_rental_place_arrplt.figure(figsize=(10, 8))x = num_of_rental_placey = rental_locdata_color = [ y / max(x) for y in x]my_cmap = plt.cm.get_cmap(''summer_r'')colors = my_cmap(data_color)plt.barh(y, x, color=colors)sm = scalarmappable(cmap=my_cmap, norm=plt.normalize(0, max(data_color)))sm.set_array([])cbar = plt.colorbar(sm)cbar.set_label(''color'', rotation=270, labelpad = 25)for i, v in enumerate(x):    plt.text(v + 3 , i, str(v), color=''m'', fontweight=''bold'')    plt.xlim(0, 25000)plt.xlabel("대여소 수")plt.ylabel("지역구")plt.title("서울시 공공자전거 대여소 현황")plt.grid()plt.show()### 7. 서울시 각 구별 연간 대여횟수 가져오기num_of_rental_array = np.array(num_of_rental)sum_of_rental = []for i in range(len(num_of_rental_array)):    sum_of_rental.append(np.array(num_of_rental_array[i]).sum())plt.figure(figsize=(20, 10))x = rental_locy = sum_of_rentaldata_color = [ x / max(y) for x in y]my_cmap = plt.cm.get_cmap(''viridis_r'')colors = my_cmap(data_color)bar = plt.bar(x, y, color=colors, width=0.6)sm = scalarmappable(cmap=my_cmap, norm=plt.normalize(0, max(data_color)))sm.set_array([])cbar = plt.colorbar(sm)cbar.set_label(''color'', rotation=270, labelpad = 25)for rect in bar:    height = rect.get_height()    plt.text(rect.get_x() + rect.get_width()/2.0, height, ''%d'' % int(height), color=''m'', fontweight=''bold'', ha=''center'', va=''bottom'')    plt.ylim(0, 800000)plt.xlabel("지역구")plt.ylabel("대여건수")plt.xticks(rotation=45)plt.title("서울시 공공자전거 연간 대여건수")plt.grid()plt.show()### 8. 대여소 수 대비 대여건수 비교x = num_of_rental_placey = sum_of_rentalfp1 = np.polyfit(x, y, 1)fp1f1 = np.poly1d(fp1)fx = np.linspace(0, 28000, 100) # x축의 범위는 0부터 28000까지, 샘플 데이터 100개error_range = np.abs(y - f1(x))df_sort = np.sort(error_range)[::-1] # 오차 내림차순 정렬df_sort[:5]plt.figure(figsize=(10,10))plt.scatter(x, y, c=error_range, s=50)plt.plot(fx, f1(fx), ls=''dashed'', lw=3, color=''g'')plt.xlim(0, 28000)plt.ylim(0, 800000)plt.legend([''sample'', ''rental/rental_place''], loc=''upper left'')plt.xlabel("대여소 수")plt.ylabel("연간 대여건수")plt.title("서울시 공공자전거 지역별 대여소 수 대비 연간 대여 비율")plt.grid()plt.show()### 9. 마포구 연간 대여 추이mapo_id = 13rental_date = data_all[1:, 2:3]num_of_rental_mapo = [[]] * 12num_of_rental[mapo_id][2]jan = 0feb = 0mar = 0apr = 0may = 0jun = 0jul = 0aug = 0sep = 0oct = 0nov = 0dec = 0k = 0for i in range(len(rental_loc_list)): # 전체 내역에서    tmp = str(rental_date[i].tolist())    tmp_date = re.findall("\d+", tmp) # 정규식 사용하여 월(month) 정보 추출    date = list(map(int, tmp_date))    rental_month = date[0] # i번째 대여 달(month)    rental_location = rental_loc_list[i][0] # i번째 대여 그룹(00구)    if rental_location == ''마포구'' and rental_month == 1:        jan += num_of_rental[mapo_id][k] # 날짜에 따른 마포구 대여소별 대여 건수를 리스트에 추가         elif rental_location == ''마포구'' and rental_month == 2:        feb += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 3:        mar += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 4:        apr += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 5:        may += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 6:        jun += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 7:        jul += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 8:        aug += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 9:        sep += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 10:        oct += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 11:        nov += num_of_rental[mapo_id][k]    elif rental_location == ''마포구'' and rental_month == 12:        dec += num_of_rental[mapo_id][k]    k += 1jan- 월별 마포구 대여건수 합sum_of_rental_mapo = []sum_of_rental_mapo.append(jan)sum_of_rental_mapo.append(feb)sum_of_rental_mapo.append(mar)sum_of_rental_mapo.append(apr)sum_of_rental_mapo.append(may)sum_of_rental_mapo.append(jun)sum_of_rental_mapo.append(jul)sum_of_rental_mapo.append(aug)sum_of_rental_mapo.append(sep)sum_of_rental_mapo.append(oct)sum_of_rental_mapo.append(nov)sum_of_rental_mapo.append(dec)sum_of_rental_mapoplt.figure(figsize=(10,3))mon = [''1월'', ''2월'', ''3월'', ''4월'', ''5월'', ''6월'', ''7월'', ''8월'', ''9월'', ''10월'', ''11월'', ''12월'']plt.plot(mon, sum_of_rental_mapo, "c*--", markersize = 10, label = "대여건수")plt.legend(loc=4)plt.ylabel("대여 건수")plt.title("월별 마포구 대여 건수")### 10. 마포구 계절별 대여 비율season_of_rental_mapo = []season = [''봄'', ''여름'', ''가을'', ''겨울'']spring = mar + apr + maysummer = jun + jul + augautumn = sep + oct + novwinter = dec + jan + febseason_of_rental_mapo.append(spring)season_of_rental_mapo.append(summer)season_of_rental_mapo.append(autumn)season_of_rental_mapo.append(winter)plt.pie(season_of_rental_mapo, labels=season, autopct=''%.1f%%'')', 1),
('OPENSOURCE', '무더위 쉼터 데이터', '# 전국 무더위 쉼터 표준 데이터(2019)- 전국 무더위 쉼터 표준 데이터(2019) : 공공데이터 포털(https://www.data.go.kr/data/15013199/standard.do)## 1. 필요한 라이브러리 importimport pandas as pdimport numpy as npimport missingno as msnoimport matplotlib.pyplot as pltimport matplotlib.cm as cmfrom matplotlib.cm import scalarmappablefrom sklearn import preprocessingimport seaborn as snsimport mathimport json- 한글 지원 코드import platformfrom matplotlib import font_manager, rcif platform.system()==''windows'':    path = ''c:/windows/fonts/malgun.ttf''    font_name = font_manager.fontproperties(fname=path).get_name()    rc(''font'', family=font_name)## 2. 데이터 파일 .csv 읽어보기shelter = pd.read_csv(''./sampledata/전국무더위쉼터표준데이터.csv'', encoding=''euc-kr'')## 3. 원본 데이터 복사해서 활용shelter_data = shelter.copy()## 4. 데이터 정보 확인### 4.1 차원shelter_data.shape### 4.2 정보shelter_data.info()### 3.3 타입shelter_data.dtypes## 4. 5개의 데이터 확인### 4.1 상위 5개shelter.head()### 4.2 하위 5개shelter.tail()### 4.3 샘플 데이터 5개shelter_data.sample(5)## 5. null 값이 있는 데이터 찾기shelter_data.isnull()shelter_data.isnull().sum()msno.matrix(shelter_data, figsize=(10, 8))## 6. dataframe 수정df_shelter = shelter_data.copy()- 분석과 상관없는 column 제거df_shelter = df_shelter.drop(["법정동명", "시설면적", "특이사항", "소재지지번주소", "관리기관명", "관리기관전화번호", "위도", "경도", "데이터기준일자", "제공기관코드", "제공기관명"], axis=1)df_shelter.head()df_shelter.shapeshelter_type_arr = df_shelter["쉼터유형구분"].unique()is_open_nights = df_shelter["야간연장운영여부"].unique()is_open_weekends = df_shelter["주말운영여부"].unique()is_open_weekendsis_accomodation_available = df_shelter["숙박가능여부"].unique()is_accomodation_available- 주말운영여부 y → y로 수정df_shelter.loc[df_shelter["주말운영여부"]==''y'', "주말운영여부"] = "y"- 무더위쉼터 소재지 주소에서 광역시/도 부분 추출하여 새로 column 생성df_shelter["광역시/도"] = df_shelter["소재지도로명주소"].str.split(" ").str[0]region_arr = []region_arr = df_shelter["광역시/도"].unique()region_arr = region_arr[~pd.isnull(region_arr)]region_arr- column 순서 재조정df_shelter = df_shelter[["쉼터명", "광역시/도", "쉼터유형구분", "운영시작일자", "운영종료일자", "이용가능인원수", "선풍기보유대수", "에어컨보유대수", "야간연장운영여부", "주말운영여부", "숙박가능여부", "소재지도로명주소"]]df_shelter.sample(5)- 각 광역시/도별 평균 값pd.pivot_table(df_shelter, index=["광역시/도"], fill_value=0, margins=true)- 각 광역시/도별 합계region_sum = pd.pivot_table(df_shelter, index=["광역시/도"], aggfunc=''sum'', fill_value=0)region_sumdf_shelter.describe()df_shelter.describe(include=[np.object]).style.set_properties(subset=["소재지도로명주소"], **{''width'': ''230px''},)- 숙박 가능 비율 - 원/스택- 연도별 운영 시작 쉼터 수- 도별 이용가능인원- 이용가능 인원 대비 선풍기/에어컨 개수 - 스캐터 + 직선- 쉼터유형 비율 - heatmapdf_province = df_shelter[["쉼터명", "광역시/도", "쉼터유형구분"]]df_province.shapedf_province.sample(10)## 7. 분석### 7.1 각 광역시/도 소재 무더위쉼터 개수 - 막대그래프 + 지도shelter_counts = {},for region in region_arr:    shelter_counts[region] = len(df_shelter[df_shelter["광역시/도"]==region])    shelter_countsdf_region = pd.dataframe(shelter_counts.items(), columns=["광역시/도", "무더위쉼터 수"])df_region.dropna(subset = ["광역시/도"], inplace=true)df_region.set_index("광역시/도", inplace=true)df_region["무더위쉼터 수"]["서울특별시"]my_cmap = plt.cm.get_cmap(''cool_r'')colors = cm.cool_r(np.linspace(0, 1, len(df_region)))df_region["무더위쉼터 수"].sort_values().plot(kind=''barh'', grid=true, figsize=(10, 8), color=colors)x = df_region["무더위쉼터 수"]y = df_region.indexdata_color = [ y / max(x) for y in x]sm = scalarmappable(cmap=my_cmap, norm=plt.normalize(0, max(data_color)))sm.set_array([])cbar = plt.colorbar(sm)cbar.set_label(''color'', rotation=270, labelpad = 25)for i, v in enumerate(df_region["무더위쉼터 수"].sort_values()):    plt.text(v + 3 , i, str(v), color=''y'', fontweight=''bold'', fontsize=12)    plt.xlim(0, 7000)plt.xlabel("무더위쉼터 수")plt.ylabel("광역시/도")plt.title("전국 무더위쉼터 현황")### 7.2 각 광역시/도 소재 무더위쉼터 기관 비율 - heatmapshelter_financial_counts = df_shelter[df_shelter["쉼터유형구분"]=="금융기관"]["광역시/도"].value_counts()shelter_ef_counts = df_shelter[df_shelter["쉼터유형구분"]=="노인시설"]["광역시/도"].value_counts()shelter_cc_counts = df_shelter[df_shelter["쉼터유형구분"]=="주민센터"]["광역시/도"].value_counts()shelter_etc_counts = df_shelter[df_shelter["쉼터유형구분"]=="기타"]["광역시/도"].value_counts()shelter_rf_counts = df_shelter[df_shelter["쉼터유형구분"]=="종교시설"]["광역시/도"].value_counts()shelter_wf_counts = df_shelter[df_shelter["쉼터유형구분"]=="복지회관"]["광역시/도"].value_counts()shelter_ph_counts = df_shelter[df_shelter["쉼터유형구분"]=="보건소"]["광역시/도"].value_counts()shelter_to1_counts = df_shelter[df_shelter["쉼터유형구분"]=="읍면동사무소"]["광역시/도"].value_counts()shelter_th_counts = df_shelter[df_shelter["쉼터유형구분"]=="마을회관"]["광역시/도"].value_counts()shelter_sh_counts = df_shelter[df_shelter["쉼터유형구분"]=="정자"]["광역시/도"].value_counts()shelter_to2_counts = df_shelter[df_shelter["쉼터유형구분"]=="면동사무소"]["광역시/도"].value_counts()shelter_rc_type = {}, # 지역별 무더위쉼터 기관유형 수for region in region_arr:    shelter_rc_type[region] = df_shelter[df_shelter["광역시/도"]==region]["쉼터유형구분"].value_counts()shelter_tc_region = {}, # 기관유형별 지역 개설 수for shelter_type in shelter_type_arr:    shelter_tc_region[shelter_type] = df_shelter[df_shelter["쉼터유형구분"]==shelter_type]["광역시/도"].value_counts()df_type = pd.dataframe(data=[shelter_rc_type["서울특별시"], shelter_rc_type["경상북도"], shelter_rc_type["전라남도"], shelter_rc_type["경기도"], shelter_rc_type["대전광역시"], shelter_rc_type["대구광역시"], shelter_rc_type["충청북도"], shelter_rc_type["충청남도"], shelter_rc_type["전라북도"], shelter_rc_type["인천광역시"], shelter_rc_type["광주광역시"], shelter_rc_type["제주특별자치도"], shelter_rc_type["강원도"], shelter_rc_type["부산광역시"], shelter_rc_type["경상남도"], shelter_rc_type["울산광역시"], shelter_rc_type["세종특별자치시"]], index=region_arr, columns=df_shelter["쉼터유형구분"].unique())df_type = df_type[["금융기관", "노인시설", "보건소", "복지회관", "읍면동사무소", "면동사무소", "주민센터", "마을회관", "종교시설", "정자", "기타"]]df_type = df_type.fillna(0)df_type["총합"] = df_region["무더위쉼터 수"]type_sum = pd.pivot_table(df_type, index=region_arr, aggfunc=''sum'', fill_value=0, margins=true)type_sumplt.figure(figsize=(20, 10))sns.heatmap(df_type, annot=true, fmt=".1f", cmap="coolwarm_r", annot_kws={''size'':13},)plt.title("지역별 무더위쉼터 기관 비율", fontsize=20)plt.show()- 데이터 값의 차이가 크므로 비슷한 범위에 놓고 비교할 수 있도록 column별로 정규화col = df_type.columnsx = df_type[col].valuesmin_max_scaler = preprocessing.minmaxscaler()x_scaled = min_max_scaler.fit_transform(x.astype(float))df_type_norm = pd.dataframe(x_scaled, columns=col, index=df_type.index)df_type_normplt.figure(figsize=(20, 10))sns.heatmap(df_type_norm, annot=true, fmt=".4f", cmap="coolwarm_r", annot_kws={''size'':13},)plt.title("지역별 무더위쉼터 기관 비율", fontsize=20)plt.show()### 7.3 무더위 쉼터 주말 운영, 야간 연장 운영, 숙박 가능 비율close_night = len(df_shelter.loc[df_shelter["야간연장운영여부"]==is_open_nights[0]])open_night = len(df_shelter.loc[df_shelter["야간연장운영여부"]==is_open_nights[1]])no_info_night = len(df_shelter.loc[df_shelter["야간연장운영여부"].isna()])open_night_info = np.array([close_night, open_night, no_info_night])close_night_close_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[0]) & (df_shelter["주말운영여부"]==is_open_weekends[0])])close_night_open_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[0]) & (df_shelter["주말운영여부"]==is_open_weekends[1])])close_night_no_info_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[0]) & (df_shelter["주말운영여부"].isna())])open_night_close_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[1]) & (df_shelter["주말운영여부"]==is_open_weekends[0])])open_night_open_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[1]) & (df_shelter["주말운영여부"]==is_open_weekends[1])])open_night_no_info_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"]==is_open_nights[1]) & (df_shelter["주말운영여부"].isna())])no_info_night_close_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"].isna()) & (df_shelter["주말운영여부"]==is_open_weekends[0])])no_info_night_open_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"].isna()) & (df_shelter["주말운영여부"]==is_open_weekends[1])])no_info_night_no_info_weekend = len(df_shelter.loc[(df_shelter["야간연장운영여부"].isna()) & (df_shelter["주말운영여부"].isna())])open_weekend_info = np.array([close_night_close_weekend, close_night_open_weekend, close_night_no_info_weekend, open_night_close_weekend, open_night_open_weekend, open_night_no_info_weekend, no_info_night_close_weekend, no_info_night_open_weekend, no_info_night_no_info_weekend])print(open_night_info)print(open_weekend_info)close_weekend_accomodation_unavailable = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[0]) & (df_shelter["숙박가능여부"]==is_accomodation_available[0])])close_weekend_no_info_accomodation = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[0]) & (df_shelter["숙박가능여부"].isna())])close_weekend_accomodation_available = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[0]) & (df_shelter["숙박가능여부"]==is_accomodation_available[2])])open_weekend_accomodation_unavailable = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[1]) & (df_shelter["숙박가능여부"]==is_accomodation_available[0])])open_weekend_no_info_accomodation = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[1]) & (df_shelter["숙박가능여부"].isna())])open_weekend_accomodation_available = len(df_shelter.loc[(df_shelter["주말운영여부"]==is_open_weekends[1]) & (df_shelter["숙박가능여부"]==is_accomodation_available[2])])no_info_weekend_accomodation_unavailable = len(df_shelter.loc[(df_shelter["주말운영여부"].isna()) & (df_shelter["숙박가능여부"]==is_accomodation_available[0])])no_info_weekend_no_info_accomodation = len(df_shelter.loc[(df_shelter["주말운영여부"].isna()) & (df_shelter["숙박가능여부"].isna())])no_info_weekend_accomodation_available = len(df_shelter.loc[(df_shelter["주말운영여부"].isna()) & (df_shelter["숙박가능여부"]==is_accomodation_available[2])])accomodation_info = np.array([close_weekend_accomodation_unavailable, close_weekend_no_info_accomodation, close_weekend_accomodation_available, open_weekend_accomodation_unavailable, open_weekend_no_info_accomodation, open_weekend_accomodation_available, no_info_weekend_accomodation_unavailable, no_info_weekend_no_info_accomodation, no_info_weekend_accomodation_available])accomodation_infolabels_weekend = [''휴무'', ''운영'', ''정보없음'', ''휴무'', ''운영'', ''정보없음'', ''휴무'', ''운영'', ''정보없음'']labels_night = [''미연장'', ''연장'', ''정보없음'']colors_weekend = [''#ffaaa5'', ''#d6e6f2'', ''#ffd3b6'', ''#ffaaa5'', ''#d6e6f2'', ''#ffd3b6'', ''#ffaaa5'', ''#d6e6f2'', ''#ffd3b6'']colors_night = [''#ffe2e2'',''#e0f9b5'', ''#fefdca'']explode_weekend = (0, 0, 0.3, 0.1, 0, 0, 0.6, 0.4, 0.1)explode_night = (0, 0, 0)plt.figure(figsize=(4, 4))plt.title("전국 야간 연장 운영 비율 및 주말 운영 비율", position=(0.55, 1.7), fontsize=20)plt.pie(open_night_info, autopct=''%.1f%%'', textprops={''fontsize'':13},, colors=colors_weekend, startangle=90, shadow=true, pctdistance=0.85, radius=2.5)plt.pie(open_weekend_info, labels=labels_weekend, textprops={''fontsize'':11},, colors=colors_night, startangle=90, shadow=true,labeldistance=0.7, explode=explode_weekend, radius=1.8)plt.legend(labels_night, prop={''size'':12},, loc="center", title="야간 운영")centre_circle = plt.circle((0,0), 1, color=''black'', fc=''white'', linewidth=0)fig = plt.gcf()fig.gca().add_artist(centre_circle)plt.show()labels_weekend = [''휴무'', ''운영'', ''정보없음'']labels_accomodation = [''불가능'', ''정보없음'', ''가능'', ''불가능'', ''정보없음'', ''가능'', ''불가능'', ''정보없음'', ''가능'']colors_weekend = [''#ffaaa5'', ''#d6e6f2'', ''#ffd3b6'']colors_accomodation = [''#ffe2e2'',''#e0f9b5'', ''#fefdca'', ''#ffe2e2'',''#e0f9b5'', ''#fefdca'', ''#ffe2e2'',''#e0f9b5'', ''#fefdca'']explode_weekend = (0.05, 0.05, 0.05)explode_accomodation = (0, 0, 0,0, 0, 0, 0, 0.2, 0.4)plt.figure(figsize=(4, 4))plt.title("전국 주말 운영 비율 및 숙박 가능 비율", position=(0.55, 1.6), fontsize=20)plt.pie(open_weekend_info, autopct=''%.1f%%'', textprops={''fontsize'':13},, colors=colors_weekend, startangle=90, shadow=true, pctdistance=0.85, radius=2.5)plt.pie(accomodation_info, labels=labels_accomodation, autopct=''%.1f%%'', textprops={''fontsize'':11},, colors=colors_night, startangle=90, shadow=true, pctdistance=0.7, labeldistance=0.85, radius=1.8, explode=explode_accomodation)plt.legend(labels_weekend, prop={''size'':12},, loc="center", title="주말운영")centre_circle = plt.circle((0,0), 1, color=''black'', fc=''white'', linewidth=0)fig = plt.gcf()fig.gca().add_artist(centre_circle)plt.show()### 7.4 최근 5년 무더위쉼터 개설 건수df_shelter["개설연도"] = df_shelter["운영시작일자"].str.split("-").str[0]df_shelter["개설연도"].unique()start_2015 = len(df_shelter.loc[df_shelter["개설연도"] == "2015"])start_2016 = len(df_shelter.loc[df_shelter["개설연도"] == "2016"])start_2017 = len(df_shelter.loc[df_shelter["개설연도"] == "2017"])start_2018 = len(df_shelter.loc[df_shelter["개설연도"] == "2018"])start_2019 = len(df_shelter.loc[df_shelter["개설연도"] == "2019"])start_year = np.array([start_2015, start_2016, start_2017, start_2018, start_2019])start_yearplt.figure(figsize=(10,3))year = [''2015년'', ''2016년'', ''2017년'', ''2018년'', ''2019년'']plt.plot(year, start_year, "c*--", markersize = 10, label = "쉼터 개설 수")plt.legend(loc=4)plt.ylabel("쉼터 개설 수")plt.title("연도별 무더위쉼터 개설 건수")### 7.5 무더위쉼터 이용 가능 인원 대비 선풍기/에어컨 개수x = region_sum["이용가능인원수"]y = region_sum["선풍기보유대수"]z = region_sum["에어컨보유대수"]fp1 = np.polyfit(x, y, 1)f1 = np.poly1d(fp1)fx = np.linspace(0, 280000, 1000)region_sum["오차(선풍기)"] = np.abs(y - f1(x))df_sort1 = region_sum.sort_values(by=''오차(선풍기)'', ascending=false)df_sort1.head()fp2 = np.polyfit(x, z, 1)f2 = np.poly1d(fp2)fz = np.linspace(0, 280000, 1000)region_sum["오차(에어컨)"] = np.abs(z - f2(x))df_sort2 = region_sum.sort_values(by=''오차(에어컨)'', ascending=false)df_sort2.head()plt.figure(figsize=(20, 15))plt.subplot(211)plt.scatter(x, y, c=region_sum["오차(선풍기)"], s=50)plt.plot(fx, f1(fx), ls=''dashed'', lw=3, color=''g'')for n in range(5):    plt.text(df_sort1["이용가능인원수"][n]*1.02, df_sort1["선풍기보유대수"][n]*0.98, df_sort1.index[n], fontsize=13)    plt.xlim(0, 280000)plt.ylim(0, 14500)plt.legend([''sample'', ''수용인원 대비 선풍기 수''], loc=''upper left'')plt.xlabel("이용가능 인원")plt.ylabel("선풍기 보유 수")plt.title("전국 무더위쉼터 수용인원 대비 선풍기 보유 대수", fontsize=18)plt.colorbar()plt.grid()plt.subplot(212)plt.scatter(x, z, c=region_sum["오차(에어컨)"], s=50)plt.plot(fz, f2(fz), ls=''dashed'', lw=3, color=''m'')for n in range(5):    plt.text(df_sort2["이용가능인원수"][n]*1.02, df_sort2["에어컨보유대수"][n]*0.98, df_sort2.index[n], fontsize=13)plt.xlim(0, 280000)plt.ylim(0, 10000)plt.legend([''sample'', ''수용인원 대비 에어컨 수''], loc=''upper left'')plt.xlabel("이용가능 인원")plt.ylabel("에어컨 보유 수")plt.title("전국 무더위쉼터 수용인원 대비 에어컨 보유 대수", fontsize=18)plt.colorbar()plt.grid()plt.show()', 2),
('OPENSOURCE', 'ETF 예측 모델 (다중선형회귀, XGBoost, ARIMA)', 'import pandas as pdimport numpy as npimport matplotlib.pyplot as pltimport  seaborn as snsimport warningswarnings.simplefilter(action=''ignore'', category=futurewarning)!sudo apt-get install -y fonts-nanum!sudo fc-cache -fv!rm ~/.cache/matplotlib -rfimport matplotlib as mplimport matplotlib.font_manager as fmimport matplotlib.pyplot as plt#plt.rc(''font'', family=''nanumsquareround'') import matplotlib.pyplot as pltplt.rc(''font'', family=''nanumsquareround'') #목차### 분석 배경 및 분석 목적### 1.데이터셋 준비#### 1-1) 결측치, 이상치 확인###2. eda####2-1) 그래프####2-2) 분석 ###3. 시계열 전처리#### 3-1) 정상성 확인#### 3-2) 정상성을 갖는 데이터로 바꾸기#### 3-3) 특성 공학###4. 모델 생성####4-1) 모델 1: ols####4-2) 모델 2: xgboost regressor#### 4-3) 모델 3: arima#### 4-4) 모델 4: xgboost classifier###5. 모델 선택####5-1) 하이퍼파라미터 튜닝을 통한 모델 최적화####5-2) 최종모델###6. 특성중요도####6-1) 모델 예측에 중요한 특성 설명####6-2) 개별 샘플을 예시로 예측 설명###7. 번외) 다른 etf 분석 및 포트폴리오 구성###6. 주요 특성 설명###7. 묶어서 포트폴리오 만들고 평가## 분석 배경저는 데이터 분석회사에서 일하고 있는 직원입니다. 2016년부터 시작된 로보 어드바이저 사업이 이제는 많이 상용화가 되어 여러 증권사/은행/핀테크 기업에서 이미 로보 어드바이저 서비스를 시작하였습니다. 모든 기업이 각자 알고리즘을 개발해서 서비스를 하는 것이 아니라, 다른 데이터 기업과 협업해서 로보 어드바이저 사업을 하는 경우가 있어, 여기에 사용할 알고리즘을 개발하는 프로젝트를 제안하려고 합니다.## 분석 목표1. 종가가 20일 지수이동평균를 넘어서 수익을 낼 etf를 예측한다.2. 투자 성향별로 etf를 분배한 후 이들의 평균수익률을 예측한다.분석 모델은 시계열 회귀분석과 분류 모델을 설계한 후 더 적절한 모델을 선택할 예정입니다.타겟은 시계열 회귀분석의 경우 etf의 차분이며, 분류 모델의 경우 타겟은 종가가 20일 지수평균을 초과하는 것입니다.타겟을 20일 지수이동평균 초과하는 것으로 정한 것은, 누적 수익률을 이용한 타겟인 것이 가장 적절하겠으나 분석의 편의성 및 로보 어드바이저의 평균 매매회전율이 높기 때문에(200%이상) 20일을 기준으로 설정하였습니다.*매매회전율 = (매매대금 * 100) / (운용자금 * 2)#1. 데이터셋 준비여러 로보 어드바이저의 알고리즘 설명서를 분석한 결과 대부분의 로보 어드바이저는 etf 위주의 투자를 하는 것을 알 수 있었습니다. 따라서 이번 분석에서는 etf만을 사용하며, 위험도에 따라서 분류할 예정입니다.제가 이번 분석에서 사용할 etf의 선정기준은 시가총액 1000억 원 이상인 것들 중에 분야별(국내 시장지수, 국내 업종테마/국내 파생/해외 주식/원자재/채권)로 고르게 고르며, 생긴지 5년 이상된 지수들입니다.위험도 분류는 * 위험도 1: 채권* 위험도 2: 국내 시장지수, 국내 업종테마, 국내 파생* 위험도 3: 해외 주식, 원자재3단계로 하며, 분류기준 역시 다른 알고리즘 설명서를 참고하였습니다. etf 종목 선택은 분야별로 생긴지 10년 이상이 지난 etf 중 거래량이 제일 많은 하나의 etf 데이터를 사용할 예정입니다.* 국내 지수: kodex200* 국내 업종 테마: kodex 삼성그룹* 국내 파생 지수: kodex 레버리지* 해외 지수: tiger 미국나스닥 100* 원자재: kodex 골드선물(h)* 채권: kodex 단기채권[벤치마크] kospi200앞으로 불러올 etf들과 추세를 비교하기 위해서 kospi200 지수를 불러오겠습니다.import pandas_datareader.data as webfrom datetime import datetimekospi200 = web.datareader(''kpi200'', ''naver'', start=''2011-02-01'', end=''2021-02-23'')kospi200!pip install --upgrade mplfinancekospi200daily = kospi200[[''open'',''high'',''low'',''close'',''volume'']].iloc[-250:]kospi200daily = kospi200daily.astype(''float'')import mplfinance as mpfmpf.plot(kospi200daily,type=''candle'',mav=(5,20, 60),         style=''charles'',          title=''kospi200, feb 2020 to feb 2021'',         figratio=(29,14),volume=true)kospi200 그래프를 보면 지난 1년 간 kospi200지수의 등락을 볼 수 있습니다. kospi200 지수는 3월달에 가파르게 하락했다가 계속 완만하게 상승하는 모습을 확인할 수 있으며, 거래량은 증가와 감소를 반복하고 있습니다.이제 이번 분석에서 사용할 etf 중 하나인 kodex200을 예시로 어떤 분석방법이 가장 알맞을지 살펴보겠습니다.## kodex 200kodex200은 국내 kospi 200 지수를 그대로 추종하는 etf입니다. 분석의 편의와 여러 etf 간의 시간 간격을 맞추기 위해 10년 간의 데이터를 불러옵니다.import pandas_datareader.data as webfrom datetime import datetimekodex200  = web.datareader(''069500'', ''naver'', start=''2011-02-01'', end=''2021-02-23'')kodex200### 결측치 확인kodex200.info()제가 사용한 api 특성 상 결측값은 불러와지지 않았습니다.### 이상치 확인kodex200 = kodex200.astype(''float'')fig = plt.figure(figsize=(10,5))ax1 = fig.add_subplot(1, 2, 1)ax1 = sns.boxplot(kodex200[''close'']);ax2 = fig.add_subplot(1, 2, 2)#ax1.plot(x, y)#ax2.bar(x, y)ax2=sns.boxplot(kodex200[''volume'']);plt.show()그래프 상으로는 종가와 거래량에 이상치가 있는 것 같아 보입니다. 이를 아래 캔들차트를 통해서 자세히 알아보겠습니다.kodex200daily = kodex200[-250:]kodex200daily = kodex200daily.astype(''float'')mpf.plot(kodex200daily,type=''candle'',mav=(5,20, 60),         style=''charles'',          title=''kodex200, feb 2020 to feb 2021'',         figratio=(15,8),volume=true)kodex 200 지수의 캔들차트를 보면 kodex200은 kospi200를 그대로 추종하기 때문에 kospi200과 비슷한 추세를 보이는 것을 알 수 있습니다. 지수가 폭락하던 3월에 거래량이 급증한 것만 kospi200과 다른 점입니다. 종가는 계속 증가하는 추세이고, 거래량이 40,000,000이상인 값들을 이상치로 처리하기는 어려울 것 같아 그대로 사용하겠습니다.이제 이번 분석에서 사용할 kodex200의 10년치 추세를 보겠습니다.sns.set_style(''white'')sns.set_palette(''cividis'')kodex200 = kodex200.astype(''float'')plt.title(''kodex200, feb 2011 to feb 2021'')kodex200[''close''].plot();10년 간의 kodex200지수를 보면 전반적으로는 증가하면서도 뚜렷한 계절성 특징을 보인다거나 선형으로 나타내기 어려워 보입니다.이렇게 시계열 그래프가 긴 주기를 갖는 추세가 있지만 갑작스럽고 예측할 수 없는 방향의 변화가 있을 때는 데이터의 정상성을 확인해야 합니다. 정상성을 따르지 않는 시계열 데이터의 예측은 정확도가 많이 떨어지기 때문에 kodex200 데이터가 정상성을 띠는지 확인해보겠습니다.#시계열 데이터 전처리###정상성(stationarity) 확인from statsmodels.tsa.stattools import kpssprint(kpss(kodex200[''close''], regression=''ct'') )정상성을 확인하는 방법으로 kpss 테스트를 시행했는데, kpss 값은 0.52, p값은 0.01로 kodex200지수 종가가 정상성을 띤다는 귀무가설을 기각합니다. 즉, kodex200의 종가는 정상성을 따르지 않기 때문에 시계열분석에 적합하지 않습니다. (정상성 확인 전에 kodex 200 종가로 모델을 돌렸더니 r2 score가 음수가 나왔습니다...) #### 정상성 갖는 데이터로 바꾸기(차분)차분은 t기간의 데이터에서 t-1기간의 데이터를 뺀 값으로 여기서는 하루 간의 kdoex200 종가 차이를 구합니다.#차분 구하기kodex200 = kodex200.astype(''float'')kodex200[''diff''] =  np.r_[0, np.diff(kodex200[''close''])]kodex200import seaborn as snsimport matplotlibmatplotlib.rcparams[''axes.unicode_minus''] = falsesns.set_palette(''cividis'')kodex200[''diff''].plot();t기간의 kodex200 종가에서 t-1기간의 kodex200 종가를 뺀 차분을 구한 후 이를 그래프로 나타낸 것입니다. kodex200지수 종가와는 다르게 일정한 분산을 보이는 것을 알 수 있습니다.from statsmodels.tsa.stattools import kpssprint(kpss(kodex200[''diff''], regression=''ct'') )kpss 테스트를 해보면 kpss값 0.084, p값 0.1로, p값이 0.05이상이기 때문에 데이터가 정상성을 따른다는 귀무가설을 기각하지 못합니다. 따라서 차분 데이터를 사용해서 분석을 진행할 수 있습니다.이어서 차분한 종가의 자기상관을 알아보겠습니다. 많은 시계열 데이터는 고전적 회귀모형의 기본 가정인 오차항들끼리 독립이며, 등분산일 것을 만족하지 못하며 이를 자기상관이라고 부릅니다.자기상관(autocorrelation)은 시계열의 시차 값(lagged values) 사이의 선형 관계를 측정합니다. 정상성을 만족하지 못하는 kodex200 종가는 자기상관현상을 보이기 때문에 바로 분석에 이용하기는 어렵습니다. import matplotlib.pyplot as pltfrom statsmodels.graphics.tsaplots import plot_acf, plot_pacfplot_acf(kodex200[''close''])plot_pacf(kodex200[''close''])plt.show()kodex200 종가를 이용해서 그린 acf, pacf 그래프입니다. acf 그래프를 보면 잔차가 일정한 패턴을 보이며 자기상관 현상을 보이고 있습니다.이와 비교하기 위해 차분한 데이터의 자기상관을 알아보기 위한 acf, pacf 그래프를 그려보겠습니다. import matplotlib.pyplot as pltfrom statsmodels.graphics.tsaplots import plot_acf, plot_pacfplot_acf(kodex200[''diff''])plot_pacf(kodex200[''diff''])plt.show()kodex200종가의 차분 데이터는 잔차가 일정하기 때문에 자기상관현상을 보이지 않습니다. 이는 시계열 데이터가 정상성을 띠면 자기상관함수는 시간에 따라 일정해지기 때문입니다.그외에도 수익률 데이터로 정상성 테스트를 진행할 수 있습니다. #### 정상성을 갖는 데이터로 바꾸기(일일수익률)kodex200[''return''] = kodex200[''close''].pct_change() * 100  #pct_change(5) 5일간 수익률kodex200 = kodex200.dropna()print(kpss(kodex200[''return''], regression=''ct'') )일일수익률 역시 kpss 테스트 결과 p값이 0.05이상이기 때문에 귀무가설을 기각하지 못해서 kodex200의 일일수익률 데이터는 정상성을 보입니다.import matplotlib.pyplot as pltfrom statsmodels.graphics.tsaplots import plot_acf, plot_pacfplot_acf(kodex200[''return''])plot_pacf(kodex200[''return''])plt.show()수익률의 acf, pacf 그래프를 살펴보면 차분 데이터와 마찬가지로 자기상관현상을 보이지 않는 것을 알 수 있습니다.#특성 공학랜덤 워크 모델이기 때문에 지수 종가를 사용해서 만든 특성을 이용해서 분석합니다. 새롭게 만들 특성은 5일 단순이동평균, 5일 지수이동평균, 이격도, stochastic %k(slow), %d(slow), macd, rsi입니다. 위의 특성들은 지수 종가와 고가, 저가를 이용한 특성들로 논문을 참고하였습니다. 참고 논문: 하대우(연세대학교) 외. (2019.05).xgboost 모형을 활용한 코스피 200 주가지수 등락 예측에 관한 연구.한국데이터정보과학회def engineer(df):  df = df.astype(''float'')    #5일 단순이동평균(sma)  df[''sma5''] = df[''close''].rolling(window=5, min_periods=1).mean()    #5일 지수이동평균(ema)  df[''ema5''] = df[''close''].ewm(5).mean()  #20일 지수이동평균  df[''ema20''] = df[''close''].ewm(20).mean()  #이격도  df[''disparity''] = df[''close''] - df[''sma5'']    #stochastic k, d : fast %k의 m기간 이동평균(sma)  df[''fast_k''] = ((df[''close''] - df[''low''].rolling(5).min()) / (df[''high''].rolling(5).max() - df[''low''].rolling(5).min())) * 100  df[''slow_k''] = df[''fast_k''].rolling(3).mean()  df[''slow_d''] = df[''slow_k''].rolling(3).mean()  #macd  df[''emafast''] = df[''close''].ewm( span = 5, min_periods = 4).mean()  df[''emaslow''] = df[''close''].ewm( span = 20, min_periods = 19).mean()  df[''macd''] = df[''emafast''] - df[''emaslow'']  #df[''macdsignal''] = df[''macd''].ewm( span = 9, min_periods = 8).mean()  #df[''macddiff''] = df[''macd''] - df[''macdsignal'']  #rsi  delta = df[''close''].diff(5)  delta = delta.dropna()  up = delta.copy()  down = delta.copy()  up[up<0] = 0  down[down>0] = 0  df[''up''] = up  df[''down''] = down  avg_gain = df[''up''].rolling(window = 5).mean()  avg_loss = abs(df[''down''].rolling(window = 5).mean())  rs = avg_gain/avg_loss  rsi = 100.0 - (100.0/(1+rs))  df[''rsi''] = rsi   df[''diff''] =  np.r_[0, np.diff(df[''close''])]  df = df.drop(columns=[''open'', ''close'', ''high'',''low'', ''fast_k'', ''emafast'', ''emaslow'', ''up'', ''down''])  df = df.dropna()  df = df.reset_index() #time_series_split할 때 필요  return df# 모델 생성지난 과제를 통해서 주가 예측을 회귀 모델로 할 경우 r2 score가 높더라도 예측 가격이 실제 가격이랑 많이 다르게 나와서 분석이 어렵다고 느꼈습니다. 그렇지만 일단 분류문제로 풀기 전에 회귀분석으로 예측을 해서 수익률 예측을 해보겠습니다.##회귀분석 모델* 모델 1: 다중선형회귀모델* 모델 2: xgboost 모델* 모델 3: arima 모델회귀분석 모델 3가지를 만들 것인데, 타겟은 일일 종가의 차분으로 하고, 평가지표는 mse, r2 score 두 가지를 사용하겠습니다.## 테스트 데이터 분리cv 이후 사용할 테스트 데이터를 분리합니다. 전체 데이터 중에서 최근 20%를 테스트 데이터로 사용하겠습니다.len(kodex200)*0.2kodex200test = kodex200[-495:]kodex200train = kodex200.drop(index=kodex200test.index)kodex200train.shape, kodex200test.shape#특성 공학kodex200train = engineer(kodex200train)kodex200test = engineer(kodex200test)kodex200train = kodex200train.drop(columns=[''return''])kodex200test = kodex200test.drop(columns=[''return''])## 모델 1 다중선형회귀분석타겟을 차분으로 정했기 때문에 선형회귀 모델의 가정인 오차의 정규성, 등분산성, 독립성을 만족합니다.from sklearn.linear_model import linearregressionfrom sklearn.model_selection import timeseriessplitfrom sklearn.metrics import mean_squared_errortscv = timeseriessplit(n_splits=10)target = ''diff''y =kodex200train[target]x =kodex200train.drop(columns = target)x = x.dropna()y= y.dropna()x = x.drop(columns=''date'')pred1 = []scores = []mses = []for train_index, val_index in tscv.split(kodex200train):    x_train   = x.iloc[train_index] #drop(''date'', axis=1)    y_train = y.iloc[train_index]    x_val    = x.iloc[val_index]     y_val  = y.iloc[val_index]    ols = linearregression()    ols.fit(x_train,y_train)    preds = ols.predict(x_val)    pred1.append(preds)    mse = mean_squared_error(y_val, preds)    r2score = ols.score(x_val,y_val)    mses.append(mse)    scores.append(r2score)average_r2score = np.mean(scores)print(average_r2score)print(np.mean(mses))print(''평균 r2 점수: '', average_r2score)print(''평균 mse:'',np.mean(mses))scorescv = 10일 때 검증 데이터의 평균 r2 score는 0.634이고 mse는 15767입니다. 재밌는 것은 모델에 사용한 데이터가 늘어날수록 평가지표가 안 좋아진다는 점입니다. 2016년 이후 데이터만 사용했을 때 r2 score와 mse 모두 더 좋은 점수였는데, 아무래도 시계열 데이터이다 보니 훈련 데이터가 너무 예전 것인 경우 예측력이 떨어지는 것 같습니다. 이제 예측값을 그래프에 나타내 보겠습니다.y_val.plot();차분 그래프는 예측이 잘 맞는지 알기 어렵기 때문에 다시 종가로 바꿔서 비교해보겠습니다.new_df1 = kodex200[(kodex200.index >= ''2018-05-29'')&(kodex200.index <= ''2019-02-20'')]new_df1new_df2 = new_df1.drop(columns=[''open'',''high'',''low'',''volume'',''diff'',''return''])val_pred = pd.dataframe(pred1).tval_predval_pred.iloc[0,:] = val_pred.iloc[0,:] + 30130.0val_predval_pred2 = val_pred.cumsum()val_pred2 = round(val_pred2, 1)val_pred2val_pred2[''avg''] = val_pred2.mean(axis=1)val_pred2val_pred2.iloc[:,0].plot()val_pred2.iloc[:,1].plot()val_pred2.iloc[:,2].plot()val_pred2.iloc[:,3].plot()val_pred2.iloc[:,4].plot()val_pred2.iloc[:,5].plot()val_pred2.iloc[:,6].plot()val_pred2.iloc[:,7].plot()val_pred2.iloc[:,8].plot()val_pred2.iloc[:,9].plot()val_pred2.iloc[:, 10].plot()new_df2.plot()예측값과 실제값을 비교해보니 선형모델은 급락을 전혀 예측하지 못하는 것을 알 수 있습니다.두 그래프를 같이 놓고 보겠습니다.val_pred2.index = new_df2.indexplot_df = pd.concat([new_df2[''close''], val_pred2[''avg'']], axis=1)plot_dfsns.set_palette(''purd'')plot_df.plot()cv로 예측한 값들의 평균과 실제 종가의 그래프입니다. 실제 종가가 2018년 7월부터 급격히 떨어지기 시작하는데 선형모델은 이를 전혀 예측하지 못합니다. 또한, 차분를 예측한 후 이를 누적합해서 종가를 만든 것이기 때문에 차분의 오차가 점점 쌓여서 실제 값과 더욱더 괴리되는 모습을 확인할 수 있습니다. 이런 급락이 있는 경우 모델 성능이 더 떨어지기 때문에 검증 데이터의 값에 따라 모델의 성능이 많이 차이날 것 같습니다.모델 1의 예측에 중요한 영향을 미친 특성중요도를 살펴보겠습니다.!pip install eli5import warningswarnings.simplefilter(action=''ignore'', category=futurewarning)import eli5from eli5.sklearn import permutationimportance# permuter 정의permuter = permutationimportance(    ols,    scoring=''r2'', # metric    n_iter=5, # 다른 random seed를 사용하여 5번 반복    random_state=2)permuter.fit(x_val, y_val);feature_names = x_val.columns.tolist()eli5.show_weights(    permuter,     top=none, # top n 지정 가능, none 일 경우 모든 특성     feature_names=feature_names # list 형식으로 넣어야 합니다)모델 1에서 차분(difference)를 예측하는 데 가장 중요한 특성으로는 단순이동평균(5일), 지수이동평균(5일), 지수이동평균(20일), macd, 이격도가 있습니다. 이동평균이 높은 순위를 차지하고 있는데, 차분이 종가의 하루 차이인 것을 생각해보면, 단순이동평균은 5일 간의 평균이기 때문에 약간의 leakeage가 있다고 볼 수도 있습니다. 그런데 대부분의 랜덤워크 모형은 가격에서 파생된 특성으로 예측을 해서 모형 특성상 발생하는 애매한 부분인 것 같습니다.## 모델 2 xgboost regressorfrom xgboost import xgbregressor''''''target = ''diff''y =kodex200train[target]x =kodex200train.drop(columns = target)x = x.dropna()y= y.dropna()x = x.drop(columns=''date'')''''''scores_xgb = []mse_xgb = []preds_xgb = []for train_index, val_index in tscv.split(kodex200train):    x_train2   = x.iloc[train_index] #drop(''date'', axis=1)    y_train2 = y.iloc[train_index]    x_val2  = x.iloc[val_index] #.drop(''record_date'', axis=1)    y_val2  = y.iloc[val_index]    # if needed, do preprocessing here    xgb_model = xgbregressor(n_estimators=100, learning_rate=0.08, gamma=0,                            max_depth=7)    xgb_model.fit(x_train2, y_train2)    pred_xgb = xgb_model.predict(x_val2)    preds_xgb.append(pred_xgb)    r2score_xgb = xgb_model.score(x_val2,y_val2)    scores_xgb.append(r2score_xgb)    mse_xg = mean_squared_error(y_val2, pred_xgb)    mse_xgb.append(mse_xg)average_r2score_xgb = np.mean(scores_xgb)print(''평균 r2 score: '',average_r2score_xgb)print(''평균 mse: '',np.mean(mse_xgb))모델 2의 r2 score는 0.574이고 mse는 17490으로 모델 1보다 r2 score는 낮고 mse는 더 큽니다. 따라서 모델 1이 오류가 더 적은 모델이라고 할 수 있습니다. import eli5from eli5.sklearn import permutationimportance# permuter 정의permuter2 = permutationimportance(    xgb_model,    scoring=''r2'', # metric    n_iter=5,     random_state=2)permuter2.fit(x_val2, y_val2);feature_names2 = x_val2.columns.tolist()eli5.show_weights(    permuter2,     top=none,     feature_names=feature_names2 )모델 2에서 차분(difference)을 예측하는 데 가장 중요한 특성으로는 이격도, stochastic %k, macd, stochastic %d가 있습니다. 이격도가 가장 중요한 특성으로 나왔는데, 이격도를 구하는데 종가와 이동평균이 필요한 것을 생각해보면 순위가 낮게 나온 sma5는 특성에서 제외해도 될 것 같습니다. ##모델 3 arima시계열 예측에 많이 사용하는 arima 모델을 사용해서 분석을 해보겠습니다. arima 모델은 ar모델과 ma모델을 합친 것으로 p,d,q 세가지의 모수를 가집니다. p는 ar모형의 lag, d는 차분 횟수, q는 ma모형의 lag를 의미합니다. 정상성 확인하는 과정에서의 acf, pacf 그래프를 보고 p = 1, d=1, q=0으로 유추하였습니다.#모델1,2에서 사용된 훈련 데이터 + 검증 데이터arima_df = kodex200[(kodex200.index<=''2019-02-21'') & (kodex200.index>''2011-03-15'')] from statsmodels.tsa.arima_model import arimamod = arima(arima_df[''diff''], order=(1, 1, 0)) res = mod.fit(trend=''c'',full_output=true, disp=0)print(res.summary())residuals = pd.dataframe(res.resid)fig = plt.figure(figsize=(10,5))#ax1 = fig.add_subplot(1, 2, 1)ax1 = residuals.plot(title=''residuals'')#ax2 = fig.add_subplot(1, 2, 2)ax2 = residuals.plot(kind=''kde'', title=''density'')plt.show()잔차그림을 그려봤을 때 어떤 경향도 보이지 않고 있습니다.plt.style.use(''ggplot'')res.plot_predict(dynamic=false)plt.show()arima 모델로 예측한 값과 실제 차분의 그래프입니다.', 3),
('OPENSOURCE', 'ResNet을 이용한 개 고양이 분류기', 'import osimport randomimport timefrom pil import imageimport cv2import numpy as npimport timmimport torchfrom torch import nn, optimfrom torch.utils.data import dataloader, datasetimport torchvisionfrom torchvision import transformsimport torchsummaryx# -- coding: utf8 --''''''resnet을 이용한 개 고양이 분류기 '''''''''''' ####################### 1. 라이브러리 ####################### ''''''# load to cpu or gpudevice = torch.device(''cuda'' if torch.cuda.is_available() else ''cpu'')if torch.cuda.is_available() == true:    print("\n### cuda check ###")    print(device)                                                             print(''count of using gpus:'', torch.cuda.device_count())        print(''current cuda device:'', torch.cuda.current_device())                          # from pil import image                               # 기본 이미지 처리 라이브러리. 다양한 이미지 파일 형식 접근, 이미지 조작 제공from torch.utils.data import dataloader, dataset    # 훈련모델 데이터셋 관리와 조정에 쓰이는 라이브러리# dataset: 샘플과 정답(label)을 저장, dataloader: dataset 을 샘플에 쉽게 접근할 수 있도록 순회 가능한 객체(iterable)로 감싼다'''''' ####################### 2. 이미지 전처리 ####################### ''''''def normalize_image(img):    img = transforms.totensor()(img)    mean = torch.tensor([0.485, 0.456, 0.406]).reshape(3, 1, 1)    std = torch.tensor([0.229, 0.224, 0.225]).reshape(3, 1, 1)    img = (img - mean) / std    return imgdef custom_transform(resize, mean, std, is_train):     # 내가 만든 함수(transform.compose 안 쓴다)    transform_list = []        if is_train:    # 훈련용        transform_list.append(transforms.randomresizedcrop(resize, scale=(0.5, 1.0)))        transform_list.append(transforms.randomhorizontalflip())    else:           # 검증용        transform_list.append(transforms.resize(256))        transform_list.append(transforms.centercrop(resize))            transform_list.append(transforms.totensor())    transform_list.append(transforms.normalize(mean, std))        def apply_transform(x):        for transform in transform_list:            x = transform(x)        return x        return apply_transformclass imagetransform():                     # 책에 있는 transforms.compose 쓰는 함수    def __init__(self, resize, mean, std):        # transform에서 사용하는 파라미터는 다음 5개가 있다.        self.data_transform = {     # 딕셔너리로 구분할 수 있게 만들었다.             ''train'': custom_transform(resize, mean, std, is_train= true),   # 훈련용            ''val'': custom_transform(resize, mean, std, is_train = false)    # 검증용            },            def __call__(self, img, phase):                         # __call__: 클래스를 호출할 수 있도록 하는 메서드.         # __init__이 인스턴트 초기화에 쓰이는 생성자라면 __call__은 호출하면 구냥 __call__의 return값을 반환한다.        return self.data_transform[phase](img)    # 이미지 사이즈가 다 다르다. 같은 이미지 사이즈로 전처리가 필요함.# 변수에 대한 값 정의size = 224                      # 224 x 224 이미지로 만들꺼니깐# imagenet 쓸때 국롤mean = (0.485, 0.456, 0.406)    # 왜 이렇게 하는지 물어보기. rgb값인지? std = (0.229, 0.224, 0.225)batch_size = 32                 # 한 번에 32개씩 불러온다'''''' ####################### 3. 이미지 불러오기 ####################### ''''''# 데이터로더 (데이터셋 불러오기)cat_directory = ''dataset/training_set/cats''dog_directory = ''dataset/training_set/dogs''cat_images_filepaths = sorted([os.path.join(cat_directory, f) for f in os.listdir(cat_directory)])   dog_images_filepaths = sorted([os.path.join(dog_directory, f) for f in os.listdir(dog_directory)])images_filepaths = [*cat_images_filepaths, *dog_images_filepaths]    correct_images_filepaths = [i for i in images_filepaths if cv2.imread(i) is not none] # imread가 성공하면 correct_images_filepaths에 이미지를 불러온다.# 랜덤 시드 고정하고 훈련, 검증, 테스트셋 나누기# 개 4000개, 고양이 4000개 섞기 (총 8000개)random.seed(42)    random.shuffle(correct_images_filepaths)train_images_filepaths = correct_images_filepaths[:7000]     # 6999번째까지 훈련용val_images_filepaths = correct_images_filepaths[7000:-10]    # 7000번째 ~ 끝에서 10개까지 검증용(매 에포크마다 검증용) test_images_filepaths = correct_images_filepaths[-10:]      # 끝에 10개는 테스트용(최종 확인용)print("\n### dataset load ###")print(''train: '', len(train_images_filepaths), ''val: '', len(val_images_filepaths), ''test: '',len(test_images_filepaths))   # 잘 분류됐나 확인 코드# 이미지에 대한 데이터셋 클래스(레이블 구분) 만들기(이미지파일 이름으로 레이블 생성하고 나누기) class dogvscatdataset(dataset):              # dataset 클래스를 상속한다.      def __init__(self, file_list, transform=none, phase=''train''):            self.file_list = file_list        self.transform = transform        self.phase = phase            def __len__(self):        return len(self.file_list)        def __getitem__(self, idx):               img_path = self.file_list[idx]        img = image.open(img_path)                img_transformed = self.transform(img, self.phase)                label = img_path.split(''/'')[-1].split(''.'')[0]             # 이미지 데이터에 대한 레이블값을 가져온다(이미지파일 이름을 .로 구분하고 첫째껄 가져온다)        # 이미지의 path에서 /로 먼저 나누고 .으로 나중에 나눈다.         if label == ''dog'':            label = 1        elif label == ''cat'':            label = 0        return img_transformed, label# 이미지 데이터셋 정의(위에서 만든 imagetransform, dogvscatdataset 클래스 이용)train_dataset = dogvscatdataset(train_images_filepaths, transform=imagetransform(size, mean, std), phase=''train'')val_dataset = dogvscatdataset(val_images_filepaths, transform=imagetransform(size, mean, std), phase=''val'')# 첫번째 이미지 테스트(index = 0)index_test = 13print("index_test''s input shape: ", train_dataset.__getitem__(index_test)[0].size())     # 출력: torch.size([3, 224, 224]) print("index_test''s label: ", train_dataset.__getitem__(index_test)[1])                  # 출력: 0(cat) or 1(dog) # __getitem__: 파이썬의 특별 메소드 중 하나이다. # 슬라이싱을 구현할 수 있도록 도우며 리스트에서 슬라이싱을 하게되면 내부적으로 __getitem__ 메소드를 실행한다.# 객체에서 슬라이싱을 하기 위해선 __getitem__이 필수적이다. # 배치 크기만큼 나눠서 데이터를 메모리로 불러오기train_iterator  = dataloader(train_dataset, batch_size=batch_size, shuffle=true)valid_iterator = dataloader(val_dataset, batch_size=batch_size, shuffle=false)dataloader_dict = {''train'': train_iterator, ''val'': valid_iterator},batch_iterator = iter(train_iterator)inputs, label = next(batch_iterator)print("batch_iterator''s size", inputs.size())       # 출력: torch.size([배치사이즈, 3, 224, 224]) print("batch_iterator''s label", label)              # 출력: 배치 사이즈 만큼의 라벨링된 숫자# 배치로 불러온 이미지들 띄우기import matplotlib.pyplot as pltimport numpy as npdef imshow(img):    img = img / 2 + 0.6     # unnormalize -> 이거 왜 하는건지 물어보기    npimg = img.numpy()    plt.imshow(np.transpose(npimg, (1, 2, 0)))    plt.show()imshow(torchvision.utils.make_grid(inputs))'''''' ####################### 4. 모델 정의 ####################### '''''''''''' 미리 만들어진 resnet 불러오기 ''''''# timm으로 모델 불러오기# import timm# model = timm.create_model("resnet50", pretrained= false)# # model.fc = nn.sequential(# #     nn.# # )# torchsummaryx.summary(model, torch.zeros(1,3,224,224))# model = model.to(device)# model# 모델 생성하기class basicblock(nn.module):        expansion = 1        def __init__(self, in_channels, out_channels, stride = 1, downsample = false):        super().__init__()                        self.conv1 = nn.conv2d(in_channels, out_channels, kernel_size = 3,                                stride = stride, padding = 1, bias = false)        self.bn1 = nn.batchnorm2d(out_channels)                self.conv2 = nn.conv2d(out_channels, out_channels, kernel_size = 3,                                stride = 1, padding = 1, bias = false)        self.bn2 = nn.batchnorm2d(out_channels)                self.relu = nn.relu(inplace = true)                if downsample:      # 다운샘플 적용: 입력 데이터의 크기와 네트워크를 통과한 후 출력 데이터의 크기가 다를 경우에 사용            conv = nn.conv2d(in_channels, out_channels, kernel_size = 1,                              stride = stride, bias = false)            bn = nn.batchnorm2d(out_channels)            downsample = nn.sequential(conv, bn)        else:            downsample = none                self.downsample = downsample            def forward(self, x):               i = x               x = self.conv1(x)        x = self.bn1(x)        x = self.relu(x)                x = self.conv2(x)        x = self.bn2(x)                if self.downsample is not none:            i = self.downsample(i)                                x += i  # 아이덴티티 매핑 적용         x = self.relu(x)                return xclass bottleneck(nn.module):        expansion = 4   # 병목 블록을 정의하기 위한 파라미터        def __init__(self, in_channels, out_channels, stride = 1, downsample = false):        super().__init__()            self.conv1 = nn.conv2d(in_channels, out_channels, kernel_size = 1, stride = 1, bias = false)        self.bn1 = nn.batchnorm2d(out_channels)                self.conv2 = nn.conv2d(out_channels, out_channels, kernel_size = 3, stride = stride, padding = 1, bias = false)        self.bn2 = nn.batchnorm2d(out_channels)                self.conv3 = nn.conv2d(out_channels, self.expansion * out_channels, kernel_size = 1,                               stride = 1, bias = false)        self.bn3 = nn.batchnorm2d(self.expansion * out_channels)                self.relu = nn.relu(inplace = true)                if downsample:            conv = nn.conv2d(in_channels, self.expansion * out_channels, kernel_size = 1,                              stride = stride, bias = false)            bn = nn.batchnorm2d(self.expansion * out_channels)            downsample = nn.sequential(conv, bn)        else:            downsample = none                    self.downsample = downsample            def forward(self, x):                i = x                x = self.conv1(x)        x = self.bn1(x)        x = self.relu(x)                x = self.conv2(x)        x = self.bn2(x)        x = self.relu(x)                x = self.conv3(x)        x = self.bn3(x)                        if self.downsample is not none:            i = self.downsample(i)                    x += i        x = self.relu(x)            return xclass resnet(nn.module):    def __init__(self, config, output_dim, zero_init_residual=false):        super().__init__()                        block, n_blocks, channels = config        self.in_channels = channels[0]                    assert len(n_blocks) == len(channels) == 4                self.conv1 = nn.conv2d(3, self.in_channels, kernel_size = 7, stride = 2, padding = 3, bias = false)        self.bn1 = nn.batchnorm2d(self.in_channels)        self.relu = nn.relu(inplace = true)        self.maxpool = nn.maxpool2d(kernel_size = 3, stride = 2, padding = 1)                self.layer1 = self.get_resnet_layer(block, n_blocks[0], channels[0])        self.layer2 = self.get_resnet_layer(block, n_blocks[1], channels[1], stride = 2)        self.layer3 = self.get_resnet_layer(block, n_blocks[2], channels[2], stride = 2)        self.layer4 = self.get_resnet_layer(block, n_blocks[3], channels[3], stride = 2)                self.avgpool = nn.adaptiveavgpool2d((1,1))        self.fc = nn.linear(self.in_channels, output_dim)        if zero_init_residual:            for m in self.modules():                if isinstance(m, bottleneck):                    nn.init.constant_(m.bn3.weight, 0)                elif isinstance(m, basicblock):                    nn.init.constant_(m.bn2.weight, 0)            def get_resnet_layer(self, block, n_blocks, channels, stride = 1):           layers = []                if self.in_channels != block.expansion * channels:            downsample = true        else:            downsample = false                layers.append(block(self.in_channels, channels, stride, downsample))                for i in range(1, n_blocks):            layers.append(block(block.expansion * channels, channels))        self.in_channels = block.expansion * channels                    return nn.sequential(*layers)            def forward(self, x):                x = self.conv1(x)        x = self.bn1(x)        x = self.relu(x)        x = self.maxpool(x)        x = self.layer1(x)        x = self.layer2(x)        x = self.layer3(x)        x = self.layer4(x)                x = self.avgpool(x)        h = x.view(x.shape[0], -1)        x = self.fc(h)                return x, hfrom collections import namedtuple      # namedtuple: 튜플의 성질을 갖고 있는 자료형이지만 인덱스뿐만 아니라 키 값으로 데이터에 접근할 수 있다.resnetconfig = namedtuple(''resnetconfig'', [''block'', ''n_blocks'', ''channels''])resnet18_config = resnetconfig(block = basicblock,                               n_blocks = [2,2,2,2],                               channels = [64, 128, 256, 512])output_dim = 2  # 2개의 클래스 사용model = resnet(resnet18_config, output_dim)print(model)'''''' 옵티마이저, 손실함수 정의 ''''''# 옵티마이저 정의optimizer = optim.adam(model.parameters(), lr = 1e-4)    # 1*10의 -4제곱# 국롤은 -3~-4# 손실함수 정의 criterion = nn.crossentropyloss()   #  다중 클래스 분류를 위해 사용한다. bceloss로도 써보기 '''''' 모델 디바이스에 전송하기 ''''''model = model.to(device)criterion = criterion.to(device)'''''' 모델 요약 ''''''# from ipython.core.interactiveshell import interactiveshell      # 주피터에서 라인을 모두 보고 싶을때 사용한다.# interactiveshell.ast_node_interactivity = "all"# print(model)    # 모델 구성 모두 보고 싶을때# from torchsummary import summary    # 모델 요약만 보고 싶을때# summary(model, input_size=(3, 224, 224))def count_parameters(model):               return sum(p.numel() for p in model.parameters() if p.requires_grad)    # 모델의 총 파라미터 수 계산print(f''the model has {count_parameters(model):,}, trainable parameters'')'''''' ####################### 5. 모델 학습 ####################### ''''''# 모델 학습 정확도 측정 함수 정의def calculate_topk_accuracy(y_pred, y, k = 2):    with torch.no_grad():        batch_size = y.shape[0]        _, top_pred = y_pred.topk(k, 1)        top_pred = top_pred.t()        correct = top_pred.eq(y.view(1, -1).expand_as(top_pred))        correct_1 = correct[:1].reshape(-1).float().sum(0, keepdim = true)        correct_k = correct[:k].reshape(-1).float().sum(0, keepdim = true)        acc_1 = correct_1 / batch_size        acc_k = correct_k / batch_size    return acc_1, acc_k# 학습함수 정의def train(model, iterator, optimizer, criterion, device):        epoch_loss = 0    epoch_acc_1 = 0    epoch_acc_5 = 0        model.train()        for (x, y) in iterator:                x = x.to(device)        y = y.to(device)                    optimizer.zero_grad()                        y_pred = model(x)                  loss = criterion(y_pred[0], y)                 acc_1, acc_5 = calculate_topk_accuracy(y_pred[0], y)                loss.backward()                optimizer.step()                        epoch_loss += loss.item()        epoch_acc_1 += acc_1.item()        epoch_acc_5 += acc_5.item()            epoch_loss /= len(iterator)    epoch_acc_1 /= len(iterator)    epoch_acc_5 /= len(iterator)            return epoch_loss, epoch_acc_1, epoch_acc_5# 평가함수 정의def evaluate(model, iterator, criterion, device):        epoch_loss = 0    epoch_acc_1 = 0    epoch_acc_5 = 0        model.eval()        with torch.no_grad():                for (x, y) in iterator:            x = x.to(device)            y = y.to(device)            y_pred = model(x)                        loss = criterion(y_pred[0], y)            acc_1, acc_5 = calculate_topk_accuracy(y_pred[0], y)            epoch_loss += loss.item()            epoch_acc_1 += acc_1.item()            epoch_acc_5 += acc_5.item()            epoch_loss /= len(iterator)    epoch_acc_1 /= len(iterator)    epoch_acc_5 /= len(iterator)            return epoch_loss, epoch_acc_1, epoch_acc_5def epoch_time(start_time, end_time):    elapsed_time = end_time - start_time    elapsed_mins = int(elapsed_time / 60)    elapsed_secs = int(elapsed_time - (elapsed_mins * 60))    return elapsed_mins, elapsed_secs# 학습 시작best_valid_loss = float(''inf'')epochs = 50train_loss_plt = []valid_loss_plt = []train_acc_plt = []valid_acc_plt = []for epoch in range(epochs):        start_time = time.monotonic()        train_loss, train_acc_1, train_acc_5 = train(model, train_iterator, optimizer, criterion, device)    valid_loss, valid_acc_1, valid_acc_5 = evaluate(model, valid_iterator, criterion, device)    train_loss_plt.append(train_loss)    valid_loss_plt.append(valid_loss)    train_acc_plt.append(train_acc_1)    valid_acc_plt.append(valid_acc_1)    if valid_loss < best_valid_loss:        best_valid_loss = valid_loss        torch.save(model.state_dict(), ''resnet-model.pth'')    end_time = time.monotonic()    epoch_mins, epoch_secs = epoch_time(start_time, end_time)        print(f''epoch: {epoch+1:02}, | epoch time: {epoch_mins},m {epoch_secs},s'')    print(f''\ttrain loss: {train_loss:.3f}, | train acc @1: {train_acc_1*100:6.2f},% | '' \          f''train acc @5: {train_acc_5*100:6.2f},%'')    print(f''\tvalid loss: {valid_loss:.3f}, | valid acc @1: {valid_acc_1*100:6.2f},% | '' \          f''valid acc @5: {valid_acc_5*100:6.2f},%'')# 손실과 정확도 그래프 출력plt.figure(figsize=(13, 5))fig, axs = plt.subplots(1, 2)fig.tight_layout()ax1 = plt.subplot(1,2,1)plt.title(''loss graph'')ax1.plot(train_loss_plt, c="blue", label=''trainset_loss'')ax1.plot(valid_loss_plt, c="cornflowerblue", label=''testset_loss'')ax1.legend([''train_loss'', ''val_loss''])plt.xlabel(''epoch'')plt.ylabel(''loss'')ax2 = plt.subplot(1,2,2)plt.title(''accuracy graph'')ax2.plot(train_acc_plt, c="red", label=''trainset_acc'')ax2.plot(valid_acc_plt, c="lightcoral", label=''testset_acc'')ax2.legend([''train_acc'', ''val_acc''])plt.xlabel(''epoch'')plt.ylabel(''accuracy'')plt.subplots_adjust(left=0.125,                    bottom=0.1,                     right=0.9,                     top=0.9,                     wspace=0.2,                     hspace=0.35)plt.savefig(''savefig_default.png'')plt.show()', 4),
('OPENSOURCE', 'GAN을 이용한 MNIST 숫자 생성 모델', '<a href="https://colab.research.google.com/github/happy-jihye/gan/blob/main/1_gan.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="open in colab"/></a># 1 - generative adversarial networks(gan)- [generative adversarial networks (nips 2014)](https://arxiv.org/abs/1406.2661)> - 2021/03/12 happy-jihye> - **reference** : [eriklindernoren/pytorch-gan](https://github.com/eriklindernoren/pytorch-gan/blob/master/implementations/gan/gan.py)---*import torchimport torch.nn as nnimport numpy as np# for mnist dataimport torchvisionfrom torchvision import datasetsimport torchvision.transforms as transformsfrom torchvision.utils import save_imagefrom torch.autograd import variableimport matplotlib.pyplot as plt## preparing data### **loading mnist data**# download the minst databatch_size = 64transforms_train = transforms.compose([    transforms.resize(28),    transforms.totensor(), # data를 pytorch의 tensor형식으로 바꿉니다    transforms.normalize([0.5], [0.5]) # 픽셀값을 0 ~ 1에서 -1 ~ 1 로 바꿔줍니다.])train_dataset = datasets.mnist(root="./dataset", train=true, download=true, transform=transforms_train)# data를 batch size만큼만 가져오는 dataloader를 만듭니다.dataloader = torch.utils.data.dataloader(train_dataset, batch_size = batch_size, shuffle=true, num_workers=4)- 하나의 batch에 들어있는 mnist data를 출력해보았습니다.images, labels = next(iter(dataloader))img = torchvision.utils.make_grid(images)img = img.numpy().transpose(1,2,0)std = [0.5,0.5,0.5]mean = [0.5,0.5,0.5]img = img*std+meanprint([labels[i] for i in range(64)])plt.imshow(img)# image channels = 1img_size = 28img_shape = (channels, img_size, img_size)## build model### generator# dimensionality of the latent space# latent vector를 추출하기 위한 noise 분포의 dimension (정규분포를 따름)latent_dim = 100class generator(nn.module):    def __init__(self):        super(generator, self).__init__()        def block(input_dim, output_dim, normalize=true):            layers = [nn.linear(input_dim, output_dim)]            if normalize:                layers.append(nn.batchnorm1d(output_dim, 0.8))            layers.append(nn.leakyrelu(0.2, inplace=true))            return layers        # generater의 model은 여러개의 block을 쌓아서 만들어짐        self.model = nn.sequential(            *block(latent_dim, 128, normalize=false),            *block(128, 256),            *block(256, 512),            *block(512, 1024),            nn.linear(1024, int(np.prod(img_shape))),            nn.tanh()         )    def forward(self, z):         # z : input noise vector         img = self.model(z)        img = img.view(img.size(0), *img_shape)        return img### discriminatorclass discriminator(nn.module):    def __init__(self):        super(discriminator, self).__init__()        self.model = nn.sequential(            nn.linear(int(np.prod(img_shape)), 512),            nn.leakyrelu(0.2, inplace=true),            nn.linear(512, 256),            nn.leakyrelu(0.2, inplace=true),            nn.linear(256, 1),            nn.sigmoid(),        )    # 이미지에 대한 판별 결과를 반환    def forward(self, img):        img_flat = img.view(img.size(0), -1)        validity = self.model(img_flat)        return validity### loss function & optimizer- 손실 함수로는 binary cross entropy를, 최적화 함수로는 adam을 사용합니다.'''''' hyper parameter ''''''# learning ratelr = 0.0002# decay of first order momentum of gradientb1 = 0.5b2 = 0.999# initialize generator and discriminatorgenerator = generator()discriminator = discriminator()# loss functionadversarial_loss = nn.bceloss()# adam optimizeroptimizer_g = torch.optim.adam(generator.parameters(), lr=lr, betas=(b1, b2))optimizer_d = torch.optim.adam(discriminator.parameters(), lr=lr, betas=(b1, b2))# gpucuda = true if torch.cuda.is_available() else falseif cuda :   generator.cuda()  discriminator.cuda()  adversarial_loss.cuda()## training- gan model에서는 근사적인 추론이나 markov chains을 사용하지 않고, back-propagation만을 이용하여 gradient를 업데이트합니다.import time# number of epochs of trainingn_epochs = 200 # interval between image samplessample_interval = 2000 start_time = time.time()tensor = torch.cuda.floattensor if cuda else torch.floattensorfor epoch in range(n_epochs):    for i, (imgs, _) in enumerate(dataloader):        # adversarial ground truths        ## 실제 이미지는 1로, 가짜 이미지는 0으로 label됩니다.         real = variable(tensor(imgs.size(0), 1).fill_(1.0), requires_grad=false)        fake = variable(tensor(imgs.size(0), 1).fill_(0.0), requires_grad=false)        # configure input        real_imgs = variable(imgs.type(tensor))        # -----------------        #  train generator        # -----------------        optimizer_g.zero_grad()        # sample noise as generator input        z = variable(tensor(np.random.normal(0, 1, (imgs.shape[0], latent_dim))))        # generate a batch of images        ## random sampling한 값인 z를 생성자에 넣어 이미지를 생성합니다.        generated_imgs = generator(z)        # loss measures generator''s ability to fool the discriminator        ## 생성된 이미지를 discriminator가 판별하게 한 후, loss값을 계산합니다.        g_loss = adversarial_loss(discriminator(generated_imgs), real)        # 생성자(generator) 업데이트        g_loss.backward()        optimizer_g.step()        # ---------------------        #  train discriminator        # ---------------------        optimizer_d.zero_grad()        # measure discriminator''s ability to classify real from generated samples        ## 실제 이미지는 real(1)로, 가짜 이미지는 fake(0)으로 판별하도록 계산합니다.        real_loss = adversarial_loss(discriminator(real_imgs), real)        fake_loss = adversarial_loss(discriminator(generated_imgs.detach()), fake)        d_loss = (real_loss + fake_loss) / 2        # 판별자(discriminator) 업데이트        d_loss.backward()        optimizer_d.step()        done = epoch * len(dataloader) + i        if done % sample_interval == 0:            # 생성된 이미지 중에서 25개만 선택하여 5 x 5 격자 이미지에 출력            save_image(generated_imgs.data[:25], f"data{epoch},.png", nrow=5, normalize=true)    # 하나의 epoch이 끝날 때마다 로그(log) 출력    print(f"[epoch {epoch},/{n_epochs},] [d loss: {d_loss.item():.6f},] [g loss: {g_loss.item():.6f},] [elapsed time: {time.time() - start_time:.2f},s]")![](/content/data0.png)## reference- https://hyeongminlee.github.io/post/gan001_gan/', 5),
('OPENSOURCE', '다양한 유형의 소스(PDF, YouTube 동영상) 로부터 데이터를 가공해 RAG 파이프 라인을 구현하는 예제의 컬럼', 'building rag with custom unstructured data - hugging face open-source ai cookbookhugging facemodelsdatasetsspacespostsdocsenterprisepricinglog insign upopen-source ai cookbook documentationbuilding rag with custom unstructured dataopen-source ai cookbook🏡 view all resourcesaudio coursecommunity computer vision coursedeep rl coursediffusion courseml for 3d courseml for games coursenlp courseopen-source ai cookbooksearch documentationenkotrzh-cnopen-source ai cookbookoverviewllm recipesautomatic embeddings with tei through inference endpointsmigrating from openai to open llms using tgi''s messages apiadvanced rag on huggingface documentation using langchainsuggestions for data annotation with setfit in zero-shot text classificationfine-tuning a code llm on custom code on a single gpuprompt tuning with peftrag with hugging face and milvusrag evaluationusing llm-as-a-judge for an automated and versatile evaluationdetecting issues in a text dataset with cleanlabannotate text data using active learning with cleanlabbuilding a rag system with gemma, elasticsearch and open source modelsbuilding a rag system with gemma, mongodb and open source modelssimple rag using hugging face zephyr and langchainrag "librarian" using llamaindeximplementing semantic cache to improve a rag system.rag with source highlighting using structured generationbuilding rag with custom unstructured datafine-tuning llm to generate persian product catalogs in json formatllm gateway for pii detectioninformation extraction with haystack and nuextractcode search with vector embeddings using qdrantrag backed by sql and jina rerankergenerate a preference dataset with distilabelclean an existing preference dataset with llms as judgesbenchmarking tgienhancing rag reasoning with knowledge graphscomputer vision recipesdiffusion recipesmultimodal recipessearch recipesagents recipesenterprise hub cookbookoverviewinteractive development in hf spacesinference api (serverless)inference endpoints (dedicated)data annotation with argilla spacescreating demos with spaces and gradiojoin the hugging face communityand get access to the augmented documentation experiencecollaborate on models, datasets and spacesfaster examples with accelerated inferenceswitch between documentation themessign upto get started       building rag with custom unstructured data authored by: maria khalusova if you’re new to rag, please explore the basics of rag first in this other notebook, and then come back here to learn about building rag with custom data. whether you’re building your own rag-based personal assistant, a pet project, or an enterprise rag system, you will quickly discover that a lot of important knowledge is stored in various formats like pdfs, emails, markdown files, powerpoint presentations, html pages, word documents, and so on. how do you preprocess all of this data in a way that you can use it for rag?in this quick tutorial, you’ll learn how to build a rag system that will incorporate data from multiple data types. you’ll use unstructured for data preprocessing, open-source models from hugging face hub for embeddings and text generation, chromadb as a vector store, and langchain for bringing everything together. let’s go! we’ll begin by installing the required dependencies:   copied !pip install -q torch transformers accelerate bitsandbytes sentence-transformers unstructured[all-docs] langchain chromadb langchain_community next, let’s get a mix of documents. suppose, i want to build a rag system that’ll help me manage pests in my garden. for this purpose, i’ll use diverse documents that cover the topic of ipm (integrated pest management): pdf: https://www.gov.nl.ca/ecc/files/env-protection-pesticides-business-manuals-applic-chapter7.pdf powerpoint: https://ipm.ifas.ufl.edu/pdfs/citrus_ipm_090913.pptx epub: https://www.gutenberg.org/ebooks/45957 html: https://blog.fifthroom.com/what-to-do-about-harmful-garden-and-plant-insects-and-pests.html feel free to use your own documents for your topic of choice from the list of document types supported by unstructured: .eml, .html, .md, .msg, .rst, .rtf, .txt, .xml, .png, .jpg, .jpeg, .tiff, .bmp, .heic, .csv, .doc, .docx, .epub, .odt, .pdf, .ppt, .pptx, .tsv, .xlsx.   copied !mkdir -p "./documents"!wget https://www.gov.nl.ca/ecc/files/env-protection-pesticides-business-manuals-applic-chapter7.pdf -o "./documents/env-protection-pesticides-business-manuals-applic-chapter7.pdf"!wget https://ipm.ifas.ufl.edu/pdfs/citrus_ipm_090913.pptx -o "./documents/citrus_ipm_090913.pptx"!wget https://www.gutenberg.org/ebooks/45957.epub3.images -o "./documents/45957.epub"!wget https://blog.fifthroom.com/what-to-do-about-harmful-garden-and-plant-insects-and-pests.html -o "./documents/what-to-do-about-harmful-garden-and-plant-insects-and-pests.html"  unstructured data preprocessing you can use the unstructured library to preprocess documents one by one, and write your own script to walk through a directory, but it’s easier to use a local source connector to ingest all documents in a given directory. unstructured can ingest documents from local directories, s3 buckets, blob storage, sftp, and many other places your documents might be stored in. the ingestion from those sources will be very similar differing mostly in authentication options.here you’ll use local source connector, but feel free to explore other options in the unstructured documentation. optionally, you can also choose a destination for the processed documents - this could be mongodb, pinecone, weaviate, etc. in this notebook, we’ll keep everything local.   copied # optional cell to reduce the amount of logsimport logginglogger = logging.getlogger("unstructured.ingest")logger.root.removehandler(logger.root.handlers[0])   copied >>> import os>>> from unstructured.ingest.connector.local import simplelocalconfig>>> from unstructured.ingest.interfaces import partitionconfig, processorconfig, readconfig>>> from unstructured.ingest.runner import localrunner>>> output_path = "./local-ingest-output">>> runner = localrunner(...     processor_config=processorconfig(...         # logs verbosity...         verbose=true,...         # the local directory to store outputs...         output_dir=output_path,...         num_processes=2,...     ),...     read_config=readconfig(),...     partition_config=partitionconfig(...         partition_by_api=true,...         api_key="your_unstructured_api_key",...     ),...     connector_config=simplelocalconfig(...         input_path="./documents",...         # whether to get the documents recursively from given directory...         recursive=false,...     ),... )>>> runner.run() info: numexpr defaulting to 2 threads. let’s take a closer look at the configs that we have here. processorconfig controls various aspects of the processing pipeline, including output locations, number of workers, error handling behavior, logging verbosity and more. the only mandatory parameter here is the output_dir - the local directory where you want to store the outputs. readconfig can be used to customize the data reading process for different scenarios, such as re-downloading data, preserving downloaded files, or limiting the number of documents processed. in most cases the default readconfig will work. in the partitionconfig you can choose whether to partition the documents locally or via api. this example uses api, and for this reason requires unstructured api key. you can get yours here.  the free unstructured api is capped at 1000 pages, and offers better ocr models for image-based documents than a local installation of unstructured.if you remove these two parameters, the documents will be processed locally, but you may need to install additional dependencies if the documents require ocr and/or document understanding models. namely, you may need to install poppler and tesseract in this case, which you can get with brew:   copied !brew install poppler!brew install tesseract if you’re on windows, you can find alternative installation instructions in the unstructured docs. finally, in the simplelocalconfig you need to specify where your original documents reside, and whether you want to walk through the directory recursively. once the documents are processed you’ll find 4 json files in the local-ingest-output directory, one per document that was processed.unstructured partitions all types of documents in a uniform manner, and returns json with document elements. document elements have a type, e.g. narrativetext, title, or table, they contain the extracted text, and metadata that unstructured was able to obtain. some metadata is common for all elements, such as filename of the document the element is from. other metadata depends on file type or element type. for example, a table element will contain table’s representation as html in the metadata, and metadata for emails will contain information about senders and recipients. let’s import element objects from these json files.   copied from unstructured.staging.base import elements_from_jsonelements = []for filename in os.listdir(output_path):    filepath = os.path.join(output_path, filename)    elements.extend(elements_from_json(filepath)) now that that you have extracted the elements from the documents, you can chunk them to fit the context window of the embeddings model.  chunking if you are familiar with chunking methods that split long text documents into smaller chunks, you’ll notice that unstructured’s chunking methods slightly differ, since the partitioning step already divides an entire document into its structural elements: titles, list items, tables, text, etc. by partitioning documents this way, you can avoid a situation where unrelated pieces of text end up in the same element, and then same chunk. now, when you chunk the document elements with unstructured, individual elements are already small so they will only be split if they exceed the desired maximum chunk size. otherwise, they will remain as is. you can also optionally choose to combine consecutive text elements such as list items, for instance, that will together fit within chunk size limit.   copied from unstructured.chunking.title import chunk_by_titlechunked_elements = chunk_by_title(    elements,    # maximum for chunk size    max_characters=512,    # you can choose to combine consecutive elements that are too small    # e.g. individual list items    combine_text_under_n_chars=200,) the chunks are ready for rag. to use them with langchain, you can easily convert unstructured elements to langchain documents.   copied from langchain_core.documents import documentdocuments = []for chunked_element in chunked_elements:    metadata = chunked_element.metadata.to_dict()    metadata["source"] = metadata["filename"]    del metadata["languages"]    documents.append(document(page_content=chunked_element.text, metadata=metadata))  setting up the retriever this example uses chromadb as a vector store and baai/bge-base-en-v1.5 embeddings model, feel free to use any other vector store.   copied from langchain_community.vectorstores import chromafrom langchain.embeddings import huggingfaceembeddingsfrom langchain.vectorstores import utils as chromautils# chromadb doesn''t support complex metadata, e.g. lists, so we drop it here.# if you''re using a different vector store, you may not need to do thisdocs = chromautils.filter_complex_metadata(documents)embeddings = huggingfaceembeddings(model_name="baai/bge-base-en-v1.5")vectorstore = chroma.from_documents(documents, embeddings)retriever = vectorstore.as_retriever(search_type="similarity", search_kwargs={"k": 3},) if you plan to use a gated model from the hugging face hub, be it an embeddings or text generation model, you’ll need to authenticate yourself with your hugging face token, which you can get in your hugging face profile’s settings.   copied from huggingface_hub import notebook_loginnotebook_login()  rag with langchain let’s bring everything together and build rag with langchain.in this example we’ll be using llama-3-8b-instruct from meta. to make sure it can run smoothly in the free t4 runtime from google colab, you’ll need to quantize it.   copied from langchain.prompts import prompttemplatefrom langchain.llms import huggingfacepipelinefrom transformers import pipelineimport torchfrom transformers import autotokenizer, automodelforcausallm, bitsandbytesconfigfrom langchain.chains import retrievalqa   copied model_name = "meta-llama/meta-llama-3-8b-instruct"bnb_config = bitsandbytesconfig(    load_in_4bit=true, bnb_4bit_use_double_quant=true, bnb_4bit_quant_type="nf4", bnb_4bit_compute_dtype=torch.bfloat16)model = automodelforcausallm.from_pretrained(model_name, quantization_config=bnb_config)tokenizer = autotokenizer.from_pretrained(model_name)terminators = [tokenizer.eos_token_id, tokenizer.convert_tokens_to_ids("<|eot_id|>")]text_generation_pipeline = pipeline(    model=model,    tokenizer=tokenizer,    task="text-generation",    temperature=0.2,    do_sample=true,    repetition_penalty=1.1,    return_full_text=false,    max_new_tokens=200,    eos_token_id=terminators,)llm = huggingfacepipeline(pipeline=text_generation_pipeline)prompt_template = """<|start_header_id|>user<|end_header_id|>you are an assistant for answering questions using provided context.you are given the extracted parts of a long document and a question. provide a conversational answer.if you don''t know the answer, just say "i do not know." don''t make up an answer.question: {question},context: {context},<|eot_id|><|start_header_id|>assistant<|end_header_id|>"""prompt = prompttemplate(    input_variables=["context", "question"],    template=prompt_template,)qa_chain = retrievalqa.from_chain_type(llm, retriever=retriever, chain_type_kwargs={"prompt": prompt},)  results and next steps now that you have your rag chain, let’s ask it about aphids. are they a pest in my garden?   copied question = "are aphids a pest?"qa_chain.invoke(question)["result"] output:   copied yes, aphids are considered pests because they feed on the nutrient-rich liquids within plants, causing damage and potentially spreading disease. in fact, they''re known to multiply quickly, which is why it''s essential to control them promptly. as mentioned in the text, aphids can also attract ants, which are attracted to the sweet, sticky substance they produce called honeydew. so, yes, aphids are indeed a pest that requires attention to prevent further harm to your plants! this looks like a promising start! now that you know the basics of preprocessing complex unstructured data for rag, you can continue improving upon this example. here are some ideas: you can connect to a different source to ingest the documents from, for example, an s3 bucket. you can add return_source_documents=true in the qa_chain arguments to make the chain return the documents that were passed to the prompt as context. this can be useful to understand what sources were used to generate the answer. if you want to leverage the elements metadata at the retrieval stage, consider using hugging face agents and creating a custom retriever tool as described in this other notebook. there are many things you could do to improve search results. for instance, you could use hybrid search instead of a single similarity-search retriever. hybrid search combines multiple search algorithms to improve the accuracy and relevance of search results. typically it’s a combination of keyword-based search algorithms with vector search methods. have fun building rag applications with unstructured data! < > update on github ←rag with source highlighting using structured generationfine-tuning llm to generate persian product catalogs in json format→building rag with custom unstructured dataunstructured data preprocessingchunkingsetting up the retrieverrag with langchainresults and next steps', 6),
('DJANGO', 'DJANGO 알아보기', '[SCC] DJANGO 알아보기[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO 알아보기제작:[SCC] DJANGO 알아보기수업 목표프레임워크를 이해할 수 있다.DJANGO 프레임워크에 대해 알아본다.목차01. 이번에 배울 것02. Framework웹 사이트 만들기프레임워크(Framework)란?03. Why DJANGO?필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 이번에 배울 것✔️수강 전 우리의 상태를 확인해볼까요~?👉여러분은 지금 무엇을 할 수 있을까요?

만약 지나가던 친구가 “나 이번에 카페 개업하는데 홈페이지 하나만 만들어주라, 
수고비는 작지만 줄게”라고 물었을 때, “으…응?” 하는 반응이 나오신다면

→ 이러한 분들이 우리 강의 수강대상입니다 !1️⃣강의 수강을 위해 필요한 역량Python 문법을 알아야 합니다.→반복문, 조건문, 함수, 클래스와 같은 기초 문법을 만다면 충분해요!

머리속으로 생각하는 기본 로직은 구현이 가능한 상태여야 강의를 수월하게 따라오실 수 있습니다.

HTML / CSS와 같은 웹 프로그래밍 기초가 조금씩 필요합니다. → DJANGO 강의와 병행하시면 좋아요!→ JavaScript는 선택이에요! 당연히 알면 좋지만 잘 몰라도 괜찮아요!2️⃣강의 수강을 통해 얻는 것DJANGO를 사용해서 웹 사이트를 만들 수 있게 됩니다.

이전에는 하지 못했던 일들을 할 수 있게 됩니다.→ 원하는 웹페이지를 만들 수 있어요!⚠️강의를 수강하시고 강의 내용을 여러분 본인의 것으로 만드는 과정이 꼭 필요합니다. 
강의를 들으시면서 복습은 필수!02. Framework✔️프레임워크에 대해 이해하고, 강의 수강에 꼭 필요한 마음가짐에 대해 알아볼까요?웹 사이트 만들기💡웹사이트에 기본적으로 필요한 것들은 무엇이 있을까요?웹 사이트 기본 기능회원가입유저기능 / 프로필페이지, 로그인/로그아웃회원탈퇴비밀번호 변경데이터베이스보안좋아요 기능팔로우 기능→ 지금은 이런 기능을 보면 “흠 어떻게 하지🤔” 하는 생각이 들 수 있어요.기능 구현 방법1️⃣프로그래밍 언어를 이용해서 하나하나 모두 만드는 방법

장점자신이 모든것을 이해할 수 있습니다.모든것을 뜻대로 동작하게 만들 수 있습니다.단점모든것을 아주 잘 알아야 합니다.→ 웹의 특성, 보안, 데이터베이스 등 정말 많은 부분들이 있어요.너무 많은 시간이 걸립니다.2️⃣이미 만들어진 것을 가져와서 사용하는 방법→ 로그인 / 로그아웃 같이 많은 기능들이 웹사이트 마다 비슷해요!

장점모든것을 만들 필요없이 가져다가 사용하는 방식으로 개발이 가능합니다.아주 빠르게 웹 사이트를 만들 수 있습니다.단점처음에 러닝 커브가 존재합니다.→ 다른 개발자들이 만들어놓은 코드를 어느정도 이해하고 사용법을 알아야 해요!모든것을 원하는대로 커스텀하기 어렵습니다.→ 가져다가 쓰는 것이기 때문에 한계가 존재해요.우리의 마음가짐💡아, 그렇구나.마법의 주문을 외쳐보세요! :)꼼꼼하게 이해하는 것은 필요하지만 프레임워크를 처음 배울때는 방해가 됩니다.다른 개발자가 만든 코드를 처음부터끝까지 이해한다는 것은 말이 안됩니다.→ 나중에 실력이 좋아지고나서는 필요하지만 지금은 중요하지 않아요!❗만들어진 도구들을 가져다가 사용하는 방식ALT→ 원리를  다 알고 이해하기 보다는 도구를 사용할 때처럼 
그 도구를 잘 사용할 수 있는 방법을 익히고 도구를 잘 사용할 수 있으면 됩니다. → 프레임워크는 도구입니다! 따라서모든 작동방식을 알아보겠다 생각은 하지말아주세요🙅‍♀️🙅‍♂️“아, 그렇구나. 이렇게 쓰는거구나“ 생각해주세요🙆‍♀️🙆‍♂️우리는 사용하는 방법과 그를 이용해 웹 사이트 만드는 방법을 배우는 것입니다.→ 익숙해진 다음에 하나하나 깊게 들어가면 돼요!프레임워크(Framework)란?📚소프트웨어 개발을 위한 구조적인 틀개발자들이 프로그램을 만들때 자주 사용하는 여러 도구를 모아놓은 것입니다.특정한 작업이나 목적을 수행하기 위한 코드 뭉치입니다.파이썬에는 DJANGO, Flask, FastAPI 등의 여러 프레임워크가 있습니다.📚왜 사용할까요?프레임워크를 사용하면 생산성이 아주 높아집니다.부가적인 부분은 프레임워크에 맡기고, 핵심 로직에만 집중할 수 있습니다.구조적으로 안정적인 형태로 개발이 가능합니다.→ 프레임워크는 슈퍼개발자, 한명도 아니고 여러명이 모여 논의를 통해 만들어져요! 즉, 굉장히 단단하고 안정적인 코드예요!빠르고 안정적이며, 높은 품질의 소프트웨어 개발 가능합니다.따라서💡거인의 어깨위에서 프로그래밍 합시다!모든걸 직접 개발할 필요가 없습니다.잘 만들어진 것을 가져와서 잘 사용하는 것도 능력입니다.03. Why DJANGO?✔️다양한 프레임워크 중에서도 DJANGO를 배워야하는 이유는 뭘까요?Python 기반의 웹 프레임워크라는데.. 이게 뭘까요!ALTDJANGO의 PRALT데드라인을 지키는 완벽주의자들을 위한 도구ALTPython 기반DJANGO를 다루기위해 다른 언어를 배울 필요가 없습니다.Python을 사용해서 웹개발이 가능합니다! 👍웹 프레임워크웹을 만들기 위한 프레임워크입니다.빠른 웹개발을 위한 모든 것이 준비되어 있습니다.Why DJANGO?DRY(Don’t Repeat Yourself) 원칙코드 중복을 최소로하는 개발 원칙을 따릅니다.모든것이 갖춰진 프레임워크보안, 관리자기능, Auth 등의 필요한 모든것이 준비되어있습니다.풍부한 레퍼런스Google과 함께라면 두렵지 않겠죠?여러분의 모든 에러는 이미 해결책이 있습니다.검증된 프레임워크 어떠한 도구(프레임워크)를 고를때는 그것을 어디에 사용했는지 봐야합니다.ALT이밖에도 토스, 화해, 번개장터, 에이블리 …⇒ 아, 그냥 사용하면 되겠구나 😃😃', 1),
('DJANGO', 'DJANGO 개발 환경 구성하기', '[SCC] DJANGO 개발 환경 구성하기[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO 개발 환경 구성하기제작:[SCC] DJANGO 개발 환경 구성하기수업 목표가상환경에 대해 이해한다.DJANGO 개발 환경을 구성할 수 있다.목차01. 파이썬 설치02. 가상환경03. DJANGO 설치하기LTS(Long Term Support)필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 파이썬 설치✔️먼저, 파이썬부터 설치해봅시다!코드스니펫[코드스니펫] 파이썬 3.10 버전 설치하기(window)Python복사https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
​[코드스니펫] 파이썬 3.10 버전 설치하기(macOS)Python복사https://www.python.org/ftp/python/3.10.11/python-3.10.11-macos11.pkg
​Python 설치3.10.x 버전을 사용합니다.→ 3.9.x도 가능해요. 이상없어요!파이썬 3.10 버전 설치하기[코드스니펫] 파이썬 3.10 버전 설치하기(window)Python복사https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
​[코드스니펫] 파이썬 3.10 버전 설치하기(macOS)Python복사https://www.python.org/ftp/python/3.10.11/python-3.10.11-macos11.pkg
​🚨주의) Add Python to PATH 
에 체크해야 합니다!!ALTALT소프트웨어 버전에 숨겨진 이야기보통 소프트웨어 버전은 A.B.C 형태를 취합니다.📚왜 그럴까요? 🤔
Major.Minor.PatchMajor : 주요 버전은 소프트웨어의 큰 변화나 기능 추가를 나타냅니다. 주요 버전이 변경되면 호환성이 없는 변경사항이 있을 수 있으며, 이는 이전 버전과의 호환성을 보장하지 않을 수 있음을 의미합니다.Minor : 부 버전은 주요 버전 안에서의 작은 변화를 나타냅니다. 주로 새로운 기능의 추가나 개선된 기능 등을 포함합니다. 부 버전의 변경은 주요 버전과의 호환성을 유지하면서 새로운 기능을 추가하는 것이 일반적입니다.Patch : 패치 버전은 보통 버그 수정, 보안 업데이트, 또는 작은 수정 사항을 나타냅니다. 주요 버전과 부 버전은 변경되지 않지만, 코드의 수정이 있을 수 있습니다. 일반적으로 패치 업데이트는 호환성을 유지하면서 이전 버전의 안정성을 향상시킵니다.💡버전 번호 체계가 존재하며 이는 소프트웨어 개발자에게 번호만 보고도 어떠한 변경사항이 적용되었고, 업그레이드 등의 작업을 해야할 지 말아야할 지 알려주는데 도움을 줘요!02. 가상환경✔️이제, 가상환경을 만들어봅시다!코드스니펫[코드스니펫] venv 폴더 만들기Python복사python -m venv venv 
​[코드스니펫] 가상환경 활성화(window)Python복사source venv/Scripts/activate
​[코드스니펫] 가상환경 활성화(macOS)Python복사source venv/bin/activate
​가상환경이란?하나의 컴퓨터에 여러개의 개발 환경을 셋팅하는 것입니다.왜 해야할까요?프로젝트별 환경 분리를 위해서 해야합니다.Global 환경과 개별 환경 설정을 위해서 해야합니다.가상환경 생성 및 적용macOS는 homebrew와 pyenv를 이용하면 좋아요! 
→ 물론 아래과정을 따라해도 좋습니다.1️⃣venv 폴더 만들기[코드스니펫] venv 폴더 만들기Python복사python -m venv venv 
​만든 폴더를 가상환경 관련된 폴더로 사용해요!2️⃣가상환경 활성화[코드스니펫] 가상환경 활성화(window)Python복사source venv/Scripts/activate
​ALTwindowsALT[코드스니펫] 가상환경 활성화(macOS)Python복사source venv/bin/activate
​ALTmacOSALT3️⃣설치된 파이썬 패키지 보기Python복사pip list 
​*가상환경을 세팅하지 않고 만들기 → 그냥 전역 환경에서 바로 진행해도 됩니다!03. DJANGO 설치하기✔️일단, DJANGO를 설치해볼까요?코드스니펫[코드스니펫] DJANGO 라이브러리 설치Python복사pip install DJANGO==4.2
​[코드스니펫] requirements.txt에 freezePython복사pip freeze > requirements.txt
​[코드스니펫] requirements.txt 읽어오기Python복사pip install -r requirements.txt
​❓그냥 설치하면 될까요? 
함께 설치할 때, pip install DJANGO==4.2 이렇게 버전을 함께 입력했어요! 그 이유는 뭘까요?LTS(Long Term Support)모든것은 진화하고 발전합니다.그럼 가장 최신버전이 늘 제일 좋을까요?어떤 패키지를 선택 & 설치할 때는 반드시 호환성을 고려해야합니다.가장 최신버전을 설치한다고해서 모든 것이 호환되지는 않습니다.ex) macOS M1 Chip 🤔프로젝트 호환성이 높고 오래 사용할 수 있는 버전을 선택해야 합니다. → 안정적이고 장기적으로 지원을 받을 수 있는 버전을 선택해야해요!소프트웨어나 기술 제품의 장기 지원을 나타내며 LTS 버전은 보다 오랜 기간 동안 지원되며 보안 업데이트, 버그 수정, 백포트된 기능 업데이트 등을 포함합니다.→ 사용자들이 해당 소프트웨어를 안정적으로 운영하고 유지보수할 수 있도록 도와줘요!그럼 우리는 이걸 어떻게 알 수 있을까요?→ 관련내용을 검색하고, 읽어서 찾을 수 있어요!☝https://www.DJANGOproject.com/download/ALT그렇다면 Python도 이런 LTS가 있을까요?☝https://devguide.python.org/versions/ALT다 이유가 있습니다.ALTDJANGO 설치하기1️⃣설치[코드스니펫] DJANGO 라이브러리 설치Python복사pip install DJANGO==4.2
​ALT2️⃣설치 패키지 확인하기Python복사pip list
​ALTDJANGO 만 설치했는데, 다른 것도 설치되는 이유?
→ 의존성 때문입니다. DJANGO도 결국 또 다른 것들의 도움을 받아 만들어집니다. 따라서 장고를 사용하기 위해서는 저것들이 함께 설치되어야합니다.→ 이 버전들은 항상 동일해야해요!→ 그래서 적어서 전달해야합니다.3️⃣requirements.txt에 freeze하기[코드스니펫] requirements.txt에 freezePython복사pip freeze > requirements.txt
​→ 현재 설치된 목록을 requirements.txt에 명시합니다.→ 앞으로 설치를 하고 나서 항상 이 과정을 진행해야합니다.4️⃣만들어진 requirements.txt를 읽어오는 법[코드스니펫] requirements.txt 읽어오기Python복사pip install -r requirements.txt
​→ requirements.txt를 한줄씩 읽으면서 모두 설치를 해줍니다.Copyright ⓒ TeamSparta All rights reserved.👉파이썬 설치과정

(1) 파이썬 홈페이지에서 파이썬 버전 3.10을 다운로드 해주세요.
(2) 설치 파일을 실행하여 파이썬 설치를 해주세요', 2),
('DJANGO', 'DJANGO 프로젝트(Project) 알아보기', '[SCC] DJANGO 프로젝트(Project) 알아보기[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO 프로젝트(Project) 알아보기제작:[SCC] DJANGO 프로젝트(Project) 알아보기수업 목표DJANGO 프로젝트를 생성할 수 있다.생성된 프로젝트의 구성파일에 대해 이해한다.DJANGO 프로젝트 서버를 실행하고, 접속할 수 있다.목차01. DJANGO 프로젝트필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO 프로젝트✔️DJANGO는 프로젝트를 단위로 움직입니다!코드스니펫[코드스니펫] 프로젝트 생성Python복사DJANGO-admin startproject my_first_pjt
​[코드스니펫] 해당 폴더 안쪽으로 이동Python복사cd my_first_pjt 
​[코드스니펫] DJANGO 개발 서버 실행Python복사python manage.py runserver 
​프로젝트 시작하기“프로젝트를 시작한다 == 하나의 프로그램을 만들기 시작한다”를 의미합니다.프로젝트 시작과정가상환경을 생성합니다.가상환경을 활성화합니다.DJANGO를 설치합니다.의존성 파일 requirements.txt를 생성합니다.나의 첫 DJANGO 프로젝트프로젝트 생성Python복사DJANGO-admin startproject <프로젝트 이름> <생성 디렉토리> 
​→ 여기서 생성 디렉토리를 생략하면 현재 위치에 프로젝트 이름의 폴더가 만들어지면서 생성됩니다.Python복사DJANGO-admin startproject <프로젝트 이름> . 
​→ [ . ]은 현재 폴더를 의미하며 현재 폴더를 프로젝트 폴더로 사용해서 생성됩니다.실습하기🤿아무것도 두려워하지말고 일단 그냥 빠져봅시다! 프로젝트 생성[코드스니펫] 프로젝트 생성Python복사DJANGO-admin startproject my_first_pjt
​→ 프로젝트명은 원하시는대로 바꿔도 괜찮지만 처음이니까 똑같이 따라와주세요!ALT→ 완료되면 폴더가 생성됩니다.→ 이게 DJANGO 프로젝트 폴더입니다. → 우리는 앞으로 이 폴더 안에서 프로젝트를 진행할 것 입니다.해당 폴더 안쪽으로 이동[코드스니펫] 해당 폴더 안쪽으로 이동Python복사cd my_first_pjt 
​DJANGO 개발 서버 실행[코드스니펫] DJANGO 개발 서버 실행Python복사python manage.py runserver 
​ALT→ 장고 서버 실행 성공🚀🚀프로젝트 이해하기❓나는 프로젝트를 생성만 했을뿐인데 🥲ALT이것들이 다 뭔가요 😱😱😱😱ALT다시 상기하는 우리들의 자세👌아, 그렇구나프레임워크는 하나의 도구입니다! 도구에 포함된 모든것들은 결국 우리를 도와주기 위한 것들 입니다!→ 하나하나 파고들지말고 전체적인 구성을 이해해주세요!하나하나 살펴보기❗settings.py : 프로젝트의 설정을 관리하는 곳 urls.py : 어떤 요청을 처리할지 결정하는 곳 __init__.py : 하나의 폴더를 하나의 파이썬 패키지로 인식하도록 하는 파일 → 3버전 이상으로 가면 없어도 됩니다. 하지만, 3버전 이하에서도 동작하도록 호환성을 위해 지키는 규칙입니다!wsgi.py : 웹 서버 관련 설정 파일manage.py : DJANGO 프로젝트 유틸리티 (조종기)💡일단, 우리는 settings.py와 urls.py만 잘 사용하면 돼요!', 3),
('DJANGO', 'DJANGO 앱(App) 알아보기', '[SCC] DJANGO 앱(App) 알아보기[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO 앱(App) 알아보기제작:[SCC] DJANGO 앱(App) 알아보기수업 목표DJANGO의 앱에 대해 이해하고 앱을 생성해서 프로젝트와 연결할 수 있다.목차01. 여러가지 기능으로 이루어진 프로젝트02. DJANGO 앱(App)DJANGO AppApp 사용하기App 살펴보기아, 그렇구나필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 여러가지 기능으로 이루어진 프로젝트✔️프로젝트란?
하나의 프로젝트는 하나의 서비스! A라는 웹사이트를 만든다고 하면, A라는 프로젝트를 생성하는 것!하나의 프로젝트는 하나의 기능만 하지 않습니다.우리가 이용하는 웹 사이트들을 떠올려볼까요? Naver, Facebook…유저, 게시물, 채팅, 좋아요 등 여러 기능으로 이루어져 있습니다.

우리가 이용하는 웹 프로그램들을 보면 공통된 기능들이 존재합니다.이 기능들을 한 번만 만들고 재사용할 수 있다면?! 🧐 → 반복되는 작업이 줄어들어 효율적으로 개발할 수 있습니다!02. DJANGO 앱(App)✔️DJANGO 앱이란 무엇일까요?코드스니펫[코드스니펫] App 생성하기Python복사python manage.py startapp articles
​DJANGO AppDJANGO App == 내가 생각하는 하나의 기능 덩어리!하나의 프로젝트는 여러 개의 앱으로 구성될 수 있습니다.하나의 앱으로 모두 개발하는 것도 가능합니다. (무엇이 좋다기보다 선택의 문제)하지만 여러 개의 앱으로 나누어 개발하는 것을 권장합니다!프로젝트와 앱프로젝트(Project) : 어플리케이션의 집합체입니다.앱(App) : 각각의 기능 단위 모듈입니다.App 사용하기💡앱을 사용하기 위해선 두가지 과정이 필요합니다.
1. App 생성하기
2. App 등록하기혹시 이런 과정이 왜 필요한지 궁금하시다면?!💡아, 그렇구나.장고는 이렇게 작동하는 프레임워크랍니다. 🙂1️⃣App 생성하기☝이제 그럼 앱을 생성해볼까요?DJANGO 앱을 생성하기 위해선 명령어를 입력해줘야합니다!혹시 앞의 강의에서 잠깐 나온 manage.py파일 기억나시나요?프로젝트를 생성한 다음부턴 manage.py를 이용해서 우리의 장고 프로젝트를 핸들링합니다.터미널을 열고 명령어를 입력해주세요!App 생성하기 코드 구조Python복사python manage.py startapp <앱 이름>
​[코드스니펫] App 생성하기Python복사python manage.py startapp articles
​💡DJANGO에선 앱 이름을 복수형으로 짓는 것을 권장하고 있습니다. ALT이렇게 장고 프로젝트 내부에 articles앱이 생성되었습니다! 🥳이런 식으로 여러개의 앱을 생성하는 것도 가능하겠죠??1️⃣App 등록하기앱을 생성했으니 이제 등록하는 일만 남았습니다!settings.py파일을 열어볼까요?💡코드가 많죠? 다 이해하실 필요 없습니다. 
나중에 필요할 때 설명해 드릴게요~ 저만 믿고 따라와주세요!INSTALLED_APPS 부분에 현재 우리 프로젝트에 등록된 app목록이 보입니다.이 곳에 우리가 생성한 앱을 등록하면 됩니다. ALT등록 완료🥇ALT💡마지막에 콤마를 붙여주시면 다음에 앱을 추가할 일이 있을 때 편리합니다! 
이것을 Trailing commas라고 부릅니다.App 살펴보기ALT아이고 선생님 ㅠㅠㅠㅠㅠㅠALT💡너무 어려워보인다구요? 😅다시 상기해보는 우리의 마음가짐아, 그렇구나천천히 알아가면 되니까 너무 겁먹지 마세요~~!!하나하나 살펴보기❗admin.py - 관리자용 페이지 관련 설정apps.py - 앱 관련 정보 설정models.py - DB관련 데이터 정의 파일tests.py - 테스트 관련 파일 views.py - 요청을 처리하고 처리한 결과를 반환하는 파일', 4),
('DJANGO', '클라이언트와 서버', '[SCC] 클라이언트와 서버[SCC] 파이썬 장고 실무 기초/[SCC] 클라이언트와 서버제작:[SCC] 클라이언트와 서버수업 목표Web에 대한 이해를 바탕으로 클라이언트와 서버구조를 설명할 수 있다.목차01. WEB 이해하기02. 클라이언트 - 서버 구조필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. WEB 이해하기✔️우리가 아무런 생각 없이 쓰는 WWW는 어떤 의미가 있을까요? 🤔WWW는 World Wide Web의 약자로 “전 세계에 펼쳐져 있는 거미줄”이라는 의미입니다.ALThttps://www.submarinecablemap.com/ALT전 세계는 모두 연결되어 있습니다.첫번째 그림의 파란 선들이 보이시나요? 우리는 해저 케이블로 물리적으로 연결되어있습니다.☝️“잠깐! 요즘엔 위성이라는 게 있는데요?”위성 통신은 전세계 트래픽의 1%에 불과합니다.90%이상은 모두 해저 광케이블이 해결하고 있습니다.

❓그런데 말입니다 🧐케이블이 닿지 않는 곳은 어떻게 할까요? 🤔 (히말라야, 극지방 또는 개발도상국 …)→ 요즘 인터넷 안되면 살 수 없지 않나 😟
💡이러한 차이는 정보의 격차를 만들고 특정 계층의 정보의 빈곤으로 이어집니다.음, 그거 뭐 해결해보지 뭐이러한 사회적 문제를 해결해보겠다 하신 분이 계십니다.ALT바로 어디선가 한 번 쯤 들어보셨던 이름! 일론머스크입니다.ALTALTStarlink는 아주 작은 소형 위성으로 감싸서 위성끼리 데이터를 교환하는 프로젝트입니다.하지만 문제가 있습니다.ALTStarlink TrainALT혹시 천체 사진 보는걸 좋아하시나요? 사진을 찍었을 때 열차처럼 찍힌 Starlink Train때문에 별을 보고싶어도 보기 힘들어질 수도 있습니다.아직 다양한 사회적인 문제들이 남아있습니다.💡정리
우리가 웹 또는 인터넷이라고 하는 건 결국 전 세계의 컴퓨터가 서로 연결되어 있는 거대한 인프라를 이용하는 것입니다.02. 클라이언트 - 서버 구조들어본 적 있는 클라이언트와 서버ALT우리가 사용하는 대부분의 서비스는 
클라이언트-서버 구조를 가지고 있습니다.결국 클라이언트도 서버도 
하나의 컴퓨터입니다. 👀클라이언트(Client)인터넷에 연결된 장치 특히, 웹 브라우저를 말합니다.→ 서비스를 요청하는 주체 (사용자)서버(Server)자원(Resource)을 가지고 있는 컴퓨터입니다.요청을 처리하고 응답하는 주체입니다.💡우리가 구글 사이트에 접속한다는 것은?
→ 어딘가에 있는 구글 사이트를 가지고 있는 컴퓨터에게 ‘구글 홈페이지.html’을 달라고 요청하는 것!📚정리하면!구글.html 파일을 요청함구글 서버가 요청을 받아서 구글.html 파일을 우리 컴퓨터에게 전달함우리 컴퓨터의 웹 브라우저가 구글.html 파일을 해석해서 이쁘게 보여줌→ 구글 서버 (Server) - 웹 브라우저 (Client)→ 우리도 이걸 만드는 방법을 배우고 있는 것입니다!', 5),
('DJANGO', '요청과 응답', '[SCC] 요청과 응답[SCC] 파이썬 장고 실무 기초/[SCC] 요청과 응답제작:[SCC] 요청과 응답수업 목표요청(Request)과 응답(Response)에 대해 이해하고 DJANGO로 확장할 수 있다.목차01. 웹 브라우저와 웹 페이지정적 웹페이지와 동적 웹페이지02. 프론트엔드와 백엔드프론트엔드와 백엔드03. 요청과 응답필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 웹 브라우저와 웹 페이지💡여러분은 어떤 웹 브라우저를 사용하고 계시나요?ALT📚그런데 사실은..!ALTBrowser logos from github.com/alrra/browser-logosALT웹 브라우저란?인터넷에서 내가 원하는 페이지를 찾아서 보여주고 하이퍼링크를 통해 다른 페이지로이동할 수 있도록 도와주는 프로그램입니다.HTML 파일을 우리가 보는 이쁜 화면으로 바꿔주는 프로그램입니다. (렌더링, Rendering)웹 페이지(Web Page)란?특별한 정의를 기대했다면, 아쉽지만우리가 보는 모든 화면 하나하나가 바로 웹 페이지입니다.❓그럼 제가 만든 HTML도 웹 페이지인가요?❗네, 맞아요 !

“그런데 뭔가 제꺼는 … 뭐랄까 … 살아있는 것 같지 않은데요 😞”
→ 그럼 정적 웹 페이지와 동적 웹 페이지에 대해 설명해 드릴게요!정적 웹페이지와 동적 웹페이지정적 웹페이지(Static Web Page)작성한 상태를 그대로 제공하는 웹 페이지입니다.모든 상황에서 동일한 내용을 전달합니다.우리가 작성한 HTML을 말합니다.동적 웹페이지(Dynamic Web Page)요청에 따라 보여주는 모습이 달라지는(수정되어) 웹 페이지입니다.포털사이트에 A유저가 로그인했을 때와 B 유저가 로그인했을 때의 화면은 다릅니다. (받은 메일의 갯수, 가입한 카페…)요청을 받아서 적절한 응답을 만들어주는 주체가 필요합니다.⇒ DJANGO !02. 프론트엔드와 백엔드💡이번엔 익숙하게 들어봤을 프론트엔드와 백엔드에 대해서 알아봅시다!
여러분은 프론트엔드, 백엔드라는 단어를 보면 어떤 게 떠오르시나요?우리가 생각하는 프론트 개발자의 업무ALT혹시 이런 이미지가 떠오르시나요?ALT현실ALT💡사실상 백엔드건 프론트건 시커먼 화면 보고 코딩합니다. 🥹프론트엔드와 백엔드🖥️백엔드 개발보이지 않는 서버 측의 작업을 담당합니다.데이터베이스와의 상호작용, 비즈니스 로직 처리, 보안, 사용자 인증 등을 처리합니다.사용자가 요청한 데이터를 처리하고 그에 따른 결과를 생성합니다.주로 서버 사이드 언어 및 프레임워크를 사용하여 개발되며, 데이터베이스와의 통신을 담당합니다.주요 목표는 안정성, 보안성, 성능을 유지하면서 프론트엔드와의 원활한 데이터 교환을 지원하는 것입니다.🖥️프론트엔드 개발디자이너가 만든 웹 페이지를 기반으로 더 동적이고 상호작용적인 웹 애플리케이션을 개발합니다.주로 JavaScript 프레임워크나 라이브러리를 사용하여 프론트엔드 기능을 개발하고, 데이터 처리와 상태 관리를 담당합니다.백엔드와의 통신을 위한 API 요청 및 응답 처리, 데이터의 가공 및 표시, 사용자 입력에 대한 반응 등을 담당합니다.주로 웹 애플리케이션의 비즈니스 로직과 상호작용적인 요소를 다루며, UI 컴포넌트의 상태 관리와 라우팅 등을 수행합니다.프론트엔드 개발자는 보다 복잡하고 동적인 웹 애플리케이션을 만들기 위해 퍼블리셔와 협업하며, 웹 애플리케이션의 전체적인 아키텍처와 성능을 고려합니다.03. 요청과 응답✔️이제는 클라이언트와 서버 모두 익숙하시죠? 이제 도식화를 한번 살펴봅시다.ALT웹 개발의 요청과 응답📚요청(Request)클라이언트(웹 브라우저, 모바일 앱 등)가 서버에게 특정한 작업을 요청합니다.클라이언트의 정보, 요청의 형식, 인증 정보 등을 포함합니다.데이터를 포함하며, JSON이나 HTML 폼 데이터와 같은 형식으로 전달합니다.클라이언트가 요청하는 것이 무엇인지 URL을 보면 파악할 수 있습니다.📚응답(Response)서버가 클라이언트의 요청을 받고 처리한 후에 클라이언트에게 결과를 전송합니다.결과에는 여러 가지 부가적인 정보를 포함합니다.HTML, JSON, XML 등의 형식일 수 있으며, 클라이언트가 요청한 작업에 따라 다양한 형태로 전송합니다.💡놀랍게도 우리는 이 과정을 미리 체험해 본 적이 있습니다!
저번 시간에 DJANGO 프로젝트를 만들고 App까지 만든 것 기억 나시겠죠?다시 한 번 서버를 켜서 확인해 봅시다!ALT', 6),
('DJANGO', 'DJANGO의 설계 철학 - MTV Pattern', '[SCC] DJANGO의 설계 철학 - MTV Pattern[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO의 설계 철학 - MTV Pattern제작:[SCC] DJANGO의 설계 철학 - MTV Pattern수업 목표디자인 패턴에 대해 이해할 수 있다.DJANGO에 적용된 디자인 패턴을 설명할 수 있다.목차01. 디자인 패턴 이야기02. DJANGO의 디자인 패턴DJANGO 디자인 패턴MVC 디자인 패턴DJANGO의 MTV Pattern⭐ 한 눈에 보기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 디자인 패턴 이야기✔️디자인 패턴은 자주 사용되는 소프트웨어의 구조를 마치 건축 공법처럼 일반화한 것이에요!
아직은 잘 이해가 안되시죠? 이해를 위해 아래를 가볍게 살펴볼까요?들어가기 전에! 부산사시는 분?ALT놀러가고 싶다. 정말.ALT이런 다리는 어떻게 만드는걸까요? 👀💡이런 다리를 현수교(Suspension Bridge) 라고 부릅니다.ALTALT교량의 양쪽 끝과 가운데의 주탑에 케이블을 두고 상판을 메다는 형식의 공법으로 만들어 진다고 합니다.→ 즉, 만드는 방식이 똑같아요!이게 무엇을 뜻할까요?💡“ 이런 다리를 여러번 짓다보니까 자주 사용되는 구조들이 있으니, 
그것들에 이름붙여서 일반화 해두면 좋지않을까? “ 하는 생각이 들죠?💡이러한 내용을 소프트웨어로 가져와 봅시다.

다양한 응용 소프트웨어를 만들다보니 공통적인 구조와 문제가 발생합니다. 
이 때, 구조에도 공통점이 있고, 문제에도 공통점이 존재합니다.→ 패턴 (Pattern)이 보여요!소프트웨어의 디자인 패턴전세계의 개발자들이 개발을 하다보니 비슷한 문제를 해결하는 공통적인 구조를 발견합니다.벌써 우리가 이미 배운 디자인 패턴이 있답니다!→ 클라이언트-서버 역시 소프트웨어 디자인 패턴중 하나에요.즉, 디자인 패턴은 자주 사용되는 소프트웨어의 구조를 마치 건축 공법처럼 일반화 해둔 것입니다.왜 필요할까요?특정 구조에 대한 설계를 빠르게 할 수 있습니다.공통적으로 발생하는 문제에 대해 재사용 가능한 해결 방법을 제시할 수 있습니다.즉, 프로그래머가 시스템을 디자인할 때 발생하는 공통된 문제를 해결하면서 진행할 수 있는 형식화된 관행입니다.02. DJANGO의 디자인 패턴✔️DJANGO가 만들어진 디자인패턴을 이해하면 DJANGO가 작동하는 방식도 알 수 있어요!DJANGO 디자인 패턴DJANGO의 설계 철학에도 디자인 패턴이 적용되어 있습니다.⇒ MTV Pattern 이라고 해요!그런데 사실 👀→ MTV 패턴은 MVC 패턴을 살짝 변형한 것입니다.MVC 디자인 패턴Model - View - Controller 이렇게 3파트로 나누어져있습니다.데이터와 논리 구조를 제어하는 설계로 널리 사용되는 디자인 패턴 중 하나입니다.→ 하나의 큰 소프트웨어를 나눠서 생각해보기 위해서 등장한 패턴이에요!역할Model : 데이터와 관련된 로직을 관리View : 레이아웃과 관련된 화면을 처리Controller : Model과 View를 연결하는 로직을 처리💡왜 이렇게 분리하는 걸까요?관심사를 분리하기 위해서 입니다.각 부분을 독립적으로 개발할 수 있어서 생산성이 증가하고 유지보수가 쉬워집니다.다수의 멤버가 동시에 개발하기도 용이합니다.DJANGO의 MTV Pattern💡사실 거의 똑같고 이름만 달라요!MVC vs MTVMVCMTVModelModelViewTemplateControllerView→ View의 기능을 Template이, Controller의 기능을 View가 수행해요!MTV PatternModelMVC에서의 Model입니다.데이터와 관련된 로직을 처리합니다.→ 데이터 구조 정의, 데이터베이스 기록 관리해요.TemplateMVC에서의 View입니다.레이아웃과 화면상의 로직을 처리→즉, UI와 레이아웃을 다루어요.ViewMVC에서의 Controller입니다.메인 비지니스 로직을 담당합니다.클라이언트의 요청에 대해 처리를 분기하는 역할을 합니다.DB도 조회하고 외부로 요청하기도 해요.응답을 만들어서 클라이언트에게 전달해요.⭐ 한 눈에 보기ALT이제 여러분이 설명해 보세요!💡1. DJANGO의 디자인 패턴은 무엇인가요?
2. DJANGO의 Model은 어떤 역할을 하나요?
3. DJANGO의 Template은 어떤 역할을 하나요?
4. DJANGO의 View은 어떤 역할을 하나요?정답!MVC 패턴을 변형한 MTV 디자인 패턴이 적용되어 있어요!데이터 관련 처리를 해요!화면 관련 처리를 해요!Model & Template 중간 로직을 처리하고, 메인 비지니스 로직을 담당해요! ', 7),
('DJANGO', 'DJANGO Template 시작하기', '[SCC] DJANGO Template 시작하기[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Template 시작하기제작:[SCC] DJANGO Template 시작하기수업 목표DJANGO의 Template을 이해하고 View와 연결할 수 있다.목차01. 요청과 응답이거 한 번 해보려구요URLView02. DJANGO Template필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 요청과 응답✔️MVT 패턴을 실습해볼까요?코드스니펫[코드스니펫] urls.pyPython복사# my_first_pjt/my_first_pjt/urls.py
from DJANGO.contrib import admin
from DJANGO.urls import path
from articles import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("index/", views.index),
]
​[코드스니펫] views.pyPython복사from DJANGO.http import HttpResponse

def index(request):
	response = HttpResponse("<h1>Hello, DJANGO!</h1>")
return response
​[코드스니펫] 서버 실행시키기Python복사python manage.py runserver
​이거 한 번 해보려구요ALT💡DJANGO가 요청을 받고 응답을 하는 과정은 이렇습니다.요청(Request)이 들어오면URL(urls.py) 처리View(views.py) 처리Template(html) 처리응답(Response) 전달우리는 도구의 사용법을 배우고 있는 것→ 각 파트의 티키타카 💫를 이해하자→ 일단 사용법을 익히신 후 작동 원리를 공부하시는 걸 권장합니다!URL💡urls.py파일을 한 번 열어볼까요?
이 곳은 어떤 url패턴으로 들어오면 어디의 뷰로 보낼까? 를 설정해 주는 곳입니다!urlpatterns 내부에 정의해주면 됩니다![코드스니펫] urls.pyPython복사# my_first_pjt/my_first_pjt/urls.py
from DJANGO.contrib import admin
from DJANGO.urls import path
from articles import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("index/", views.index),
]
​☝️ 어라? 강사님 경로를 적을 때 “index” 로 적으면 되는 것 아닌가요? “index/” 로 적으신 이유가 있으신가요??💡이유가 있습니다. 자세한 내용은 Urls 심화편에서 설명해 드릴게요!A. indexB. index/일단은 장고에서는 B처럼 사용하길 권장하고 있다. 정도로 설명드리겠습니다!(이 것을 Trailing Slash라고 합니다.)저희는 지금 articles라는 앱을 만들고 있죠?artilces폴더안에 있는 views.py폴더를 여시고 이 곳에 뷰를 정의하시면 됩니다.from articles import views → articles 의 views 모듈을 사용하겠다.path("index/", views.index) →  index/ 로 요청이 오면 views.index로 전달할 것이다.→ 이렇게 하면 views의 index함수로 요청을 전달하게 됩니다!💡뷰를 작성하는 두 가지 방법
뷰를 작성하는 방법엔 함수형 뷰와 클래스형 뷰가 있습니다.DJANGO 기초에선 대부분 함수형 뷰로 작성할 예정이고 클래스형 뷰는 심화파트에서 사용해볼 예정입니다.클래스형 뷰는 상속과 같은 것을 이용할 수 있기 때문에 만들어진 코드를 상속해서 사용한다면 작성해야하는 코드가 줄어든다는 장점이 있습니다.장고를 처음 배울 땐 함수형 뷰가 흐름이 다 보이기 때문에 더 좋습니다!Viewviews.py[코드스니펫] views.pyURL에서 보내진 요청을 처리하는 index view 함수를 작성해줍니다.HTTP 요청을 받고, HTTP 응답을 반환저장하고 실행해보자[코드스니펫] 서버 실행시키기ALT💡엇 … 내 로켓 어디갔어 ㅠㅠ이제부터 진짜 시작인겁니다 !Welcome Page가 아닌 실제로 내가 코딩하는대로 동작하는 것입니다!(내가 입력한 코드가 반영되었다는 의미이기도 합니다!)Page not found라는 문구가 나오죠? 해당 경로를 찾을 수 없다는 의미입니다.우리는 / 라는 경로로 들어왔는데, 이걸 처리할 수 있는 url이 정의되어있나 확인해볼까요? 👀→ 아 맞다! 우리가 정의한 경로는 index/였지?!!우리가 정의한 경로로 들어가봅시다!index/ 로 들어가보면…ALT와우!👍어떤일이 일어난걸까요?💡그런데말입니다 🧐HTML 코드가 길어지면 …Python복사from DJANGO.shortcuts import render
from DJANGO.http import HttpResponse

# Create your views here.
def index(request):
return HttpResponse("""
                        ????
                        < 100줄? >
                        ??? 
                        """)
​→ 아, 음 제가 모르는게 많지만 이건 아닌것 같은데요?→ 매번 이렇게 작성하긴 힘들 것 같아요ㅠㅠ우리가 원하는 건 HTML 파일에 작성하고 그 파일을 뭔가 보여주는식 …?02. DJANGO Template✔️HTML파일을 작성하고 뷰로 사용해볼까요?코드스니펫[코드스니펫] HTML파일을 뷰로 사용하기[코드스니펫] index.html[코드스니펫] urls.py 정답코드[코드스니펫] views.py 정답코드[코드스니펫] users.html 정답코드사실상 HTML이라고 생각하셔도 좋습니다.사용해보기[코드스니펫] HTML파일을 뷰로 사용하기💡아직 index.html 이 없는데?templates 폴더를 만들고 그 안에 index.html 생성해봅시다.my_first_pjt/articles/templates/index.html 경로입니다.[코드스니펫] index.htmlrender ?DJANGO 내부 코드를 보면Python복사def render(
    request, template_name, context=None, content_type=None, status=None, using=None
):
"""
    Return an HttpResponse whose content is filled with the result of calling
    DJANGO.template.loader.render_to_string() with the passed arguments.
    """
    content = loader.render_to_string(template_name, context, request, using=using)
return HttpResponse(content, content_type, status)
​💡아, 결국 앞에서 했던거랑 구조 자체는 똑같은거네!
이정도만 이해해두자HTML복사render(request, template_name, context)
​주어진 template을 context와 결합해서 렌더링을 거친후 완성된 html을 HttpResponse로 돌려주는 함수입니다.💡아, 이렇게 쓰는거구나 !직접 해보기!users/ 라는 경로로 들어오면 users.html 을 렌더링 해서 보여주는 코드를 작성해 보세요.URLs → Views → Template정답!', 8),
('DJANGO', 'DJANGO Template System', '[SCC] DJANGO Template System[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Template System제작:[SCC] DJANGO Template System수업 목표DJANGO의 Template System을 이해하고 활용할 수 있다.목차01. 이쯤에서 밝히는 우리의 성경02. DJANGO Template SystemTemplate?DJANGO Template Language (DTL)DTL 문법사용해보기 (Hello)생각해보자 🤔Template InheritanceTemplate 참조 위치필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 이쯤에서 밝히는 우리의 성경✔️앞으로 바이블처럼 여기게 될 DJANGO의 공식 문서를 먼저 살펴봅시다!코드스니펫[코드스니펫] DJANGO 공식 문서 페이지Python복사https://docs.DJANGOproject.com/en/4.2/
​💡이 세상에 존재하는 모든 DJANGO 강의는 이 문서documentation를 벗어나지 않습니다.이 문서를 잘 요약한 강의가 더 익숙할 수는 있지만, 이 문서가 핵심이라는 걸 기억해 두세요!
(DJANGO 문서 정도면 정말 깔끔하게 정리가 잘 되어있는 편입니다)ALT앞으로의 개발 학습을 위해 아래 두 내용을 기억합시다!가능하면 영어로 볼 것문서도 보는 버릇을 들여야 보는 눈이 생긴다02. DJANGO Template System✔️이제 본격적으로 Template System에 대해서 살펴봅시다!코드스니펫[코드스니펫] HTML파일을 뷰로 사용하기Python복사# my_first_pjt/articles/views.py
from DJANGO.shortcuts import render

def index(request):
return render(request, "index.html")
​[코드스니펫] index.htmlHTML복사
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>My First DJANGO PJT</title>
</head>
<body>
<h1>My First DJANGO Project</h1>
<p>My first DJANGO project is working!</p>
</body>
</html>
​[코드스니펫] urls.py 정답코드Python복사path("users/", views.users),
​[코드스니펫] views.py 정답코드Python복사def users(request):
return render(request, "users.html")
​[코드스니펫] users.html 정답코드Python복사<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Users</title>
</head>
<body>
<h1>Users Page</h1>
</body>
</html>
​Template?💡우리는 이제 좀 익숙하죠?
DJANGO에서의 Template은 데이터를 보여주는 로직을 작성하는 부분입니다.Template 기본 경로app_name / templates❓그렇다면 DJANGO는 여기에 있다는걸 어떻게 기가막히게 찾지?DJANGO는 setting.py의 TEMPLATES의 APP_DIRS를 보고 답을 찾습니다!→ 이를 통해 DJANGO는 templates라는 이름으로 된 경로를 보고, 그 안에 있는 template들을 찾게 됩니다.ALT💡우리는 HTML 뿐만 아니라 데이터를 반영해서 보여주고 싶다! 
이러한 요구를 해결해 주기 위해 DJANGO의 Template System은 
데이터 표현을 위한 다양한 도구를 제공하고 있습니다.DJANGO Template Language (DTL)💡DJANGO Template에서 사용하는 문법으로 Python에 익숙할 DJANGO 개발자를 위해
Python과 비슷하게 되어 있습니다.

여기에서 주의할 점은 Python이 동작하는 것이 아니라는 것!DTL 문법변수, Variable변수의 기본 형태HTML복사{{ variable },},
​view의 context로 넘긴 데이터를 접근할 수 있음. 을 사용하여 변수의 속성값에 접근 가능render() 의 세번째 인자인 context에 dict 형태로 넘겨진 데이터 중key 값이 template에서 사용 가능한 변수가 됨 → 해보면 이해될겁니다 걱정 X !필터, Filters필터의 기본 형태HTML복사{{ variable|filter },},
​변수에 어떠한 작업을 추가적으로 더해 수정하고 싶을때 사용약 60개의 built-in template filter가 제공되며 일부 필터는 인자를 받기도 함.모든 건 공식문서에 (바로가기)필터 사용 예시view에서 넘겨준 데이터는 Aiden Lim 이런식이지만 
보여줄때는 소문자로 보이게 하고 싶다면HTML복사{{ first_name|lower },},
​태그, Tags태그의 기본 형태HTML복사{% tag %},
​반복문 또는 논리, 조건문을 수행하여 제어 흐름을 만들거나 특수한 기능을 수행일부는 시작 태그와 종료 태그가 있음HTML복사{% if ~ %},
{% endif %},
​❗DTL에 쓰이는 형태가 python과 비슷하죠?

하지만 꼭 기억해 두셔야 할 것!
- 파이썬 코드가 안쪽에 들어가는것이 아님! DTL 문법에 불과
- 모든건 공식문서에 (바로가기)주석, CommentsHTML복사{# 한 줄 주석 #},

{% comment %},
 여러줄
 주석
{% endcomment %},
​사용해보기 (Hello)여기까지는 혼자 해보기/hello 로 들어오면 아래의 화면이 나오도록 작성해 주세요.urls, view, template 작성 필요ALT해보고 눌러보시는거죠?🧐ALT이름을 바꾸고 싶다면context 넘기기❗이제는 template에서 사용할 데이터를 view에서 context에 담아 넘겨볼게요!ALT더 많은 데이터 넘기기ALTALT템플릿 필터 사용하기ALT이렇게 하고싶다면?ALT모든건 공식문서에 (바로가기)HINT : length, join해보셨죠?ALT템플릿 태그 사용하기ALT하나하나 작성하지말기ALT모든건 공식문서에 (바로가기)HINT : {% for %}, 해보셨죠?ALT생각해보자 🤔오케오케, DTL 엄청 편하네 그런데 지금 코드 상태가 …ALT대강봐도 중복이 많아보이는데 🤔ALT앞으로 늘어날 페이지들을 생각하면 더욱 많은 중복코드가 생길 것 같은데?→ 만약 부트스트랩 CDN을 넣는다고하면?→ 모든 코드의 <head> 에 CDN을 다 넣어야줘야함 Template Inheritance❗앞서 생긴 코드 중복 문제를 해결하기 위해 DJANGO는
Template Inheritance, 템플릿 상속을 지원합니다!코드의 재사용성에 초점이 맞춰져 있으며, 상위 템플릿에 공통이 될 부분을 정의하고하위 템플릿에서 달라질 부분을 블록(Block)으로 만드는 Skeleton 형태문법은 대략{% block block_name %}, {% endblock block_name %},상위 템플릿에서 하위 템플릿 마다 달라질 부분을 정의{% extends ''template_name'' %},하위 템플릿에서 상위 템플릿을 상속해서 확장한다는 것템플릿의 가장 최상단에 위치해야함다중상속을 지원하지 않음프레임워크는 실전이 빠릅니다base.html 생성공통적으로 적용될 상위 템플릿ALT하위 템플릿에서 상속extends 태그를 이용해서 상속할 상위 템플릿 지정block 태그를 이용해서 달라진 부분만 명시ALT템플릿 상속 적용 후ALTALT템플릿 상속 적용전ALT→ 나머지 부분도 적용해 보세요🙂 속이 시원해질거에요.Template 참조 위치적용은 잘되었는데 🤔 (또 뭐가 불편한걸까)ALTbase.html 파일의 위치가 articles 앱 안쪽의 templates에 있는게 불편하다.왜 !!?하나의 프로젝트는 여러개의 앱으로 구성될 수 있음만약 users 라는 앱이 추가되고 거기에서도 base.html 을 써야한다면?articles / templates / base.html 에서 가져와서 users에서 사용해야함→ 구조적으로 이상하다 → 공통된 템플릿은 다른곳에 모아두고 싶다 !!커스텀 템플릿 경로 추가하기DJANGO가 템플릿을 참조하는 위치는 settings.py에서 결정됨ALTDIRS에 DJANGO가 추가적으로 템플릿을 참조할 위치를 추가할 수 있음해보자 !my_first_pjt 최상단 경로에 templates 디렉토리 생성 
(이름은 달라져도 되지만 templates 권장)ALT디렉토리 위치 잘보고 만들자 !ALT위 폴더 아래에 base.html 을 두자ALT이제 DJANGO가 우리가 새로 생성한 templates 에서도 템플릿을 참조할 수 있게 적어주면 된다ALTBASE_DIR ?DJANGO가 친절하게 ‘너네 이 위치 많이 참조하더라?’ 싶어서 적어둔 프로젝트 최상단 경로값음… 저는 더 토끼굴을 파고 싶습니다.→ 문제 없이 동작하는지 확인하기 !', 9),
('DJANGO', 'HTTP Form', '[SCC] HTTP Form[SCC] 파이썬 장고 실무 기초/[SCC] HTTP Form제작:[SCC] HTTP Form수업 목표Form 작동방식에 대해 이해하고 DJANGO에 적용할 수 있다.목차01. 데이터 주기 (Form과 input)클라이언트가 서버에게 데이터를 보내는 방법HTML Form 요소action과 method실습 - Form을 작성해봅시다!실습 - Form에 Input 요소도 넣어봅시다!input 요소HTTP methodsGET쿼리스트링(Query String Parameter)02. 데이터 받기서버에서 데이터 받기실습필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. 데이터 주기 (Form과 input)✔️Form과 input을 이용해서 데이터를 보내볼까요?코드스니펫[코드스니펫] urls.py에 추가하기Python복사path("data-throw/" , views.data_throw),
​[코드스니펫] views.py에 추가하기Python복사def data_throw(request):
return render(request, "data_throw.html")
​[코드스니펫] templates에 data_throw.htm만들기HTML복사{% extends ''base.html'' %},

{% block content %},
		<h1>Data Throw</h1>
{% endblock content %},
​[코드스니펫] Form 작성하기HTML복사<form action="#" method="#">
</form>
​[코드스니펫] Form태그 안에 input요소 넣기HTML복사<form action="#" method="#">
<input type="text" name="message">
</form>
​[코드스니펫] 제출 버튼과 Label 넣기HTML복사<form action="#" method="#">
<label for="message">메세지 입력</label>
<input type="text" id="message" name="message">
<button type="submit">전송</button>
</form>
​클라이언트가 서버에게 데이터를 보내는 방법예시 - 회원가입ALT옛날옛적ALT→ 우리는 미리 정의되어있는 형식에 데이터를 채워넣고 버튼을 눌러서 가입(전송)했었습니다.HTML Form 요소👉만약, HTML Form에 대해 하나도 모르겠다하시면 잠깐 정지하시고 5분정도 투자해서 다시 공부하고 오시면 좋아요!웹에서 유저에게 데이터를 입력받는 여러가지 형식을 제공합니다. → 버튼, 텍스트, 드랍다운, 선택 등유저의 데이터를 서버로 전송하는 역할을 합니다.action과 method⇒ 우리가 지금 집중해야하는 부분입니다!HTML복사<form action="/submit/" method="post">
<label for="username">사용자 이름:</label><br>
<input type="text" id="username" name="username" required><br>
<label for="email">이메일 주소:</label><br>
<input type="email" id="email" name="email" required><br>
<label for="password">비밀번호:</label><br>
<input type="password" id="password" name="password" required><br>
<input type="submit" value="가입하기">
</form>
​→ 데이터를 어디로(action) 어떤 방식(method)를 이용해서 보낼지 결정하는 속성action과 method1️⃣action데이터가 전송될 URL을 지정합니다.지정하지 않을경우 현재 페이지의 URL로 데이터를 전송합니다.2️⃣method데이터를 전송하는 방식(HTTP request method)을 지정합니다.HTML Form은 GET 방식 또는 POST 방식으로만 전송이 가능합니다.직접 해봅시다!📢여러분 여기까지는 이제 할 수 있겠죠? 
data-throw/ 로 들어오면 아래의 data-throw.html 을 보여주는 페이지를 작성해 주세요. 
⇒ 강의를 멈추고 꼭 직접해주세요!ALTdata-throw 페이지의 모습ALTurls.py에 추가하기[코드스니펫] urls.py에 추가하기Python복사path("data-throw/" , views.data_throw),
​ALTviews.py에 추가하기[코드스니펫] views.py에 추가하기Python복사def data_throw(request):
return render(request, "data_throw.html")
​templates에 data_throw.htm만들기[코드스니펫] templates에 data_throw.htm만들기HTML복사{% extends ''base.html'' %},

{% block content %},
		<h1>Data Throw</h1>
{% endblock content %},
​실습 - Form을 작성해봅시다!Form 작성하기[코드스니펫] Form 작성하기HTML복사<form action="#" method="#">
</form>
​→  action="" method="" 이렇게 비워두고 작성하셔도 됩니다!ALT⇒ 작성하고 새로고침해도 아무런 변화가 없죠? 이제 input 을 이용해서 입력할 수 있는 곳을 만들어 줘야합니다!실습 - Form에 Input 요소도 넣어봅시다!Form태그 안에 input요소 넣기[코드스니펫] Form태그 안에 input요소 넣기HTML복사<form action="#" method="#">
<input type="text" name="message">
</form>
​ALT제출 버튼과 Label 넣기[코드스니펫] 제출 버튼과 Label 넣기HTML복사<form action="#" method="#">
<label for="message">메세지 입력</label>
<input type="text" id="message" name="message">
<button type="submit">전송</button>
</form>
​label for와 input id는 일치해야해요!→ 사실 기능동작과는 관계가 없지만, 동일하게 하면 label과 input을 묶어줄 수 있습니다! 그러면 label을 클릭해도 input이 선택되도록 할 수 있어요!button type을 꼭 submit으로 해야 버튼이 전송하는 기능을 할 수 있어요!ALT데이터 제출해보기ALTaction에 다른 값을 설정하지 않았으므로 현재 페이지에 데이터를 전송합니다.input 요소inputform에서 사용자의 입력을 받기 위해 사용합니다.type 속성에 따라 입력 동작 방식이 달라집니다.→ 지정하지 않을경우 type=text로 인식해요!📌데이터 전송에서 핵심 속성은 name입니다.name으로 서버에 데이터를 전달하고, 서버는 name을 보고 데이터를 판단합니다.name 속성form을 제출(submit)하면 name속성에 설정된 값이 서버로 전송됩니다.서버에서는 name속성을 사용하여 값에 접근합니다.⇒ 즉, name속성이 없다면 서버가 데이터를 받을 수 없어요!name속성의 값이 key가 되고, 사용자가 입력한 값이 value가 되어 전송됩니다.HTTP methodsHTTP란?하이퍼텍스트 전송 프로토콜 (Hyper Text Transfer Protocol)여러가지 리소스를 보내고 받을 때 사용하는 프로토콜 (통신규약) == 약속입니다!→ 엄청나게 많은 약속들이 있고, 그중에서 하나가 HTTP예요!요청(request)와 응답(response)로 이루어지는 통신입니다.웹에서 이루어지는 데이터 교환의 기초라고 할 수 있습니다.HTTP MethodsHTTP에서 수행할 작업을 나타냅니다.특정 자원에 대해 내가 수행하고자 하는 동작을 method로 정의합니다.GET, POST, PUT, DELETE, … 등이 있습니다.→ 일단 여기서는 GET만 집중해봅시다!📌다른 Methods들이 더 궁금하다면 찾아봐야겠죠?→ https://developer.mozilla.org/ko/docs/Web/HTTP/MethodsGET특정한 자원을 조회하는데 사용합니다.데이터를 서버로 전송할 때 쿼리스트링 (Query String Parameters)를 사용해서 전송합니다.⇒ URL에 데이터가 포함되어 전송됩니다.실습method에 GET을 입력해줍니다.HTML복사<form action="#" method="GET">
<label for="message">메세지 입력</label>
<input type="text" id="message" name="message">
<button type="submit">전송</button>
</form>
​ALT⇒ 해도 이전과 달라지는 것이 없는데요?! 👀method를 명시하지 않거나 존재하지 않는 메서드의 경우 기본적으로 GET으로 처리하기 때문입니다!쿼리스트링(Query String Parameter)데이터를 URL주소에 포함시켜 전송하는 방식입니다.? 뒤에 데이터가 위치합니다.& 로 연결된 key=value 형태로 구성됩니다.→ https://www.testsite.com/path1/path2?key=value&key2=value202. 데이터 받기✔️이제 데이터를 받아서 보여주는 것까지 해볼까요?코드스니펫[코드스니펫] data_catch.html[코드스니펫] urls.py에 추가[코드스니펫] views.py에 추가[코드스니펫] Form action 수정[코드스니펫] View에서 데이터 받아서 Context 넘기기[코드스니펫] data_catch.html 수정[코드스니펫] data_catch.html에 하이퍼링크 추가서버에서 데이터 받기클라이언트에서 GET 방식으로 보낸 데이터를 서버에서 받게됩니다.→ 쿼리스트링 방식이러한 데이터를 받는 방식은 사용하는 ‘도구’ 마다 구현방식이 다릅니다.→ 우리는 DJANGO만 잘 알면돼요!실습📢data-catch/ 로 들어오면 아래의 data-catch.html 이 보여지도록 작성해보세요!
⇒ 강의를 멈추고 꼭 직접해주세요!ALTdata_catch.html 만들기[코드스니펫] data_catch.html urls.py에 추가하기[코드스니펫] urls.py에 추가views.py에 추가하기[코드스니펫] views.py에 추가ALTdata_throw.html의 Form action 수정하기⇒ 이제 데이터를 받을 곳이 마련되었으니 이곳으로 데이터를 보내면 됩니다![코드스니펫] Form action 수정ALT그러면 이제는ALTALT🤔뭔가 데이터가 잘 넘어오긴했는데 넘어온 데이터를 받아서 보여주고 싶다는 생각이 드시죠?!
⇒ 데이터를 받아서 (View) → 보여주고 싶다 (Template)⇒ Context !!
View에서 데이터 받아서 Context 넘기기[코드스니펫] View에서 데이터 받아서 Context 넘기기data_catch.html 수정[코드스니펫] data_catch.html 수정ALT💡<a> 태그를 이용해서 조금 더 편하게 해볼까요? 모른다면 이제 찾아보시면 됩니다!페이지끼리 연결[코드스니펫] data_catch.html에 하이퍼링크 추가ALT→ 모든 주소 대신 /data-throw/만 적어줘도 동작합니다!(한 걸음 더) request란?🔥 궁금할 때는 print로 한 번 찍어보세요!ALTrequest는 WSGIRequest클래스의 인스턴스로 요청에 대한 모든 메타데이터가 들어있습니다.request.GET은 QueryDict 타입입니다.타입 == 클래스 ! QueryDict는 Dict를 상속한 클래스로 request.GET, request.POST속성은 모두 QueryDict의 인스턴스입니다.일반적인 dict보다 HTTP특성의 필요한 기능들이 있어 추가적으로 구현한 클래스입니다.💡더 궁금할 때는 문서가 답입니다!!
⇒ 모르는 내용이나 궁금한 내용은 꼭 문서를 통해 찾아보고 알아보세요!📢<요청이 처리되는 과정>요청이 들어오면 DJANGO는 HttpRequest 객체를 생성→ urls에서 지정한 view 함수의 첫번째 인자로 전달 → view는 처리 후, HttpResponse 전달Copyright ⓒ TeamSparta All rights reserved.📌조금 더 어떻게 달라지는지 궁금하시다면,
MDN 공식문서 (https://developer.mozilla.org/ko/)에 들어가보세요!모르는 내용을 검색해서 찾을 수 있어요!', 10),
('DJANGO', '다중 앱과 URL', '[SCC] 다중 앱과 URL[SCC] 파이썬 장고 실무 기초/[SCC] 다중 앱과 URL제작:[SCC] 다중 앱과 URL수업 목표하나의 프로젝트에 여러개의 앱을 구성하고 DJANGO URLs를 활용할 수 있다.목차01. DJANGO URLsURL dispatcher/ 이야기Variable Routing02. Multiple Appsusers 앱 생성Urls 분리하기urls 연결하기url 정리하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO URLs✔️DJANGO URLs에 대해 공부해봅시다!코드스니펫[코드스니펫] urls.pyPython복사path("users/<str:username>/", views.profile
​[코드스니펫] views.pyPython복사def profile(request):
return render(request, "profile.html")
​[코드스니펫] urls.py 정답코드Python복사path("users/<str:username>/", views.profile),
​[코드스니펫] views.py 정답코드Python복사def profile(request, username):
		context = {
"username" : username,
},
return render(request, "profile.html", context)
​[코드스니펫] profile.html 정답코드Python복사{% extends "base.html" %},
{% block content %},
<h1>{{ username },},의 프로필 페이지</h1>
<div>
<h2>username : {{ username },},</h2>
</div>
<a href="/index/">홈으로 돌아가기</a>
{% endblock content %},
​URL dispatcher💡코딩 공부를 하시다가 궁금하신 부분이 생기시면 공식문서를 찾아보시는 것을 추천합니다!URL dispatcher가 무엇인지 공식문서를 한 번 찾아볼까요?(URL dispatcher)ALTDispatcher란 무엇일까요?구글에서 검색해보니 다음과 같은 결과가 나옵니다.ALT캠브리지 사전ALT응급 콜센터에서 상주하는 사람작업을 관리하는 구성요소택배 운송 경로를 계획하는 직원무언가를 목적지로 보내는 주체라고 이해할 수 있겠습니다.저희는 지금 웹을 배우고 있으니 우리 식으로 해석을 해보면 이렇습니다!💡Dispatcher란 들어온 요청을 어디로 보내서 처리할지 정하는 곳!/ 이야기https://www.mycooooolsite.com/https://www.mycooooolsite.com💡이 두개는 다른 겁니다.https://www.mycooooolsite.com/  (디렉토리)https://www.mycooooolsite.com (파일)→ 원래는 이런 의미를 가지고 있는데, 사실 오늘날에는 (사람들이) 같은 것으로 인식하고 있는 경우가 많습니다.트레일링 슬래시(Trailing slash)개념 자체는 URL 뒤에 붙는 슬래시입니다.그런데 이게 우리들에게 자꾸 회자되는 이유는 컴퓨터들 사이에서는 저 두 개는 다른것이기때문입니다!💡어떻게 다를까요?/ 가 붙으면 이건 디렉토리라는 의미를 가집니다./ 가 붙었다 → 아 디렉토리 구나 → 안쪽에서 필요한 파일을 찾고 → 접근/ 가 없다 → 파일이구나 → 접근/ 붙이는게 특정 리소스에 접근하는데 속도측면에서 약~~~~간 더 이득이 있긴한데 큰 차이가 나는 것은 아닙니다.
그래서요?🧐선택의 문제라는 겁니다.우리 서버에서는 그럼 어떤것을 기준으로 처리할지 정하면 되는 문제입니다! about 으로 들어오면 about/ 으로 처리할지about/ 으로 들어오면 about 으로 처리할지→ DJANGO는 기본적으로 1번을 선택했고, 이 옵션은 바꿀 수 있습니다.
그러나 굳이 바꿀 이유가 없기 때문에 그대로 진행하겠습니다!❗만약에 만약에 ~aiden 유저와 tmoon 유저의 프로필 페이지를 위한 url을 구성해볼까요?users/aiden/ → 에이든 페이지users/tmoon/ → 티문 페이지이렇게 하면 좋을 것 같은데? 그죠?구현ALT❓그런데 말입니다 🧐만약 유저가 100명이라면 어떻게 해야할까요?유저의 이름에 따라 각기 다른 path()코드 100줄과… html파일 100개…→ 안해. 못해.→ 음…🧐 강사님! 어차피 앞의 users/경로는 동일하고 뒤에 오는 유저 이름만 바뀌는데 이 걸 활용할 수 있는 방법이 있을까요?바뀌는 부분만 변수로 처리하는 식으로 …users/변수/ 이렇게요!→ 네! 가능합니다😊 지금부터 알려드릴께요~Variable RoutingURL 일부를 변수로 지정하여, 해당 부분에 들어온 값을 view로 넘겨줄 수 있습니다.view에서 변수를 받아서 그 부분에 맞게 처리하도록 할 수 있습니다.→ 하나의 URL에 마음껏 여러 페이지 연결할 수 있겠죠?바로 해보자![코드스니펫] urls.pyPython복사path("users/<str:username>/", views.profile),
​[코드스니펫] views.pyPython복사def profile(request):
return render(request, "profile.html")
​ALT💡VScode 팁!
위에서 아래로 작성한 여러줄의 코드에서 코드순서를 바꾸고 싶을 때가 있죠? 그럴 때 순서를 바꾸고 싶은 코드라인을 클릭해서 커서를 두고 다음과 같이 하면 됩니다!Windows: alt + 위, 아래 방향키 macOS: option + 위, 아래 방향키이런 애들이 가능해요str 기본값/ 빼고 나머지 문자열을 변수로 처리int0 또는 양의 정수를 변수로 처리sluguuidpathView 완성하기ALT이후에는 마음대로 로직을 작성하면 된답니다!해보기variable routing을 이용해서 /users/유저네임/ 으로 들어오면
profile.html 을 사용해서 아래의 페이지가 보여지도록 해주세요.ALT홈 == index 페이지ALT정답![코드스니펫] urls.py 정답코드[코드스니펫] views.py 정답코드[코드스니펫] profile.html 정답코드ALT뭔가 하나씩 만들어져 가는 재미가 느껴지지 않으신가요?👀02. Multiple Apps✔️앞에서 살펴본 것과 같이 새로운 종류의 경로가 추가될 때 users면 users끼리 post면 post끼리 묶어서 관리하는 방법은 없을까요?코드스니펫[코드스니펫] startapp usersBash복사python manage.py startapp users
​[코드스니펫] (기본 세팅)urls.pyPython복사# urls.py 
from DJANGO.urls import path

urlpatterns = [
]
​[코드스니펫] include 코드Python복사from DJANGO.urls.conf import include
​(강의에서 나온 from DJANGO.urls import path,include 처럼 기존 코드에서 include를 추가하는 것도 역시 괜찮습니다.)[코드스니펫] urlPatternsPython복사path("articles/", include("articles.urls")),
path("users/", include("users.urls")),
​[코드스니펫] (users) urls.pyPython복사path("", views.users),
path("profile/<str:username>/", views.profile),
​[코드스니펫] index.htmlPython복사<ul>
<li><a href="{% url ''hello'' %},">Hello</a></li>
<li><a href="{% url ''throw'' %},">Throw</a></li>
</ul> 
​하나의 프로젝트는 여러개의 앱으로 구성됨ALT아 - 불편하다ALT각각의 기능별로 나누어서 App으로 분리하는 것이 좋은 구조입니다.users 앱 생성users 앱을 생성하고 등록해 주세요.[코드스니펫] startappBash복사python manage.py startapp users
​ALTApp이 많아지면 🤔각각의 app안에 views가 생기고 …urls도 복잡해질텐데?→ 지금은 하나의 urls.py만 사용중 → 분리하자 !Urls 분리하기DJANGO가 기본적으로 생성해주지 않기 때문에 직접 생성해주어야합니다.각각의 app 폴더 안쪽에 urls.py 이름으로 파일 생성ALT기본 셋팅 하기[코드스니펫] (기본 세팅) urls.pyPython복사# urls.py 
from DJANGO.urls import path

urlpatterns = [
]
​다른 URLconf 모듈을 포함하기 (include)DJANGO의 urls는 다른 urls를 포함할 수 있습니다.프로젝트의 urls에 include를 통해 우리가 분리한 app의 경로를 포함시켜줍니다.urls 연결하기[코드스니펫] include 코드Python복사from DJANGO.urls.conf import include
​(강의에서 나온 from DJANGO.urls import path,include 처럼 기존 코드에서 include를 추가하는 것도 역시 괜찮습니다.)[코드스니펫] urlPatternsPython복사path("articles/", include("articles.urls")),
path("users/", include("users.urls")),
​ALTinclude되는 urls에는 반드시 urlpatterns 가 필요 (빈 리스트이더라도 있어야합니다!)이제 articles/test/ 로 요청이 들어오면 아래의 흐름을 따르게 됩니다.프로젝트의 urls.py 에서 articles/ 패턴과 일치함을 발견articles 앱의 urls.py로 다음 처리를 이관articles앱의 urls.py에서 test/ 패턴과 일치하는 url 패턴을 탐색일치하면 해당 views로 가서 처리url 정리하기url 옮기기ALT(문제) 현재는 users/users/aiden 으로 접근을 해야합니다.→ url을 수정할 필요가 있습니다.url 수정하기[코드스니펫] (users) urls.pyPython복사path("", views.users),
path("profile/<str:username>/", views.profile),
​ALT서버를 실행해보고 싶죠? 하지만 에러가 날겁니다. 😏→ views도 옮겨줘야겠죠 ?!views 옮기기ALT각 App에 맞게  view를 옮겨줍니다.templates 옮기기users앱에도 templates 디렉토리를 생성하고 필요한 template을 옮겨주자!이렇게👇ALTQ. 만약 지금 hello/ 로 접근하면 어떻게 될까요?ALT💡에러 !  왜?이전에 hello/ 가 지금은 articles/hello/ 로 바뀌었기 때문입니다.이거야 우리가 바꿔주면 되지만 … 이렇게 매번 url을 다 바꿔야한다면?→ 너무 바꿔야할 것이 많아지는데요…→ 어떻게 하고 싶으신가요?→ 뭔가 이름을 지정해서 내용이 바뀌더라도 이름으로 부르도록 하면 좋지 않을까요…? 🤔→ ok !Naming URL Patterns어떠한 URL을 작성할 때 직접 하드코딩 하지 않고 각각의 URL에 ‘이름’을 붙여주는 것을 말합니다.view와 template에서 특정 경로에 대한 의존성을 제거할 수 있습니다. (위와 같은말입니다.)path() 함수의 name 파라미터 사용ALTURL이름 사용하기이제 직접 URL을 하드코딩 하지 않아도 된다! ALT원래는 이렇게 직접 모든 URL을 적었다면ALTALT이제는 URL을 이름으로 참조할 수 있습니다.ALTindex.html에 여러가지 링크를 만들어주자[코드스니펫] index.htmlPython복사<ul>
<li><a href="{% url ''hello'' %},">Hello</a></li>
<li><a href="{% url ''throw'' %},">Throw</a></li>
</ul> 
​ALT다른 페이지에도 필요한곳에 만들어주면 되겠죠 👀', 11),
('DJANGO', 'DJANGO Model', '[SCC] DJANGO Model[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Model제작:[SCC] DJANGO Model수업 목표DJANGO Model에 대해 이해하고 작성할 수 있다.목차01. DJANGO ModelModel데이터베이스(Database)쿼리(Query)스키마(Schema)테이블(Table)데이터베이스 기본 구조Model 작성해보기마이그레이션(Migration)많이 쓰는 필드필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO Model✔️드디어 MTV 중 Model에 대해 이야기 해봅시다!코드스니펫[코드스니펫] models.pyPython복사from DJANGO.db import models

class Article(models.Model):
pass
​[코드스니펫] 필드 추가하기Python복사from DJANGO.db import models


class Article(models.Model):
    title = models.CharField(max_length=50)
    content = models.TextField()
​[코드스니펫] 마이그레이션 생성Python복사python manage.py makemigrations 
​[코드스니펫] 반영되지 않은 마이그레이션 반영Python복사python manage.py migrate
​Model저장할 데이터에 대한 필드와 동작들을 포함한 데이터베이스 구조 (layout)입니다.DJANGO는 Model을 이용해서 데이터를 조작합니다.일반적으로 하나의 Model은 하나의 데이터베이스 테이블을 의미합니다.데이터베이스(Database)잘 정리된 데이터가 모여있는 것입니다.쿼리(Query)데이터베이스를 조작할 수 있는 언어입니다.스키마(Schema)데이터베이스의 구조, 관계 등을 정의한 것입니다.→ 전반적인 명세서라고 할 수 있어요!💡이런 것들이겠죠?사용자 (Users)사용자 ID (User_ID) - 정수 (Integer)이름 (Name) - 문자열 (String)이메일 (Email) - 문자열 (String)주소 (Address) - 문자열 (String)

책 (Books)책 ID (Book_ID) - 정수 (Integer)제목 (Title) - 문자열 (String)저자 (Author) - 문자열 (String)출판사 (Publisher) - 문자열 (String)가격 (Price) - 부동 소수점 (Float)

주문 (Orders)주문 ID (Order_ID) - 정수 (Integer)사용자 ID (User_ID) - 정수 (Integer)책 ID (Book_ID) - 정수 (Integer)주문일 (Order_Date) - 날짜/시간 (Date/Time)수량 (Quantity) - 정수 (Integer)테이블(Table)열(Column) - 속성 / 필드(Field)행(Row) - 데이터 / 레코드(Record) / 튜플(Tuple)조직화된 데이터 요소들의 집합입니다.💡이런것들이겠죠?사용자 (Users)User_IDNameEmailAddress1John Doejohn@example.com123 Main St2Jane Doejane@example.com456 Elm St책 (Books)Book_IDTitleAuthorPublisherPrice101Introduction to DatabasesAlice SmithABC Books$20.00102Data Structures in PythonBob JohnsonXYZ Publishing$25.00주문 (Orders)Order_IDUser_IDBook_IDOrder_DateQuantity20111012024-03-20220221022024-03-221데이터베이스 기본 구조User_IDNameEmailAddress1John Doejohn@example.com123 Main St2Jane Doejane@example.com456 Elm St테이블(Table)기본키, PK(Primary Key)열(Column)행(Row)→ 우리는 이러한 데이터베이스를 Model을 사용해서 구조화 하고 조작할 예정입니다!Model 작성해보기models.py [코드스니펫] models.pymodels.Model을 상속받아서 사용하고자 하는 데이터 스키마를 정의합니다.모든 모델은 models.Model의 서브 클래스로 표현합니다.필드 추가하기→ 우선, 제목과 내용정도만 추가해줄게요.[코드스니펫] 필드 추가하기각각의 필드는 테이블의 컬럼입니다.필드의 타입에 따라 사용하며, 각 필드별로 필요한 옵션들이 존재합니다.공식문서 참고 (DJANGO Fields Types)마이그레이션(Migration)⚠️현재 Python으로 Model 코드는 작성했지만 데이터베이스에는 반영이 안된 상태입니다.⇒ DJANGO는 마이그레이션(migration)을 만들고 이 단위로 데이터베이스에 변경사항을 반영하게 됩니다!마이그레이션 관련 명령어⭐ model에 생긴 변경사항을 마이그레이션으로 만드는 과정[코드스니펫] 마이그레이션 생성⭐ 마이그레이션을 실제로 데이터에 반영해서 동기화 하는 과정[코드스니펫] 반영되지 않은 마이그레이션 반영참고)마이그레이션 목록과 적용여부를 보여주는 명령어Python복사python manage.py showmigration
​해당 마이그레이션이 어떤 sql문을 작성했는지 보여주는 명령어Python복사python manage.py sqlmigrate <app_name> <migration_no> 
​마이그레이션 적용하기Model 변경사항을 마이그레이션으로 생성→ 데이터베이스 수준에서 변경이 필요한 사항[코드스니펫] 마이그레이션 생성ALTALT각각의 앱 별로 migration이 생성됩니다.마이그레이션을 반영[코드스니펫] 반영되지 않은 마이그레이션 반영ALT우리가 작성한 articles의 0001_initial 마이그레이션 적용 (빨간색)나머지는 DJANGO가 여러가지 기능 제공을 위해 생성하는 마이그레이션입니다.데이터베이스 확인하기DJANGO는 기본적으로 sqlite 데이터베이스를 내장하여 사용합니다.개발시에는 이곳을 사용하다가 추후에 변경하는 방식으로 개발합니다.SQLite VSCode Setting.sqlite3 파일을 열어서 편하게 보기위해 설치install 진행ALTcontrol + shift + p (맥은 command)를 눌러서 ‘SQLite: Open Database’ 선택ALT내가 열고 싶은 데이터베이스 파일을 선택ALTALT현재 내가 가지고 있는 테이블 목록들ALT☝또는 여러가지 다른 데이터베이스 매니지먼트 프로그램들을 사용해서 열어도 됩니다! ⇒ DBeaver …많이 쓰는 필드생성일과 수정일💡어떤 테이블이든 많이쓰는 것 중 하나가 생성일과 수정일입니다! 생성일과 수정일에는 DateField 또는 DateTimeField를 사용하면 되지만 매번 직접 값을 넣어주면 불편하겠죠?⇒ 생성일은 그냥 딱 알아서 데이터 들어와서 새로 생성되면 그때 날짜시간 넣어주고,⇒ 수정일은 그냥 딱딱 알아서 데이터 수정되면 그때 날짜시간 반영을 해주기 위해서auto_now_add=True & auto_now=True 사용하기ALT헷갈리지말자 !ALT방금 Model을 수정했죠?💡모델을 수정했으니 마이그레이션 생성하고, 반영해주세요~그런데 이상해요!ALT여러분 이제는 눈을 뜨셔야합니다. 메세지를 못읽으면 개발을 할 수 없어요 😞ALT⇒ 기존에 생성한 데이터들은 어떻게 하겠냐고 묻습니다. 값하나를 주면 그 값을 다 넣는 방식일단 종료하고 model로 돌아가서 기본값 설정하는 방식1번 선택→ 값을 따로 입력하지 않아도 Enter만 치면 지금 시간을 계산해서 넣어주거나 아니면 값을 따로 입력하라고 합니다.ALT→ Enter ALT생성 완료ALT', 12),
('DJANGO', 'DJANGO ORM', '[SCC] DJANGO ORM[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO ORM제작:[SCC] DJANGO ORM수업 목표하나의 프로젝트에 여러개의 앱을 구성하고 DJANGO URLs를 활용할 수 있다.목차01. ORMObject-Relational-Mapping
객체 … 관계형 … 맵핑02. Database APIWhat is database api?02. CRUD with ShellDJANGO ShellCRUD필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. ORM✔️ORM이란 무엇일까요?Object-Relational-Mapping
객체 … 관계형 … 맵핑쉽게말해서 파이썬으로 데이터베이스를 조작할 수 있게 해줍니다.객체 지향 언어에서는 클래스를 이용한 객체로 데이터와 기능을 캡슐화해서 다루고
데이터베이스는 테이블과 행으로 데이터를 저장하고 관리하는데 
이 두가지 사이의 개념적인 간극을 줄인것입니다!(사실 여러분 이런거 중요하지 않잖아요)💡한 줄 요약 : SQL 안쓰고 Python으로 데이터베이스 조작할 수 있습니다.DJANGO ORM만 있는건 아니고 여러 가지가 존재합니다.Python - DJANGO ORM, SQLAlchemy, Tortoise ORM …JAVA - JPA, Hybernate …Node.js - Sequalize …실제로도 많이 사용합니다.  Job 공고를 보면 확인해볼 수 있습니다.ALTALTDJANGO 공고에서는 따로 명시하지 않는다. 왜? DJANGO ORM 쓰니까 ~ALT결국 ORM이 중간에서 고생해 주는 거랍니다.SQL Statement ↔ ORM ↔ Python Object (ORM 고마워 !)ORM 만세 !?모든 기술에는 장단점이 있습니다.💡장점SQL을 잘 알지못해도 DB 조작 가능!SQL을 알아도 기존의 복잡한 쿼리문 작성없이 객체 지향적인 접근 가능!SQL을 잘사용하지 못한다면 ORM이 변환해주는 것이 더 빠름!생산성 말해뭐해!💡단점ORM에서 지원하지 않는 쿼리라면 직접 작성해야함서비스가 커질수록 ORM만으로는 한계가 있을 수 있음매우 효율적인 SQL을 작성하고 싶다면 ORM이 불편할 수 있음→ 현재의 개발은 생산성이 정답인 경우가 많다.02. Database API✔️파이썬에서 데이터 베이스를 사용하려면 어떻게 해야할까요?What is database api?다른말로 database-abstraction API 라고도 합니다.쉽게말해 DJANGO ORM으로 Database API를 사용해서 데이터베이스를 조작하는 것입니다.Manager우리가 모델 클래스를 생성하면 DJANGO는 자동적으로 CRUD 할 수 있는 Database API를 제공합니다.그리고 집사를 한명 붙여주는데 그게 바로 Manager!정식 이름은 DJANGO ORM Manager인데 하는일은 우리가 작성한 모델 클래스를 이용하여 데이터 베이스 쿼리작업을 도와주는 역할을 합니다.우리는 Manager를 이용해서 DJANGO ORM의 Queryset API를 사용하게 될 것입니다.Queryset == ORM을 사용해서 데이터베이스로부터 전달받은 객체입니다.이 매니저의 기본(default)이름은 objects 입니다.기본 형태MyModel.objects.all()Model Class . Manager . QuerysetAPI02. CRUD with Shell✔️DJANGO Shell을 사용해볼까요?코드스니펫[코드스니펫] DJANGO shell[코드스니펫] install DJANGO-extensions[코드스니펫] install ipython[코드스니펫] settings.py 앱 등록[코드스니펫] pip freeze[코드스니펫] DJANGO shell_plus[코드스니펫] 전체 Article 조회하기[코드스니펫] 하나의 Article 생성하기(1)[코드스니펫] 하나의 Article 생성하기(2)[코드스니펫] str 사용하기[코드스니펫] 하나의 Article만 조회하기[코드스니펫] 하나의 Article만 조회하기(예외발생)[코드스니펫] 조건으로 조회하기[코드스니펫] Article 수정하기[코드스니펫] Article 삭제하기DJANGO ShellDJANGO가 제공하는 여러가지 기능을 명령어로 입력해서 실행해볼 수 있는 Shell 환경을 말합니다.그런데 우리가 Python 파일을 실행할 때는 python shell은 python 만 입력하면 되는데 🤔근데 DJANGO는 어떤 파일을 실행해야하지? manage.py 도 결국에는 그 파일자체가 아니라 여러가지 환경을 열어주는 것입니다.즉, DJANGO 프로젝트 환경이 필요합니다!== python manage.py shell 현재 DJANGO 프로젝트 환경을 Shell로 접근할 수 있게 해줍니다.사전 셋팅그냥 Shell을 열면 [코드스니펫] DJANGO shellALT여기서 만약 우리가 작성한 Articles의 Article Model 클래스를 가져오고 싶다면ALTfrom articles.models import Article …모델이 한두개도 아니고 이런 식으로 사용하기는 너무 불편합니다.자동완성도 사용할 수 없습니다.패키지 설치DJANGO-extensions [코드스니펫] install DJANGO-extensionsDJANGO 기본 Shell보다 더 많은 기능이 있는 shell_plus를 제공하고 있습니다.아직 한 가지 설정이 더 필요합니다settings.py 앱 등록[코드스니펫] settings.py 앱 등록⚠️DJANGO_extensions, 처럼 중간에 하이픈(-)이 아닌 언더바(_)로 작성해야한다는 것 주의해주세요!ALT‘DJANGO-extensions’라고 입력하고 안됩니다 ㅠㅠ 하고 질문하시면 안됩니다!!ALTipython[코드스니펫] install ipythonipython은 python 기본 Shell에 여러가지 기능을 더한것입니다.예를 들어 자동완성, 코드 색상 강조와 같은 기능이 있습니다.패키지 설치하면 다음 명령어도 실행시켜 주세요![코드스니펫] pip freeze설치가 끝났으면 실행해보자[코드스니펫] DJANGO shell_plusALT아! 름! 답! 다!ALT이제 셋팅이 끝났으니 여기서 직접 입력해보며 DJANGO ORM을 배워갈겁니다!CRUD우리가 사용하는 서비스의 대부분이 CRUD로 이루어져 있습니다.Create, Read, Update, Delete게시글을 작성하고(Create) 조회하고(Read) 수정하고(Update) 삭제합니다(Delete)대부분의 소프트웨어가 하는일입니다.(1) 전체 Article 조회하기[코드스니펫] 전체 Article 조회하기일단 전체 Article을 조회해볼까요?혹시 아까 설명해드렸던 Database API내용 기억나시나요?! 직접 해볼 때가 왔습니다.기본 형태MyModel.objects.all()Model Class . Manager . QuerysetAPI아직 따로 무언갈 만들지 않았다면 조회결과가 비어있는 게 정상입니다.(2) Article을 생성하는 다른 방법Python복사article = Article(title=''second_title'', content=''my_content'')
article.save()
​(3) 하나의 Article 생성하기[코드스니펫] 하나의 Article 생성하기(1)(4) Article을 생성하는 또 다른 방법[코드스니펫] 하나의 Article 생성하기(2)(참고) __str__ 사용하기[코드스니펫] str 사용하기Article Object 보다 파악하기 쉽습니다.Article Class를 문자열 취급했을 때 처리하는 로직을 작성할 수 있습니다.(5) 모두 조회하기[코드스니펫] 전체 Article 조회하기조회 결과는 Queryset으로 반복가능한 객체 형태입니다.(6) 하나만 조회하기[코드스니펫]  하나의 Article만 조회하기딱 1개의 조회가 필요할 때 사용합니다.조건에 해당하는 객체가 없다면 DoesNotExist 예외를 발생시킴 (터진다는 소리)한 개 이상의 객체가 리턴될 경우도 MulipleObjectReturned 예외를 발생시킴 (터진다는 소리)[코드스니펫]  하나의 Article만 조회하기(예외발생)(7) 조건으로 조회하기[코드스니펫]   조건으로 조회하기lookup과 일치하는 객체를 모두 리턴합니다.조건에 사용되는 매개변수를 lookup 이라고합니다.당연히 굉장히 다양한 lookup을 DJANGO는 제공Bash복사Article.objects.filter(id__gt=2) # 2보다 큰 id
Article.objects.filter(id__in=[1,2,3]) # 1,2,3에 속하는 id
Article.objects.filter(content__contains=''my'') # content에 ''my''가 포함된
...
​공식문서 찾아야죠 ^^ (https://docs.DJANGOproject.com/en/4.2/topics/db/queries/#field-lookups)일치하지 않는다면 빈 쿼리셋을 리턴합니다.(8) 수정하기수정하기는 아래의 단계를 따릅니다.수정할 객체를 조회수정할 내용을 입력수정한 것을 데이터베이스에 반영[코드스니펫]  Article 수정하기(9) 삭제하기[코드스니펫]  Article 삭제하기', 13),
('DJANGO', 'DJANGO MTV 사용하기 (CR)', '[SCC] DJANGO MTV 사용하기 (CR)[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO MTV 사용하기 (CR)제작:[SCC] DJANGO MTV 사용하기 (CR)수업 목표DJANGO Model, View, Template을 모두 사용한 구조를 작성할 수 있다.목차01. DJANGO MTV with CR실습 - 또다시 여러분의 차례입니다!조회새로운 글 작성02. HTTP MethodGET & POST사이트간 요청 위조 CSRF(Cross-Site-Request-Forgery)필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO MTV with CR✔️이제 DJANGO Model + Template + View를 모두 사용해서 프로젝트를 작성해봅시다!코드스니펫[코드스니펫] articles의 urls.py에 추가Python복사path("", views.articles, name="articles"),
​[코드스니펫] articles의 views.py에 추가Python복사def articles(request):
return render(request, "articles.html")
​[코드스니펫] articles의 templates에 articles.html 만들기HTML복사{% extends ''base.html'' %},

{% block content %},
		<h1>Articles</h1>
		
{% endblock content %},
​[코드스니펫] articles의 views.py 변경Python복사from .models import Article
...
def articles(request):
    articles = Article.objects.all()
    context = {
"articles": articles,
},
return render(request, "articles.html", context)
...
​[코드스니펫] articles.html 변경HTML복사{% extends "base.html" %},

{% block content %},
    <h1>Articles</h1>
<ul>
        {% for article in articles %},
            <li>
<div>글 번호 : {{ article.id },},</div>
<div>글 제목 : {{ article.title },},</div>
<div>글 내용 : {{ article.content },},</div>
<br>
</li>
        {% endfor %},
    </ul>

{% endblock content %},
​[코드스니펫] articles의 urls.py에 추가Python복사from DJANGO.urls import path
from . import views

urlpatterns = [
    path("", views.articles, name="articles"),
 path("new/", views.new, name="new"),
path("create/", views.create, name="create"),
    path("hello/", views.hello, name="hello"),
    path("data-throw/", views.data_throw, name="throw"),
    path("data-catch/", views.data_catch, name="catch"),
]
​[코드스니펫] articles의 views.py에 추가Python복사...
def new(request):
return render(request, "new.html")
...
​[코드스니펫] articles의 templates에 new.html 만들기HTML복사{% extends "base.html" %},


{% block content %},
<h1>New Article</h1>
<form action="{% url ''create'' %}," method="GET">
<label for="title">제목</label>
<input type="text" name="title" id="title"><br><br>
<label for="content">내용</label>
<textarea name="content" id="content" cols="30" rows="10"></textarea><br><br>
<button type="submit">저장</button>
</form>


{% endblock content %},

​[코드스니펫] 받은 데이터로 새로운 데이터 생성Python복사def create(request):
# GET 방식으로 전달된 데이터를 받아서
    title = request.GET.get("title")
    content = request.GET.get("content")
# 받은 데이터를 Article 모델을 이용해서 저장
    article = Article(title=title, content=content)
    article.save()
    context = {
"article": article,
},
return render(request, "create.html", context)
​[코드스니펫] create.htmlHTML복사{% extends "base.html" %},

{% block content %},
	<h1>''{{article.title},},'' 작성 완료</h1>
<a href="{% url ''articles'' %},">목록으로</a>
{% endblock content %},
​실습 - 또다시 여러분의 차례입니다!📢/articles/ 로 들어오면 아래의 articles.html 템플릿이 랜더링되어 보이도록 해주세요!ALTurls.py에 추가[코드스니펫] articles의 urls.py에 추가Python복사path("", views.articles, name="articles"),
​views.py에 추가[코드스니펫] articles의 views.py에 추가Python복사def articles(request):
return render(request, "articles.html")
​articles.html[코드스니펫] articles의 templates에 articles.htmlHTML복사{% extends ''base.html'' %},

{% block content %},
		<h1>Articles</h1>
		
{% endblock content %},
​ALT조회📢데이터베이스에서 모든 아티클을 조회해서 /articles/에서 볼 수 있도록 해봅시다!→ 👀 한 번 도전해보고 따라오는걸 추천해요! ALTview에서 model에 접근해 모든 아티클 가져오기

view에서 가져온 아티클을 template으로 넘기기[코드스니펫] articles의 views.py 변경Python복사from .models import Article
...
def articles(request):
    articles = Article.objects.all()
    context = {
"articles": articles,
},
return render(request, "articles.html", context)
...
​template에서 넘어온 context 보여주기[코드스니펫] articles.html 변경

HTML복사{% extends "base.html" %},

{% block content %},
    <h1>Articles</h1>
<ul>
        {% for article in articles %},
            <li>
<div>글 번호 : {{ article.id },},</div>
<div>글 제목 : {{ article.title },},</div>
<div>글 내용 : {{ article.content },},</div>
<br>
</li>
        {% endfor %},
    </ul>

{% endblock content %},
​view에서 템플릿을 랜더링해서 리턴새로운 글 작성☝새로운 글을 쓰고싶다면, shell을 열고 작성하면 되지만 그러면 너무 불편하겠죠?클라이언트에서 서버에 데이터를 전송하여 저장하면 편해요!⇒ form을 이용하면 됩니다!📢/articles/new/로 들어오면 아래의 화면이 보이도록 작성해 보세요!
→ 작성된 form을 보내는곳은 /articles/create/입니다.ALT articles의 urls.py에 추가[코드스니펫] articles의 urls.py에 추가

articles의 views.py에 추가[코드스니펫] articles의 views.py에 추가

articles의 templates에 new.html 만들기[코드스니펫] articles의 templates에 new.html 만들기

📢넘어온 데이터 처리하기 해보실까요?ALTcreate view에서 데이터 넘겨받기넘겨받은 데이터로 새로운 데이터 생성하기[코드스니펫] 받은 데이터로 새로운 데이터 생성글 작성이 잘되었다는 화면(create.html) 보여주기[코드스니펫] create.html🤔만약 최신순으로 보여주고 싶다면 어떻게 하면 좋을까요?created_at 을 사용하거나 pk를 사용하여 정렬을 해주면 됩니다!ALT→ pk(primary key)는 기본키로 id와 동일해요!02. HTTP Method✔️POST 방식에 대해 좀 더 알아볼까요?GET & POSTGET말그래도 원하는 리소스를 가져오는데에 사용합니다.생성할 때도 사용할 수 있지만(로직상 문제는 없지만), 리소스 조회용으로 사용하자는 개발세계에서의 약속입니다.DB에 변화를 주지 않는 요청임을 의미합니다.Read에 해당합니다.POST서버로 데이터를 전송할 때 사용합니다.특정 리소스를 생성 혹은 수정하기 위해 사용합니다.DB에 변화를 주는 요청임을 의미합니다.Create, Update, Delete에 해당합니다.그냥 한번 해볼까요?articles/templates/new.htmlALT⇒  일단, 여기서 GET만 POST로 바꿔보면 어떻게 될까요?ALT⚠️ 오류가 발생합니다!사이트간 요청 위조 CSRF(Cross-Site-Request-Forgery)CSRF(Cross-Site-Request-Forgery)유저가 실수로 해커가 작성한 로직을 따라 특정 웹페이지에 수정/삭제등의 요청을 보내게 되는 것입니다.→ 아주나쁜사이트.com → 요청 → 좋은사이트.com → 좋은 사이트 서버 입장에서는 어디서 온 요청인지 구분이 필요해요.
⇒ 즉, 정말 유저가 의도한 요청인지 검증이 필요합니다!🤔Q) Https 쓰면 막을 수 있지 않아요?아닙니다 ! CSRF 공격은 인증이 된 상태에서 해커의 의도대로 서버에 요청을 보내게 되는 것으로 HTTPS가 데이터를 암호화하고 중간에서의 공격을 방지하는 것과는 다른 맥락에서 발생합니다.즉, 이미 유저의 브라우저에서 인증된 요청을 전송하는것으로 추가적인 보안 조치가 필요합니다.CSRF Token을 사용해서 막을 수 있습니다.유저가 서버에 요청을 보낼 때 함께 제공되는 특별한 토큰 값으로, 이 토큰은 사용자의 세션과 연결되어 있습니다. 요청이 전송될 때, 함께 제출되며 서버는 요청을 받을 때 이 토큰을 검증하여 요청이 유효한지 확인하는 방식으로 CSRF을 방지합니다.쉽게말해 서로 알아볼 수 있는 임의의 비밀번호를 만들어서 주고 받는다고 생각해주세요!일반적으로 GET을 제외한 데이터를 변경하는 Method에 적용합니다.→ 세션에 대해서는 뒤에서 조금 더 살펴볼 예정이에요! 👀DJANGO는 모든게 준비되어 있습니다!DJANGO에서는 쉽게 CSRF Token 방식을 구현할 수 있게 template tag로 제공합니다.ALT👟(한 걸음 더) 이것을 적는 것만으로 어떻게 동작하는 걸까요?⇒ settings.py의 미들웨어를 봐주세요!ALTDJANGO야 너는 다 계획이 있구나 !ALTPOST 방식으로 데이터 주고 받기new.htmlHTML복사{% extends "base.html" %},


{% block content %},
<h1>New Article</h1>
<form action="{% url ''create'' %}," method="POST">
    {% csrf_token %},
    <label for="title">제목</label>
<input type="text" name="title" id="title"><br><br>
<label for="content">내용</label>
<textarea name="content" id="content" cols="30" rows="10"></textarea><br><br>
<button type="submit">저장</button>
</form>


{% endblock content %},

​articles/views.pyPython복사...
def create(request):
# POST 방식으로 전달된 데이터를 받아서
    title = request.POST.get("title")
    content = request.POST.get("content")
# 받은 데이터를 Article 모델을 이용해서 저장
    article = Article(title=title, content=content)
    article.save()
    context = {
"article": article,
},
return render(request, "create.html", context)
...
​POST 방식 vs GET 방식HEADERHTTP 전송에 필요한 모든 부가정보를 담고있는 부분으로, 메시지 크기, 압축, 인증, 요청 클라이언트(웹 브라우저) 정보, 서버 애플리케이션 정보, 캐시 관리 정보 등등 을 포함하고 있습니다.BODY실제 전송할 데이터가 담겨있는 부분으로, 데이터가 없다면 비어있게 됩니다.HTTP Request📎GET /url/ HTTP1.1HOST: aidenlim.dev…(HEADER)(공백)… (BODY)…HTTP Response📎HTTP1.1 200 OKDate: ….…(HEADER)(공백){ status:200, data: “하잉” },…(BODY)📌세 줄 요약 GET은 데이터를 URL에 담아보내고 POST는 BODY에 담아 보내요!따라서 GET은 데이터 전송에 한계가 있으나, POST는 그렇지 않아요!POST방식으로 데이터를 전송할 때는 CSRF Token이 필요해요!실제로 보면ALTCSRF 토큰이 SET 되어 있는채로 보내게 됩니다!ALT', 14),
('DJANGO', 'DJANGO MTV 사용하기 (RUD)', '[SCC] DJANGO MTV 사용하기 (RUD)[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO MTV 사용하기 (RUD)제작:[SCC] DJANGO MTV 사용하기 (RUD)수업 목표DJANGO Model, View, Template을 모두 사용한 구조를 작성할 수 있다.목차01. DJANGO MTV with RUD지금 생각해보면상세페이지 조회하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO MTV with RUD✔️DJANGO MTV with RUD코드스니펫[코드스니펫] (게시글 목록 페이지 리다이렉션) articles/views.pyPython복사from DJANGO.shortcuts import render, redirect

...
def create(request):
  title = request.POST.get("title")
  content = request.POST.get("content")
  article = Article(title=title, content=content)
  article.save()
return redirect("articles")
​[코드스니펫] (detail) articles/urls.pyPython복사from DJANGO.urls import path
from . import views

urlpatterns = [
    path("", views.articles, name="articles"),
path("<int:pk>/", views.article_detail, name="article_detail"),
    path("new/", views.new, name="new"),
    path("create/", views.create, name="create"),
...
]
​[코드스니펫] (detail) articles/views.pyPython복사def article_detail(request, pk):
  article = Article.objects.get(pk=pk)
  context = {
"article": article,
},
return render(request, "article_detail.html", context)
​[코드스니펫] articles/templates/article_detail.htmlPython복사{% extends "base.html" %},
{% block content %},
<h2>글 상세 페이지</h2>
<p>제목: {{ article.title },},</p>
<p>내용: {{ article.content },},</p>
<p>작성일시: {{ article.created_at },},</p>
<p>수정일시: {{ article.updated_at },},</p>
<a href="{% url ''articles'' %},">목록 보기</a>
{% endblock content %},
​[코드스니펫] (글 상세 페이지 리다이렉션) articles/views.pyPython복사def create(request):
	title = request.POST.get("title")
	content = request.POST.get("content")
	article = Article(title=title, content=content)
	article.save()
return redirect("article_detail", article.id)
​[코드스니펫] articles/articles.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>Articles</h1>
 <a href="{% url ''new'' %},">새 글 작성</a>
<ul>
{% for article in articles %},
<li>
<a href="{% url ''article_detail'' article.id %},">
<div>[{{ article.id },},] {{ article.title },},</div>
</a>
<br>
</li>
{% endfor %},
</ul>
{% endblock content %},
​[코드스니펫] (게시글 목록 링크) articles/articles_detail.htmlPython복사<a href="{% url ''articles'' %},">목록 보기</a>
​[코드스니펫] (delete) articles/urls.pyPython복사path("<int:pk>/delete/", views.delete, name="delete"),
​[코드스니펫] (delete) articles/views.pyPython복사def delete(request, pk):
  article = Article.objects.get(pk=pk)
  article.delete()
return redirect("articles")
​[코드스니펫] (delete) articles/detail.htmlPython복사{% extends "base.html" %},
{% block content %},
<h2>글 상세 페이지</h2>
<p>제목: {{ article.title },},</p>
<p>내용: {{ article.content },},</p>
<p>작성일시: {{ article.created_at },},</p>
<p>수정일시: {{ article.updated_at },},</p>
<a href="{% url ''articles'' %},"><button>목록 보기</button></a>
<hr>
<form action="{% url ''delete'' article.pk %}," method="POST">
{% csrf_token %},
<input type="submit" value="글삭제">
</form>
{% endblock content %},
​[코드스니펫] (POST인 경우에만 삭제)articles/views.pyPython복사def delete(request, pk):
  article = Article.objects.get(pk=pk)
if request.method == "POST":
      article.delete()
return redirect("articles")
return redirect("article_detail", article.pk)
​[코드스니펫] (edit) articles/urls.pyPython복사path("<int:pk>/edit", views.edit, name="edit"),
​[코드스니펫] (edit) articles/views.pyPython복사...
def edit(request, pk):
	article = Article.objects.get(pk=pk)
	context = {
"article": article,
},
return render(request, "edit.html", context)
...
​[코드스니펫] articles/templates/edit.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>Update Article</h1>
<form action="{% url ''update'' article.pk %}," method="POST">
{% csrf_token %},
<label for="title">제목</label>
<input type="text" name="title" id="title" value={{ article.title },},><br><br>
<label for="content">내용</label>
<textarea name="content" id="content" cols="30" rows="10">{{ article.content },},</textarea><br><br>
<button type="submit">저장</button>
</form>
{% endblock content %},

​[코드스니펫] (update) articles/urls.pyPython복사path("<int:pk>/update/", views.update, name="update"),
​[코드스니펫] (update) articles/views.pyPython복사...
def update(request, pk):
  article = Article.objects.get(pk=pk)
  article.title = request.POST.get("title")
  article.content = request.POST.get("content")
  article.save()
return redirect("article_detail", article.pk)
...
​[코드스니펫] (update) detail.htmlPython복사<a href="{% url ''edit'' article.pk %},"><button>글수정</button></a>
​지금 생각해보면ALT보통 글작성하면 이화면이 나오지는 않죠?글을 작성한 뒤 글 목록 페이지를 보여주도록 수정해볼까요?아 ! 그러면 /create/ 경로에서 create.html 을 랜더링하는게 아니라 articles.html 을 랜더링하면 되지! 헤헤Python복사def create(request):
    title = request.POST.get("title")
    content = request.POST.get("content")

    article = Article(title=title, content=content)
    article.save()
    context = {
"article": article,
},
return render(request, "articles.html", context)
​이렇게 하면 되겠죠?그 결과ALT…. ?글목록 어디갔지?url은 왜 /articles/create/ 지?→ html만 다른 템플릿으로 랜더링 했을뿐, 실제로 url이 이동해서 GET 요청을 보낸 것이 아닙니다!redirect 사용하기redirect는 지정한 URL로 되돌리는 것을 말합니다.우리가 웹 사이트를 이용하면서 많이 봐왔던 동작 방식입니다.[코드스니펫] (글 목록페이지 리다이렉션)articles/views.pyPython복사from DJANGO.shortcuts import render, redirect

...
def create(request):
  title = request.POST.get("title")
  content = request.POST.get("content")
  article = Article(title=title, content=content)
  article.save()
return redirect("articles")
​💡PRG 패턴
이러한 패턴을 PRG(Post-Redirect-Get)패턴이라고 합니다. 
POST요청을 서버에서 처리하고 서버에서는 다른 주소로 Redirect하도록 응답하고 브라우저는 GET방식으로 서버를 호출하여 사용자의 요청이 반영된 것을 보여줍니다.
 게시글 작성후 제출 버튼을 눌렀을 때 화면이 이동되지 않는다면 제출 버튼을 여러번 누를 수가 있겠죠? 그러면 중복된 게시글이 작성될 수 있습니다. 
PRG패턴을 사용하면 반복적인 POST호출을 막을 수 있고 사용자의 입장에서도 처리가 끝나고 처음 단계로 돌아간다는 느낌을 주게 됩니다.상세페이지 조회하기지금까지 우리가 설계한 URL구조는 이렇습니다./articles/ → 전체 글 목록 페이지/articles/new/ → 글 작성 페이지/articles/create/ → 실제 글 추가 로직→ 뭔가 허전하지 않으신가요? 게시글을 생성했다면?? 게시글을 클릭해서 읽어볼 수도 있어야겠죠? ☝️→  맞습니다! 글 상세페이지를 위한 URL을 추가해봅시다!구현하기[코드스니펫] (detail) articles/urls.py[코드스니펫] (detail) articles/views.py[코드스니펫] articles/templates/article_detail.html추가 작업자 이렇게 해서 상세페이지도 불러올 수 있게 되었습니다.저희는 리다이렉트도 배웠고 게시글 상세페이지URL도 설계했으니 게시글 작성후 상세페이지로 리다이렉트시키는 걸 구현해봅시다.[코드스니펫] (글 상세 페이지 리다이렉션) articles/views.py편의성 업데이트프로젝트 편의성 업데이트를 해볼까요?프로젝트에서 불편한 점을 찾아봅시다.새로운 글을 작성하려면 브라우저 주소창에 /new/경로를 입력해서 작성해야된다. 게시글 작성페이지에서 게시글 목록 페이지로 이동할 수 있는 링크가 있으면 좋겠다.본문이 바로 보인다.(지금은 본문이 짧지만 본문이 500줄, 1000줄 정도 되면 다른 게시물을 보기가 힘들 것 같네요 😮‍💨)[코드스니펫] articles/articles.html[코드스니펫] (게시글 목록 링크)articles/new.html💡  편의성 업데이트글 작성 링크 만들기 ✅게시글 작성 페이지에 게시글 목록 페이지로 이동할 수 있는 링크 만들기 ✅글 제목만 보여주고 글제목을 클릭하면 상세페이지로 이동하기 ✅다른 편의성은 이제 여러분도 할 수 있겠죠?글 삭제하기게시글 삭제도 구현해봅시다.구현글 삭제 로직을 진행하는 url 만들기글 삭제하는 view 만들기삭제하고자 하는 글 가져오기글 삭제삭제한다음 이동할곳으로 redirect글 삭제 버튼 만들어주기한 번 해보고 눌러보면 좋겠죠? 👀[코드스니펫] (delete)articles/urls.py[코드스니펫] (delete)articles/views.py삭제 버튼 만들기삭제라는 것도 결국에는 데이터베이스를 조작하는 요청 !따라서 → POST 방식으로 요청해야함→ form 사용[코드스니펫] (delete)articles/detail.html💡엇 그런데 말입니다?127.0.0.1:8000/articles/3/delete/ 를 직접 입력해서 들어가면 어떻게 될까요?→ 삭.제.된.다→ 왜? → 로직에 이상이 없으니까 ! 위 URL로 GET 요청이 들어오면view에서 처리하니까삭제된다이렇게 되면 안되겠죠? 수정해봅시다!요청방식이 POST인 경우만 삭제하도록 수정[코드스니펫] (POST인 경우에만 삭제)articles/views.py글 수정하기글을 수정하는 로직을 생각해 봅시다.글 수정하는 url 만들기수정할 글을 보여주는 url글 수정을 처리할 url글 수정하는 로직을 수행하는 view 만들기수정할 글을 보여주는 view글 수정을 처리하는 view글 수정을 수행하는 template 만들기글 수정 버튼 만들기해보고 눌러보시면 역시 좋겠죠 !💡전체 흐름글 수정하는 url 만들기수정할 글을 보여주는 url (articles/<pk>/edit/)글 수정을 처리할 url(articles/<pk>/update/)글 수정하는 로직을 수행하는 view 만들기수정할 글을 보여주는 view (edit view)글 수정을 처리하는 view (update view)글 수정을 수행하는 template 만들기 (edit.html)글 수정 버튼 만들기 → detail 페이지에 만들어주기[코드스니펫] (edit) articles/urls.py[코드스니펫] (edit) articles/views.py[코드스니펫] articles/templates/edit.html[코드스니펫] (update) articles/urls.py[코드스니펫] (update) articles/views.py[코드스니펫] (update) detail.html', 15),
('DJANGO', 'DJANGO Form', '[SCC] DJANGO Form[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Form제작:[SCC] DJANGO Form수업 목표DJANGO가 제공해주는 Form Class에 대해 이해하고 사용할 수 있다.목차01. DJANGO Form Class유저는 사악하다?!1. Form 선언하기2. Form 적용하기02. DJANGO Model FormDJANGO ModelForm ClassModel을 통해서 Form Class를 만드는 방식 DJANGO Model Form이 제공해주는 여러 편의성view에서 DJANGO ModelForm 사용하기new - create 수정하기구현하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO Form Class✔️우리의 반복 작업을 줄여줄 DJANGO Form Class에 대해 배워볼까요?코드스니펫[코드스니펫] articles/forms.pyPython복사from DJANGO import forms


class ArticleForm(forms.Form):
    title = forms.CharField(max_length=10)
    content = forms.CharField()
​[코드스니펫] articles/new.htmlHTML복사...
{{ form.as_p },},
...
​[코드스니펫] articles/views.pyPython복사from.forms import ArticleForm
...
def new(request):
	form = ArticleForm()
	context = {
"form": form,
},
return render(request, "new.html", context)
...
​[코드스니펫] articles/forms.py (choice field)Python복사from DJANGO import forms


class ArticleForm(forms.Form):
# 앞은 데이터베이스에 저장될 값, 뒤는 사용자에게 보여질 값
GENRE_CHOICES = [
("technology", "Technology"),
("life", "Life"),
("hobby", "Hobby"),
]

    title = forms.CharField(max_length=10)
    content = forms.CharField(widget=forms.Textarea)
    genre = forms.ChoiceField(choices=GENRE_CHOICES)

​유저는 사악하다?!😜우리도 유저니까, 아시죠 그마음?숫자만 입력하세요: 히히히히히
⇒ 숫자만 입력하라고 되어있지만, 꼭 다른 형식으로 입력하시는 분들이 있습니다.그렇기 때문에, 유저가 입력하는 데이터는 반드시 유효성 검사가 필요합니다!⇒ 그러면 form도 작성해야지, view도 작성해야지, 유효성 검사도 해야지      이 과정에서 중복되는 코드도 많겠죠?DJANGO는 일부 반복되는 작업과 코드를 줄일 수 있는 DJANGO form을 제공합니다.→ 하지만 항상 DJANGO Form을 사용할 필요는 없어요!→ 직접 구현한 Form + View로직이 필요하다면 사용하지 않아도 괜찮아요!바로 해봅시다!1. Form 선언하기articles/forms.py[코드스니펫] articles/forms.pyPython복사from DJANGO import forms


class ArticleForm(forms.Form):
    title = forms.CharField(max_length=10)
    content = forms.CharField()
​마치 Model 선언과 비슷하게 내가 이 Form에서 입력받고자 하는 데이터에 대한 명세를 작성합니다.→ 형식이나 속성도 일부 Model과 비슷해요!2. Form 적용하기새 글 작성에 적용하기 (new)articles/new.html[코드스니펫] articles/new.html HTML복사...
{{ form.as_p },},
...
​ALT오우, 심플하죠?ALTtemplate에서 변수를 사용했다 == view에서 넘겨줬다!articles/views.py[코드스니펫] articles/views.pyPython복사from.forms import ArticleForm
...
def new(request):
	form = ArticleForm()
	context = {
"form": form,
},
return render(request, "new.html", context)
...
​ALTALTForm rendering options공식문서https://docs.DJANGOproject.com/en/4.2/topics/forms/#form-rendering-optionslabel과 input을 랜더링하는것에 대한 옵션as_div : <div>로 감싸져서 렌더링됩니다.as_p : <p>로 감싸져서 렌더링됩니다.Form Widget공식문서https://docs.DJANGOproject.com/en/4.2/topics/forms/#widgets웹 페이지에서 Form Input 요소가 어떻게 렌더링 되어서 보여질지 정의합니다.Form Fields에 할당해서 사용합니다.=> <input type=”text”> 에 썼던 거예요!!사용해보기articles/forms.py (text field)ALTALTarticles/forms.py (choice field)[코드스니펫] articles/forms.py (choice field)Python복사from DJANGO import forms


class ArticleForm(forms.Form):
# 앞은 데이터베이스에 저장될 값, 뒤는 사용자에게 보여질 값
GENRE_CHOICES = [
("technology", "Technology"),
("life", "Life"),
("hobby", "Hobby"),
]

    title = forms.CharField(max_length=10)
    content = forms.CharField(widget=forms.Textarea)
    genre = forms.ChoiceField(choices=GENRE_CHOICES)

​ALT02. DJANGO Model Form✔️알아서 Model을 참조해 Form을 만들어주는 ModelForm Class에 대해 알아볼까요?코드스니펫[코드스니펫] articles/forms.pyPython복사from DJANGO import forms

from articles.models import Article


class ArticleForm(forms.ModelForm):
class Meta:
        model = Article
        fields = "__all__"
# exclude = ["title"]

​[코드스니펫] articles/views.pyPython복사...
def create(request):
  form = ArticleForm(request.POST) # form에 request.POST에 있는 데이터 채워
if form.is_valid(): # form 형식에 맞으면
      article = form.save() # 저장하고 해당 객체 반환 
return redirect("article_detail", article.id)
return redirect("new")
...
이게 가능한 이유? Model을 알고 있기 때문 !ALT​[코드스니펫] articles/views.py_new와 create 수정Python복사def create(request):
if request.method == "POST":
      form = ArticleForm(request.POST)
if form.is_valid():
          article = form.save()
return redirect("article_detail", article.id)
else:
      form = ArticleForm()

  context = {"form": form},
return render(request, "create.html", context)
처음부터 이렇게 코딩할 수 있는 사람은 없어요. 구조에 익숙해지는 것이 필요해요.ALT​[코드스니펫] update view 함수Python복사def update(request, pk):
    article = Article.objects.get(pk=pk)
if request.method == "POST":
        form = ArticleForm(request.POST, instance=article)
if form.is_valid():
            article = form.save()
return redirect("article_detail", article.pk)
else:
        form = ArticleForm(instance=article)
    context = {
"form": form,
"article": article,
},
return render(request, "update.html", context)
​DJANGO ModelForm Class🤔그런데 DJANGO Form 사용하다보니까 Model과 너무 유사하게 쓰게 된다는 생각이 드시죠? 그러면 DJANGO가 알아서 Model을 참조해 Model Field를 보고 Form을 만들어주면 더 좋을 것 같지않나요!?공식문서
https://docs.DJANGOproject.com/en/4.2/topics/forms/modelforms/#modelformModel을 통해서 Form Class를 만드는 방식 articles/forms.py[코드스니펫] articles/forms.pyPython복사from DJANGO import forms

from articles.models import Article


class ArticleForm(forms.ModelForm):
class Meta:
        model = Article
        fields = "__all__"
# exclude = ["title"]

​ModelForm이 사용할 데이터를 Meta 클래스에 명시합니다.fields 항목에 내가 form으로 만들고 싶은 항목들을 지정할 수 있습니다.DJANGO Model Form이 제공해주는 여러 편의성DJANGO의 Form은 기본적인 유효성 검사 등을 처리합니다.view에서 DJANGO ModelForm 사용하기articles/views.py[코드스니펫] articles/views.pyPython복사...
def create(request):
  form = ArticleForm(request.POST) # form에 request.POST에 있는 데이터 채워
if form.is_valid(): # form 형식에 맞으면
      article = form.save() # 저장하고 해당 객체 반환 
return redirect("article_detail", article.id)
return redirect("new")
...
이게 가능한 이유? Model을 알고 있기 때문 !ALT​🤔조금 더 생각해보기현재의 new 함수와 create 함수가 많이 흡사해요!Python복사def new(request):
    form = ArticleForm()
    context = {
"form": form,
},
return render(request, "new.html", context)
​⇒ 그냥 create 함수 하나로 처리할 수 없을까요?GET으로 들어오면 비어있는 Form 보여주고, POST로 들어오면 데이터 채워서 보낸거니까 새로운 article 생성하면 되지 않을까요?⇒ 그렇게 해도 됩니다!!new - create 수정하기[코드스니펫] articles/views.py_new와 create 수정Python복사def create(request):
if request.method == "POST":
      form = ArticleForm(request.POST)
if form.is_valid():
          article = form.save()
return redirect("article_detail", article.id)
else:
      form = ArticleForm()

  context = {"form": form},
return render(request, "create.html", context)
처음부터 이렇게 코딩할 수 있는 사람은 없어요. 구조에 익숙해지는 것이 필요해요.ALT​이제 new 라는 구조가 필요없습니다!new view 함수 지우기new url path 지우기new.html을 create.html 로 변경 Python복사{% extends "base.html" %},
{% block content %},
<h1>New Article</h1>
<form action="{% url ''create'' %}," method="POST">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">저장</button>
</form>
{% endblock content %},
create.html (전 new.html)ALT​articles.html 에서 새 글 작성을 create 로 변경ALTedit - update 수정하기edit과 update도 마찬가지로 아래의 로직으로 처리가 가능GET으로 수정하기에 요청이 들어오면, 데이터 채운 Form을 랜더링해서 보여줘요!POST로 수정하기에 요청이 들어오면, 새로운 데이터가 들어오는거니까
수정으로 처리해요!구현하기update view 함수[코드스니펫] update view 함수Python복사def update(request, pk):
    article = Article.objects.get(pk=pk)
if request.method == "POST":
        form = ArticleForm(request.POST, instance=article)
if form.is_valid():
            article = form.save()
return redirect("article_detail", article.pk)
else:
        form = ArticleForm(instance=article)
    context = {
"form": form,
"article": article,
},
return render(request, "update.html", context)
​→ Model Form은 instance라는 속성에 값이 있으면 해당 instance를 수정하고
값이 없으면 새로 생성하는 로직을 수행합니다.마찬가지로 이제 edit 구조가 필요없습니다.edit view를 지우기edit url path 지우기edit.html을 update.html로 변경Python복사{% extends "base.html" %},
{% block content %},
<h1>Update Article</h1>
<form action="{% url ''update'' article.pk %}," method="POST">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">수정</button>
</form>
<a href="{% url ''article_detail'' article.pk %},">이전으로</a>
{% endblock content %},
update.html (전 edit.html)ㅇALT​article_detail.html 에서 글 수정 버튼 변경→ 기존 edit이었던 부분을 update 로 수정합니다.ALT', 16),
('DJANGO', 'URL Namespace', '[SCC] URL Namespace[SCC] 파이썬 장고 실무 기초/[SCC] URL Namespace제작:[SCC] URL Namespace수업 목표DJANGO의 URL namespace와 templates 구조를 이해하고 적용할 수 있다.목차01. URL Namespace우리는 현재URL Namespace에러 발생02. Templates 구조현재 우리는Templates Namespace 만들어주기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. URL Namespace✔️서로 다른 앱에서 똑같은 url이 있다면 어떻게 될까요?우리는 현재🤔articles, users 두개의 앱을 가지고 있는데, 만약 articles/urls.py에도 hello/  url이 있고, users/urls.py에도 hello/가 있다면 어떻게 될까요?articles/urls.pyPython복사from DJANGO.urls import path
from . import views

urlpatterns = [
...
    path("hello/", views.hello, name="hello"),
...
]
​users/urls.pyPython복사from DJANGO.urls import path
from . import views

urlpatterns = [
...
    path("hello/", views.hello, name="hello"),
...
]
​😗hello/는 동일하지만 하나는 articles/hello/, 다른 하나는 uesrs/hello/라서 다른데 이 정도는 구분하지 않을까요?그런데 만약 …HTML복사{% url ''hello'' %}, # 어디로 가죠?

redirect(''hello'') # 어디로 가야할까요?
​⇒ 그러니까 url namespce를 적용해봅시다!URL NamespaceDJANGO는 서로 다른 앱에서 동일한 URL Name을 사용하는 경우, 고유하게 구분할 수 있도록 namespace를 지원합니다.Python복사from DJANGO.urls import path
from . import views

app_name = "articles"

urlpatterns = [
...
    path("hello/", views.hello, name="hello"),
...
]

​url에 이름공간을 만들어주고 나면, namespace:url_name형태로 사용합니다.Python복사{% url ''articles:hello'' %},

redirect(''articles:hello'')
​에러 발생이전의 형태로 사용하면 에러가 발생합니다.ALT수정하기articlesALT이 url들의 Name을 참조하고 있는 모든 곳들을 수정해야 합니다.
→ 다음 프로젝트 만들 때는 처음부터 app_name을 지정하고 만들면 좋겠죠?Python복사{% url ''create'' %}, -> {% url ''articles:create'' %},

redirect(''create'') -> redirect(''articles:create'')
​usersALTPython복사{% url ''profile'' %}, -> {% url ''users:profile'' %},

redirect(''profile'') -> redirect(''users:profile'')
​02. Templates 구조✔️이제 Templates 구조에 대해서 배워봅시다!현재 우리는"index.html"만 적어주면 DJANGO가 알아서 찾아옵니다.ALT만약, users앱에도 index.html이 있고 articles앱에도 index.html 이 있다면 어떻게 될까요?HTML복사{% extends "base.html" %},


{% block content %},
    <h1>여기는 Users App의 INDEX</h1>
{% endblock %},
users/templates/index.htmlALT​/index/로 들어가보면,ALT⇒ 오, DJANGO가 똑똑하게 잘 가져오고 있는데요?!그런데 이렇게 바꾸면 어떻게 될까요?ALT다시 /index/로 들어가보면,ALT⇒ 즉, DJANGO는 Apps를 하나씩 돌면서 App 안에 templates가 있으면 들어가서 이름과 일치하는 템플릿을 꺼내오는 로직을 반복하는 것입니다!→ 그럼 매번 우리가 App 순서를 신경쓰면서 작업해야 할까요? 😭😭Templates Namespace 만들어주기<app_name>/templates/<app_name>으로 구조 만들기ALTusers도 마찬가지ALT→ 그리고 이제부터 템플릿을 사용할 때는 <app_name>/template.html 으로 사용하면 됩니다!ALT💡이제 다음 프로젝트부터는 처음부터 <app_name>/templates/<app_name>으로 구조를 잡고하면 좋겠죠?', 17),
('DJANGO', 'DJANGO Auth', '[SCC] DJANGO Auth[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Auth제작:[SCC] DJANGO Auth수업 목표Auth 로직을 이해하고 DJANGO를 활용해서 작성할 수 있다.목차01. AuthAuth란?02. 쿠키(cookie)와 세션(session)HTTP쿠키(Cookie) 🍪조금은 무서운(?) 이야기세션(Session)DJANGO의 Session 과 Auth03. DJANGO의 Authentication System로그인 구현하기사용해보자HTTP 요청을 처리하는 다양한 방법필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드18_DJANGO Auth.zip52.7KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. Auth✔️Auth란 무엇일까요?Auth란?웹 개발에 빼놓을 수 없는게 바로 Auth입니다!→ 당연히 DJANGO도 제공하고 있습니다. 🙂settings.py를 살펴봅시다.ALTDJANGO.contrib.auth → 인증 핵심 로직과 관련 기본 모델DJANGO.contrib.contenttypes → 사용자의 모델과 권한을 연결💡아, 그런가보다~ 하고 넘어가도 좋습니다.인증(Authentication)과 권한(Authorization)을 합쳐서 Auth라고 대개 인증시스템이라고 명명합니다.인증(Authentication) : 내가 누구인지를 입증하는 것권한(Authorization) : 수행할 수 있는 자격 여부02. 쿠키(cookie)와 세션(session)✔️쿠키(cookie)와 세션(session)에 대해 알아봅시다!HTTPHTTP 이야기가 계속 나오는 이유웹은 HTTP 방식을 사용해서 통신을 주고받고 있기때문입니다. (웹에서의 데이터 교환의 기초)💡모든것을 한 번에 알려고 하지말아요, 하나씩 필요할 때마다 학습해도 충분합니다!HTTP 특징비연결지향 (Connectionless)한 번 요청에 대한 응답을 하면 연결이 끊어짐무상태(Stateless)연결이 끊어지면 통신이 끝나고 서로를 잊어버림모든 메세지는 독립적만약 쿠키와 세션이 없다면?이전의 요청을 기억하지 못하게 됩니다.따라서 요청을 보낼 때 마다 매번 로그인을 해야합니다.이렇게 되면 너무 불편하겠죠?💡서로를 기억하기 위해 필요한 것이 바로 ‘쿠키와 세션’쿠키(Cookie) 🍪서버 → 웹 브라우저에 전달하는 작은 데이터 조각입니다.유저가 웹을 방문하게 되면 서버로부터 쿠키를 전달받습니다.Key-Value 형태로 데이터가 저장됩니다.이후 동일한 서버에 보내는 모든 요청에 쿠키가 함께 전달됩니다.쿠키 데이터는 유저의 로컬에 저장되는 정보입니다.☝그래서 이 귀여운 쿠키가 🍪쿠키는 유저의 작은 기억조각 !장바구니 기능 (쿠키에 어떤 물건을 담았었는지 기억)최근 검색한 상품들(쿠키에 기억) → 서버에서 받아서 맞춤형 광고오늘 다시보지 않기 (쿠키에 기억)→ 어? 그럼 내가 뭐했는지 쿠키에 싹 저장해두었다가, 서버가 가져가네 …? 🤔 조금은 무서운(?) 이야기이 쿠키가 활용되는 가장 중요한 분야가 바로 ‘광고시장’입니다.검색 기록을 추적해서 쉽게 유저별 맞춤형 광고를 할 수 있기 때문입니다.그렇기 때문에 쿠키에 대해 개인정보이슈에 대해 논의가 이루어지고 있습니다!→ 구글 크롬도 쿠키에 대한 제제를 발표 (2024년 발효 예정)→ 광고 시장이 크게 바뀔 수 있는 변화💡한 줄 정리
웹 페이지에 요청을 보내면 서버가 쿠키를 함께 전달하고
이후부터는 같은 서버에 보내는 모든 요청에 쿠키를 함께 담아서 요청을 보내게 된다.세션(Session)☝만약 쿠키 🍪만 있다면 어떤 일이 일어날까요?쿠키에 내가 로그인한 유저다 ! 라고 적어놓고 그게 있으면 서버가 매번 로그인 한 유저라고 생각하고 데이터를 준다면 누구나 가입된 유저인 것처럼 행동할 수 있습니다.→ 쿠키는 유저의 로컬에 저장된 단순한 문자열 정보이기에 유저가 마음대로 바꿀 수 있습니다.→ 이 쿠키 🥠 가 정녕 제가 발행한 쿠키 🍪 인가요 😅💡세션은 서버와 클라이언트(브라우저)간 “상태(State)”를 기억하기 위한 것입니다!세션과 쿠키가 쓰이는 방법은 다음과 같습니다.클라이언트가 서버에 접속하면서버가 특정 session id를 발급하고 기억session id 전달받아 쿠키에 저장이후 클라이언트는 해당 쿠키를 이용해서 요청서버에서는 쿠키에서 session id를 꺼내서 검증검증에 성공했다면 알맞은 로직을 처리→ 쿠키에 민감한 정보를 저장할 필요 없이 session id만 저장하고 서버에서 검증하는 방식으로 사용합니다.→ 로그인은 이러한 절차로 구현됩니다.쿠키의 수명세션쿠키, Session Cookie현재의 세션이 종료되면(브라우저가 닫히면) 삭제됩니다.지속쿠키, Persistent Cookie디스크에 저장되며 브라우저를 닫거나 컴퓨터를 재시작해도 남아있습니다.Max-Age를 지정하여 해당 기간이 지나면 삭제가 가능합니다.DJANGO의 Session 과 AuthALT다 처리를 해주고 있다 !ALTDJANGO에서 알아서 처리해주고 있기 때문에 직접 작성할 필요가 없습니다!03. DJANGO의 Authentication System✔️DJANGO의 Authentication System을 사용해봅시다!코드스니펫[코드스니펫] accounts/urls.py Python복사from DJANGO.urls import path
from . import views

app_name = "accounts"
urlpatterns = [
    path("login/", views.login, name="login"),
]
​[코드스니펫] accounts/views.py (1차)Python복사from DJANGO.shortcuts import render
from DJANGO.contrib.auth.forms import AuthenticationForm


def login(request):
    form = AuthenticationForm()
    context = {"form": form},
return render(request, "accounts/login.html", context)

​[코드스니펫] accounts/templates/accounts/login.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>로그인</h1>
<form action="{% url ''accounts:login'' %}," method="POST">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">로그인</button>
</form>
{% endblock content %},

​[코드스니펫] createsuperuserBash복사python manage.py createsuperuser # 슈퍼유저 생성
​[코드스니펫] accounts/views.py (2차)Python복사# accounts/views.py
from DJANGO.shortcuts import render, redirect
from DJANGO.contrib.auth import login as auth_login
from DJANGO.contrib.auth.forms import AuthenticationForm


def login(request):
if request.method == "POST":
        form = AuthenticationForm(data=request.POST)
if form.is_valid():
            auth_login(request, form.get_user())
return redirect("articles:index")
else:
        form = AuthenticationForm()
    context = {"form": form},
return render(request, "accounts/login.html", context)

​[코드스니펫] base.htmlPython복사<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
<div class="navbar">
<a href="{% url ''accounts:login''%},">로그인</a>
</div>
<div class="container">
{% block content %},
{% endblock content %},
</div>
</body>
</html>

​[코드스니펫] (logout) accounts/views.pyPython복사def logout(request):
if request.method == "POST":
        auth_logout(request)
return redirect("index")
​[코드스니펫] (is_authenticated) base.htmlPython복사<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
<div class="navbar">
{% if request.user.is_authenticated %},
<h3>안녕하세요, {{ user },},님</h3>
<form action="{% url ''accounts:logout'' %}," method="POST">
{% csrf_token %},
<input type="submit" value="로그아웃">
</form>
{% else %},
<a href="{% url ''accounts:login''%},">로그인</a>
{% endif %},
</div>
<div class="container">
{% block content %},
{% endblock content %},
</div>
</body>
</html>
​[코드스니펫] (is_authenticated) accounts/views.pyPython복사@require_POST
def logout(request):
if request.user.is_authenticated:
        auth_logout(request)
return redirect("index")
​[코드스니펫] (login_required) accounts/views.pyPython복사from DJANGO.contrib.auth.decorators import login_required
​[코드스니펫] (update, delete) accounts/views.pyPython복사from DJANGO.contrib.auth.decorators import login_required
from DJANGO.views.decorators.http import require_http_methods


@login_required
@require_POST
def delete(request, pk):
    article = Article.objects.get(pk=pk)
    article.delete()
return redirect("articles:articles")
@login_required
@require_http_methods(["GET", "POST"])
def update(request, pk):
    article = Article.objects.get(pk=pk)
if request.method == "POST":
        form = ArticleForm(request.POST, instance=article)
if form.is_valid():
            article = form.save()
return redirect("articles:article_detail", article.pk)
else:
        form = ArticleForm(instance=article)
    context = {
"form": form,
"article": article,
},
return render(request, "articles/update.html", context)
def data_throw(request):
return render(request, "articles/data_throw.html")
​[코드스니펫] (문제 해결) accounts/views.pyPython복사@require_POST
def delete(request, pk):
if request.user.is_authenticated:
        article = get_object_or_404(Article, pk=pk)
        article.delete()
return redirect("articles:articles")
​로그인 구현하기💡로그인은 결국 Session을 Create하는 로직이라고 할 수 있습니다!

물론 DJANGO는 이 과정을 전부 내부적으로 처리할 수 있는 기능을 제공하고 있기 때문에 우리가 session에 대한 로직을 생각하지 않아도 됩니다. (DJANGO 👍)Authentication FormDJANGO의 Built-in Form로그인을 위한 기본적인 form을 제공합니다.login()개발자가 직접 구현하지 않아도 login()함수 하나만 사용하면 됩니다!사용자 로그인 처리를 해주고 내부적으로 session을 사용해서 user 정보 저장합니다. (DJANGO 👍)사용해보자accounts App을 새로 만들어 주세요.계정 관련된 로직은 accounts 앱으로 하는 것이 일반적입니다.이제 생성하고 등록하는 말은 굳이 또 하지 않을게요. (어라 이미 한거아닌가…)project App의 urls와 accounts App의 urls를 연결해 주세요.ALT로그인 구현하기accounts/urls.py[코드스니펫] accounts/urls.py accounts/views.py (1차)[코드스니펫] accounts/views.py (1차)accounts/templates/accounts/login.html[코드스니펫] accounts/templates/accounts/login.html실행해보면! ALT💡음? 그런데 로그인해보려고 생각해보니…저는 회원가입을 한 기억이 없는데요?아니 그전에 ‘회원’에 대한 정의도 한적이 없는데요DJANGO는 기본적으로 모든게 갖춰져 있습니다.ALTDJANGO의 기본 유저 모델ALT저는 이것 말고도 더 많은 정보가 필요한데요 ?→ 이 유저모델을 ‘확장’하면 되겠죠 🙂그러면 회원으로 등록은 어떻게 하는건가요?회원 가입 역시 DJANGO가 제공하는 여러기능이 있지만 이건 다음으로!지금은 superuser 를 하나 만들어서 진행하겠습니다.superuser란? [코드스니펫] createsuperuserDJANGO가 제공하는 Admin 기능에 접근할 수 있는 최고 권한 유저를 말합니다.User / Staff / Superuser 로 구분ALT강의에서는 아래 정보로 사용하기를 추천합니다. (우리는 망각이 특기니까 까먹었을 땐 현재 페이지를 보면 알 수 있겠죠?)username : adminpassword : admin1234 로그인 처리를 위한 view 작성하기[코드스니펫] accounts/views.py (2차)→ session에 대한 작업은 모두 DJANGO 내부에서 처리합니다.로그인 해보기ALTALT로그인 링크 달아주기 (base.html)[코드스니펫] base.html로그아웃 구현하기로그아웃이란?결국 서버의 세션 데이터를 지우는 것입니다!logout()login()과 마찬가지로 logout()을 사용하면 간단하게 로그아웃을 사용할 수 있습니다.현재 request에서 가져온 session을 사용하여 DB에서 삭제합니다.클라이언트 쿠키에서도 삭제합니다.사용해보자!accounts/urls.py[코드스니펫] (logout) accounts/urls.pyaccounts/views.py[코드스니펫] (logout) accounts/views.py생각해보자logout은 어떤 요청인가요? → DB를 조작하는 요청입니다.그럼 어떤 방법으로 요청해야할까요? → POST!base.htmlALT🧐그런데 말입니다현재는 url로 접근해도 로그아웃이 동작하는 문제가 있습니다.아, 그거 view에서 막아주면 되죠 ~ 🙂[코드스니펫] (logout) accounts/views.py→ 우리는 앞으로 많은 view를 작성해야하는데, 더 편하게 할 수 없을까요?HTTP 요청을 처리하는 다양한 방법공식문서는 신이야
https://docs.DJANGOproject.com/en/4.2/topics/http/decorators/DJANGO가 HTTP요청을 처리하는 방법은 2가지가 있습니다.💡DJANGO shortcut functions공식문서는 옳아요
https://docs.DJANGOproject.com/en/4.2/topics/http/shortcuts/#module-DJANGO.shortcutsrender()- 템플릿을 랜더링해서 전달합니다.redirect() - 특정 경로로 요청을 전달합니다.get_object_or_404()get을 호출한 후 객체가 없다면 404 에러를 raise하여 404 페이지로 이동시킵니다.get_list_or_404()filter를 호출한 후 빈 리스트라면 404 에러를 raise하여 404페이지로 이동합니다.지금은 말이죠💡View Decorators여러가지 다양한 HTTP 기능을 제공하기 위한 데코레이터를 제공require_http_methods()view 함수를 특정한 method 요청에 대해서만 허용require_POST()POST 요청만 허용적용해보기[코드스니펫] (logout) accounts/views.pyALTTemplate with AuthAuth 기능을 Template에서 활용해봅시다.template으로는 우리가 context를 넘기지 않아도 자동으로 넘어가는 context들이 존재합니다.request.user 도 그 중에 하나로 템플릿을 랜더링할때 현재 로그인한 사용자를 나타내는 auth.User 클래스의 인스턴스 또는 AnonymousUser 인스턴스를 request.user로 접근할 수 있습니다.base.html에 소소하게 적용해보기ALTALT접근 제한하기로그인도 있겠다, 로그인이 된 유저와 아닌 유저가 이용할 수 있는 기능에 접근 제한을 둘 수 있으면 좋겠죠?is_authenticated 속성 사용하기@login_required 사용하기is_authenticatedbase.html[코드스니펫] (is_authenticated) base.htmlALTaccounts/views.py[코드스니펫] (is_authenticated) accounts/views.pyarticles/articles.htmlALTlogin_required로그인이 되어있지 않은 상태에서 접근하면 settings.LOGIN_URL 에 설정된 경로로 이동시킵니다.기본 값은 /accounts/login/로그인이 되어있으면 view 로직을 실행합니다.로그인 성공시 이전 페이지로 자동으로 이동합니다.쿼리스크링에 next 로 저장해줍니다.별도 처리 안해주면 지정한 경로로 이동합니다.처리해주자 ! 적용하기 articles/views.py[코드스니펫] (login_required) accounts/views.pyALT/articles/create/ 로 강제 접근을 하면 /accounts/login/?next=/articles/create/ 로 리다이렉트됩니다.update, delete도 모두 적용해주면 되겠죠?[코드스니펫] (update, delete) accounts/views.py한 번 테스트를 해보면 글 삭제시 아래와 같은 에러가 발생합니다.ALT왜그럴까요?비로그인상태에서 삭제 클릭로그인 화면으로 리다이렉트next=<삭제 url>로그인 성공<삭제 url>로 리다이렉트 (GET)하지만 우리의 view는 GET을 허용하지 않음!해결login_required 를 지우고 안쪽 로직에서 분리하도록 처리해서 해결할 수 있습니다.[코드스니펫] (문제 해결) accounts/views.py→ 직접 접근하면 405 에러지만 이건 벗어난 flow에서 나오는 것입니다.
이전에 우리가 설계한 flow 자체가 에러였던 것입니다.', 18),
('DJANGO', '회원기능 구현하기', '[SCC] 회원기능 구현하기[SCC] 파이썬 장고 실무 기초/[SCC] 회원기능 구현하기제작:[SCC] 회원기능 구현하기수업 목표DJANGO의 Auth System을 이용해서 기본적인 회원기능을 구현할 수 있다.목차01. 회원가입구현하기가입 및 편의성 업데이트02. 회원탈퇴회원탈퇴 구현구현하기03. 정보 수정정보 수정구현하기CustomUserChangeForm 만들기accounts/views.py 완성시키기04. 비밀번호변경PasswordChangeForm구현하기views 완성하기그런데 비밀번호를 한 번 변경해보면 … !완성필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드19_회원기능.zip61.5KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. 회원가입✔️회원가입을 구현해볼까요?코드스니펫[코드스니펫] (signup) accounts/forms.pyPython복사from DJANGO import forms


class ArticleForm(forms.Form):
    title = forms.CharField(max_length=10)
    content = forms.CharField()
​[코드스니펫] (signup) accounts/views.pyPython복사from DJANGO.contrib.auth.forms import UserCreationForm

def signup(request):
if request.method == "POST":
        form = UserCreationForm(request.POST)
if form.is_valid():
            form.save()
return redirect("index")
else:
        form = UserCreationForm()
    context = {"form": form},
return render(request, "accounts/signup.html", context)
​[코드스니펫] (signup) accounts/templates/accounts/signup.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>회원가입</h1>
<form action="{% url "accounts:signup" %}," method="POST">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">회원가입</button>
</form>
{% endblock %},
​[코드스니펫] (signup) base.htmlPython복사<a href="{% url ''accounts:signup''%},">회원가입</a>
​[코드스니펫] (session) accounts/views.pyPython복사def signup(request):
if request.method == "POST":
        form = UserCreationForm(request.POST)
if form.is_valid():
            user = form.save()
            auth_login(request, user)
return redirect("index")
else:
        form = UserCreationForm()
    context = {"form": form},
return render(request, "accounts/signup.html", context)
​DJANGO는 기본 auth.User를 가지고 있기에 이를 기반으로한 기본적인 회원가입 ModelForm을 제공하고 있습니다.UserCreationFormDJANGO는 OpenSource이다https://github.com/DJANGO/DJANGO/blob/944745afe2ec45aed30cef799c250107f1364ca7/DJANGO/contrib/auth/forms.py#L196username과 password 로 새로운 user를 생성하는 ModelFormusername, password1, password2를 가짐구현하기[코드스니펫] (signup) accounts/forms.pyPython복사from DJANGO import forms


class ArticleForm(forms.Form):
    title = forms.CharField(max_length=10)
    content = forms.CharField()
​[코드스니펫] (signup) accounts/views.pyPython복사from DJANGO.contrib.auth.forms import UserCreationForm

def signup(request):
if request.method == "POST":
        form = UserCreationForm(request.POST)
if form.is_valid():
            form.save()
return redirect("index")
else:
        form = UserCreationForm()
    context = {"form": form},
return render(request, "accounts/signup.html", context)
​[코드스니펫] (signup) accounts/templates/accounts/signup.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>회원가입</h1>
<form action="{% url "accounts:signup" %}," method="POST">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">회원가입</button>
</form>
{% endblock %},
​[코드스니펫] (signup) base.htmlPython복사<a href="{% url ''accounts:signup''%},">회원가입</a>
​ALT가입 및 편의성 업데이트ALT가입하고 바로 로그인까지 되면 좋을 것 같아요!로그인? → 세션 생성해주기 → DJANGO가 해주던데 → login()[코드스니펫] (session) accounts/views.pyPython복사def signup(request):
if request.method == "POST":
        form = UserCreationForm(request.POST)
if form.is_valid():
            user = form.save()
            auth_login(request, user)
return redirect("index")
else:
        form = UserCreationForm()
    context = {"form": form},
return render(request, "accounts/signup.html", context)
​ALTaccounts/views.pyALT02. 회원탈퇴✔️회원탈퇴를 구현해볼까요?코드스니펫[코드스니펫] Python복사# my_first_pjt/articles/views.py
from DJANGO.shortcuts import render

def index(request):
return render(request, "index.html")
​[코드스니펫] (delete) accounts/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "accounts"
urlpatterns = [
    path("login/", views.login, name="login"),
    path("logout/", views.logout, name="logout"),
    path("signup/", views.signup, name="signup"),
    path("delete/", views.delete, name="delete"),
]
​[코드스니펫] (delete) accounts/views.pyPython복사@require_POST
def delete(request):
if request.user.is_authenticated:
        request.user.delete()
return redirect("index")
​[코드스니펫] (delete) base.htmlPython복사<form action="{% url "accounts:delete" %}," method="POST">
{% csrf_token %},
<input type="submit" value="회원탈퇴"></input>
</form>
​회원탈퇴 구현💡회원탈퇴를 어떻게 구현하면 좋을까요?
게시글을 지우는 것과 크게 다를 것이 없습니다.
마치 게시글을 지우듯이 DB에서 User를 지워주면 됩니다!구현하기accounts/urls.py[코드스니펫] (delete) accounts/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "accounts"
urlpatterns = [
    path("login/", views.login, name="login"),
    path("logout/", views.logout, name="logout"),
    path("signup/", views.signup, name="signup"),
    path("delete/", views.delete, name="delete"),
]
​accounts/views.py[코드스니펫] (delete) accounts/views.pyPython복사@require_POST
def delete(request):
if request.user.is_authenticated:
        request.user.delete()
return redirect("index")
​만약 탈퇴하면서 해당 유저의 세션도 지우고 싶다면? →  logout()을 사용하면 되겠죠?Python복사@require_POST
def delete(request):
if request.user.is_authenticated:
        request.user.delete()
        auth_logout(request)
return redirect("index")
탈퇴하고 → 세션지우고. 이 순서가 바뀌면 안됩니다!ALT​base.html 에 회원 탈퇴버튼 추가[코드스니펫] (delete) base.htmlPython복사<form action="{% url "accounts:delete" %}," method="POST">
{% csrf_token %},
<input type="submit" value="회원탈퇴"></input>
</form>
​ALT03. 정보 수정✔️우리가 회원가입한 뒤 이용하는 웹사이트에는 정보 수정기능이 있죠? 한 번 구현해봅시다!코드스니펫[코드스니펫] (update) accounts/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "accounts"
urlpatterns = [
...
    path("update/", views.update, name="update"),
]

​[코드스니펫] (update) acounts/views.pyPython복사from DJANGO.views.decorators.http import require_http_methods
from DJANGO.contrib.auth.forms import (
...
    UserChangeForm,
)
...
@require_http_methods(["GET", "POST"])
def update(request):
if request.method == "POST":
pass
else:
        form = UserChangeForm(instance=request.user)
    context = {"form": form},
return render(request, "accounts/update.html", context)
​[코드스니펫] accounts/templates/accounts/update.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>회원정보수정</h1>
<form action="{% url ''accounts:update'' %}," method="POST">
{{ form.as_p },},
{% csrf_token %},
<button type="submit">수정하기</button>
</form>
{% endblock %},

​[코드스니펫] (update) base.htmlPython복사<a href="{% url "accounts:update" %},">회원정보수정</a>
​[코드스니펫] (update) accounts/forms.pyPython복사from DJANGO.contrib.auth.forms import UserChangeForm
from DJANGO.contrib.auth import get_user_model


class CustomUserChangeForm(UserChangeForm):
class Meta:
        model = get_user_model()
        fields = # 적어야하는데 모르겠단말이지
​[코드스니펫] (update) accounts/forms.py 수정Python복사from DJANGO.contrib.auth.forms import  UserChangeForm
from DJANGO.contrib.auth import get_user_model


class CustomUserChangeForm(UserChangeForm):
class Meta:
        model = get_user_model()
        fields = (
"username",
"email",
"first_name",
"last_name",
)
​[코드스니펫] (update) accounts/views.py 완성Python복사@require_http_methods(["GET", "POST"])
def update(request):
if request.method == "POST":
        form = CustomUserChangeForm(request.POST, instance=request.user)
if form.is_valid():
            form.save()
return redirect("index")
else:
        form = CustomUserChangeForm(instance=request.user)
    context = {"form": form},
return render(request, "accounts/update.html", context)
​정보 수정기본 User Model에 대한 기본적인 수정 ModelForm 제공합니다.UserChangeForm기본 User Model에 대한 Form을 제공합니다.구현하기accounts/urls.py[코드스니펫] (update) accounts/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "accounts"
urlpatterns = [
...
    path("update/", views.update, name="update"),
]

​accounts/views.py (개요)[코드스니펫] (update) acounts/views.pyPython복사from DJANGO.views.decorators.http import require_http_methods
from DJANGO.contrib.auth.forms import (
...
    UserChangeForm,
)
...
@require_http_methods(["GET", "POST"])
def update(request):
if request.method == "POST":
pass
else:
        form = UserChangeForm(instance=request.user)
    context = {"form": form},
return render(request, "accounts/update.html", context)
​accounts/templates/accounts/update.html[코드스니펫] accounts/templates/accounts/update.htmlPython복사{% extends "base.html" %},
{% block content %},
<h1>회원정보수정</h1>
<form action="{% url ''accounts:update'' %}," method="POST">
{{ form.as_p },},
{% csrf_token %},
<button type="submit">수정하기</button>
</form>
{% endblock %},

​base.html (버튼만들기)[코드스니펫] (update) base.htmlPython복사<a href="{% url "accounts:update" %},">회원정보수정</a>
​ALT🥸들어가보면 👀ALT💡의도한 대로 되긴 되는데 … 유저가 수정하면 안될 정보까지 다 보이네요→ 필요한 기능이 있지만 내가 커스텀 하고 싶다면?→ 상속을 통한 Form 커스텀 👍CustomUserChangeForm 만들기accounts/forms.py[코드스니펫] (update) accounts/forms.pyPython복사from DJANGO.contrib.auth.forms import UserChangeForm
from DJANGO.contrib.auth import get_user_model


class CustomUserChangeForm(UserChangeForm):
class Meta:
        model = get_user_model()
        fields = # 적어야하는데 모르겠단말이지
​get_user_model()현재 프로젝트에서 활성화 되어있는 유저모델을 반환합니다.직접 User 모델을 import 할 수 있지만 get_user_model 을 사용하기를 권장하고 있습니다!DJANGO는 다중 User 모델을 지원하므로 확장에 용이합니다.프로젝트의 유연성과 확장성을 높여줍니다.🥸우리가 작성한 forms.py 내부의 fields에는 어떤 값들이 들어갈까요?모르면? 찾아봐야죠.UserChangeFormGithub 링크ALTUser ModelGithub 링크ALTAbstractUserGithub 링크ALT→ 아 ~ 여기있네요!→ fields에는 보시는 것처럼 first_name, email… 등의 필드들이 들어갈 수 있습니다!→ 공식문서에도 잘나와있습니다!(링크)[코드스니펫] (update) accounts/forms.py 수정accounts/views.py 완성시키기[코드스니펫] (update) accounts/views.py 완성04. 비밀번호변경✔️비밀번호 변경을 구현해봅시다!코드스니펫[코드스니펫] (password) urls.py[코드스니펫] (password) views (1차)[코드스니펫] change_password.html[코드스니펫] (password) CustomUserChangeForm[코드스니펫] (password) views (2차)[코드스니펫] (password) views (완성)PasswordChangeForm유저의 비밀번호를 변경할 수 있는 Form을 제공구현하기(password)urls[코드스니펫] (password) urls.py(password)views (1차)[코드스니펫] (password) views (1차)change_password.html[코드스니펫] change_password.html👀들어가봅시다~!ALT잘 나오는 것 같네요! 그런데, 회원정보수정의 링크를 보면 …ALTDJANGO야, 너 이런 경로 좋아하는구나?ALT우리가 원하는 경로로 커스텀하고 싶다 ! /accounts/password/ → 오버라이딩(Overriding)CustomUserUpdateForm상속받고 있는 기존 UserChangeForm을 살펴봅시다.ALT아, 이렇게 되어있어서 나오는거구나ALT오버라이딩해서 수정하기[코드스니펫] (password) CustomUserChangeFormviews 완성하기[코드스니펫] (password) views (2차)ALT그런데 비밀번호를 한 번 변경해보면 … !☝비밀번호를 변경하면 기존 세션의 인증 정보와 일치하지 않기때문에 로그인이 풀리게 됩니다. ALT이러한 동작이 다소 불편할 수 있기 때문에 공식문서를 찾아보고 한 번 변경해봅시다!ALT공식문서가 답입니다 여러분
https://docs.DJANGOproject.com/en/4.2/topics/auth/default/#session-invalidation-on-password-changeALT완성[코드스니펫] (password) views (완성)', 19),
('DJANGO', 'DJANGO Static & Media', '[SCC]  DJANGO Static & Media[SCC] 파이썬 장고 실무 기초/[SCC]  DJANGO Static & Media제작:[SCC]  DJANGO Static & Media수업 목표DJANGO의 Static과 Media 처리를 이해하고 사용할 수 있다.목차01. Static FilesStatic Files사용해보기02. Media FilesMedia FilesArtiles에 사진 필드 넣기03. runserver의 비밀필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드20_static_media.zip121.4KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. Static Files✔️정적 파일에 대해 알아볼까요?코드스니펫[코드스니펫] BASE_DIR/static/css/style.cssCSS복사img {
width: 200px;
},
​[코드스니펫] base.htmlCSS복사<link rel="stylesheet" href="{% static ''css/style.css'' %},">
​Static Files정적 파일(멈춰있는 파일)을 의미합니다.서비스 로직에서 별도의 처리 없이 보여주기만 하면 되는 파일을 의미합니다.서비스 이미지 파일(로고, 광고 이미지 …)자바스크립트파일, CSS 파일 등이러한 서비스 로직과 다르게 그냥 무조건 주기만 하면 되는 파일들이기 때문에 모아서 따로 제공할 수 있습니다.사용해보기ALTDJANGO는 역시 다 준비되어있다.ALTSTATIC_URLstatic 파일을 참조할 때 사용할 url입니다.개발 단계에서는 app/static 경로 및 settings의 STATICFILES_DIRS 에 정의된 경로 참조실제 디렉토리 경로가 아님에 주의 ! URL로만 존재하는 경로입니다.STATIC_ROOT배포를 위해 정적 파일을 수집하는 디렉토리의 절대경로DJANGO 프로젝트에서 사용하는 모든 정적 파일을 이곳으로 모아서 적용단, DEBUG=True 인 경우 동작 X (개발 단계)추후 배포시 모든 정적파일을 다른 웹 서버가 직접 제공하기 위함collectstaticBash복사python manage.py collectstatic
​STATIC_ROOT에 모든 정적 파일을 수집하는 명령어배포과정에서 사용각 앱의 static 디렉토리<app_name>/static/<app_name>템플릿에서 정적파일 사용하기{% load static %},{% static ‘file_path’ %},진짜 사용해보기settings.py 설정 및 static 디렉토리 생성ALTarticles/static/articles 생성하고 파일 넣기ALTindex.htmlALT💡여기까지 완료하고 접속해보면….ALT드디어 내 사이트에도 이미지가 !ALT짜잔~! ✌️개발자도구를 열어서 이미지 태그의 경로를 확인해봅시다.ALTSTATIC_URL의 의미ALT하는 김에 CSS도 적용해봅시다. 이미지 크기가 다소 큰 것 같네요.css 작성[코드스니펫] BASE_DIR/static/css/style.cssCSS복사img {
width: 200px;
},
​base.html[코드스니펫] base.htmlCSS복사<link rel="stylesheet" href="{% static ''css/style.css'' %},">
​ALT02. Media Files✔️파일 업로드 기능을 구현해볼까요?코드스니펫[코드스니펫] settings.pyPython복사# Media files
MEDIA_URL = "/media/"
MEDIA_ROOT = BASE_DIR / "media"
​[코드스니펫] project app / urlsPython복사from DJANGO.conf import settings
from DJANGO.conf.urls.static import static

...
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
개발 단계에서 MEDIA 파일 사용하는 방법ALT​[코드스니펫] install pillowBash복사pip install pillow
​[코드스니펫] pip freezeBash복사pip freeze > requirements.txt
​[코드스니펫] create.html 수정Python복사{% extends "base.html" %},
{% block content %},
<h1>New Article</h1>
<form action="{% url ''articles:create'' %}," method="POST" enctype="multipart/form-data">
{% csrf_token %},
{{ form.as_p },},
<button type="submit">저장</button>
</form>
{% endblock content %},
​[코드스니펫] views.py 수정Python복사@login_required
def create(request):
if request.method == "POST":
        form = ArticleForm(request.POST, request.FILES)
if form.is_valid():
            article = form.save()
return redirect("articles:article_detail", article.id)
else:
        form = ArticleForm()

    context = {"form": form},
return render(request, "articles/create.html", context)
​[코드스니펫] article_detail.htmlPython복사{% if article.image %},
<img src="{{ article.image.url },},">
{% endif %}, 
​Media Files유저가 웹에서 업로드한 모든 파일을 말합니다. (static file을 제외 모든 파일)사용해보기MEDIA_ROOT업로드한 파일이 저장되는 디렉토리 경로를 지정합니다.업로드 파일은 데이터베이스에 저장되지 않으며 실제 저장되는 것을 파일의 경로입니다.MADIA_URL미디어를 처리를 위한 URLsettings.py[코드스니펫] settings.pyPython복사# Media files
MEDIA_URL = "/media/"
MEDIA_ROOT = BASE_DIR / "media"
​ALTproject app / urls[코드스니펫] project app / urlsPython복사from DJANGO.conf import settings
from DJANGO.conf.urls.static import static

...
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
개발 단계에서 MEDIA 파일 사용하는 방법ALT​Artiles에 사진 필드 넣기Image FieldImage Field는 이미지 업로드에 사용되는 모델 필드입니다.어떻게 사용하는 건지 공식문서를 한 번 찾아볼까요?
https://docs.DJANGOproject.com/en/4.2/ref/models/fields/#imagefield기본적으로 FileField이지만 이미지인지 검사합니다.ALTupload_to이미지가 업로드 되는 경로를 지정MEDIA_ROOT의 하위 경로를 지정한 번 해봅시다!ALTpillow 설치[코드스니펫] install pillowBash복사pip install pillow
​[코드스니펫] pip freezeBash복사pip freeze > requirements.txt
​ALTImageField를 사용하기위해서는 pillow 라이브러리 설치가 필요합니다. 먼저 pillow를 설치해주세요.💡null 과 blank의 차이blankform에서 해당 값을 입력하지 않아도 괜찮다.nullDB에 null을 저장해도 된다.migration 진행수정하기사진이 전송되지 않아! → 잘 보내주고 잘 받아야함create.html 변경하기[코드스니펫] create.html 수정form의 enctype 속성form의 데이터 전송 형식을 지정하는 것으로 기본적으로는 텍스트 형식의 데이터 교환이 이루어집니다.multipart/form-data전송 형식을 지정하는 것으로 file, image 전송시 사용합니다.<input> 의 type=file 사용시 application/x-www-form-urlencoded 가 기본값입니다.articles/views.py 변경하기[코드스니펫] views.py 수정ALT두번째 인자로 request.FILES가 들어가는 이유 👀ALT업로드 해보기ALTALTArticle에 사진 넣기[코드스니펫] article_detail.htmlALTimage가 있는 article인 경우에 이미지 출력03. runserver의 비밀✔️runserver는 사실….우리가 사용하는 runserver 는 ‘개발용’ 서버를 실행하는 것입니다.순수 python으로 작성되었으며 DJANGO에 포함되어있어 개발을 편하게 도와주는 역할을 합니다.절대로 개발 서버를 운영 환경에서 사용해서는 안됩니다!만약 python manage.py runserver를 이용해서 배포한다면 문제가 생깁니다.동시 접속 20개의 연결 정도면 펑! 하고 서버가 터질 수 있습니다.DJANGO는 Web Framework이며 실제 운영시에는 웹 서버를 앞쪽에 달아줘야함관련 내용은 추후 배포에서 다룰 예정이니 지금은 DJANGO framework에 집중! ', 20),
('DJANGO', 'DJANGO Admin', '[SCC] DJANGO Admin[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO Admin제작:[SCC] DJANGO Admin수업 목표DJANGO에서 제공하는 관리자 페이지에 대해 이해하고 설정할 수 있다.목차01. 관리자 페이지 (Admin Site)우리가 운영을 하다보면..DJANGO의 Admin Site직접 사용해보기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드21_DJANGO_admin.zip118.4KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. 관리자 페이지 (Admin Site)✔️관리자 전용 페이지는 왜 필요할까요?코드스니펫[코드스니펫] project app / urls.pyPython복사path("admin/", admin.site.urls),
​[코드스니펫] admin 계정 생성Bash복사python manage.py createsuperuser
​[코드스니펫] 기본 등록하기Bash복사# articles/admin.py
from DJANGO.contrib import admin
from .models import Article

admin.site.register(Article)
​[코드스니펫] 커스텀하기Python복사@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ("title", "created_at")
    search_fields = ("title", "content")
    list_filter = ("created_at",)
    date_hierarchy = "created_at"
    ordering = ("-created_at",)
​우리가 운영을 하다보면..실제 서비스를 운영하다보면 서비스를 관리하는 페이지가 필요합니다.모든 관리자에게 DB를 열어주거나, 매번 SQL을 입력해서 보거나 수정할 수 는 없기때문입니다.💡이런 이유로 관리자용 페이지가 필요합니다.
→ 아니 그런데 … 지금 우리 사이트 만들기도 벅찬데요ㅠㅠ 😞DJANGO의 Admin SiteDJANGO는 기본적으로 관리자 사이트를 제공하고 있습니다.DJANGO Framework를 선택하는 이유가 되기도하는 강력한 장점 중 하나입니다.직접 record를 조회, 생성, 수정, 삭제할 수 있는 모든 기능을 제공합니다.이외에도 각종 권한 부여를 해서 제한하거나, 페이지 자체를 커스텀 하는 것도 가능합니다![코드스니펫] project app / urls.pyPython복사path("admin/", admin.site.urls),
​ALT이렇게 정의하고 admin경로에 들어가보면…ALT프로젝트 생성시부터 존재하던 그 페이지 !ALTDJANGO에서 기본적으로 제공하는 관리자 페이지가 나옵니다!직접 사용해보기admin 계정 생성[코드스니펫] admin 계정 생성Bash복사python manage.py createsuperuser
​CSS복사python manage.py createsuperuser
​최소 is_staff 권한이 필요합니다.admin에서 관리할 모델 등록관리자 페이지에서 사용할 모델은 직접 등록해주는것이 필요합니다.각 앱의 admin.py에서 설정 가능합니다.articles기본 등록하기[코드스니펫] 기본 등록하기Bash복사# articles/admin.py
from DJANGO.contrib import admin
from .models import Article

admin.site.register(Article)
​이렇게 등록한 뒤 살펴보면 조금 전 등록한 모델이 보입니다!ALT등록한 모델은 관리자 페이지에서 접근 가능합니다.ALTALT기본적인 CRUD를 모두 포함하고 있습니다.ALT커스텀 하기이렇게 모델을 추가했습니다. 그러나 만약 게시글의 수가 많아진다면 관리하기가 힘들겠죠? 원하는 게시물만 검색해볼 수 있게 하면 좋을 것 같네요.작성일을 기준으로 정렬해서 볼 수 있게하면 좋을 것 같아요.[코드스니펫] 커스텀하기Python복사@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ("title", "created_at")
    search_fields = ("title", "content")
    list_filter = ("created_at",)
    date_hierarchy = "created_at"
    ordering = ("-created_at",)
​ALT보기 수정, 검색, 필터 등 다양한 기능을 간단히 추가 할 수 있습니다.ALT이 밖에도 거의 모든 부분에 대해 커스텀이 가능합니다!예를 들어 CSS와 Javascript를 사용하여 원하는 대로 커스텀해서 사용하는 것도 가능합니다.→ 공식문서 참조', 21),
('DJANGO', 'Model Relationship (1:N)', '[SCC] Model Relationship (1:N)[SCC] 파이썬 장고 실무 기초/[SCC] Model Relationship (1:N)제작:[SCC] Model Relationship (1:N)수업 목표1:N 관계에 대해 이해하고 DJANGO Model과 ORM을 활용하여 구현할 수 있다.목차01. Many to one relationships굉장히 흔히 사용되는 관계실습- 댓글 구현하기로직구현과제 📝모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)(꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드22_DJANGO_one_to_many.zip158.1KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. Many to one relationships✔️1:N 관계에 대해서 배워보고 구현까지 해볼까요?코드스니펫[코드스니펫] articles/models.pyPython복사class Comment(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    content = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
def __str__(self):
return self.content
​[코드스니펫] forms.py (1차)Python복사...
class CommentForm(forms.ModelForm):
class Meta:
        model = Comment
        fields = "__all__"
​[코드스니펫] article_detail.htmlHTML복사...
<hr>
<h3>댓글</h3>
<form action="#" method="POST">
    {% csrf_token %},
    {{ comment_form.as_p },},
    <input type="submit" value="댓글작성">
</form>
​[코드스니펫] forms.py (2차)Python복사class CommentForm(forms.ModelForm):
class Meta:
        model = Comment
        fields = "__all__"
        exclude = ("article",)
​[코드스니펫] articles/urls.pyPython복사path("<int:pk>/comments/", views.comments_create, name="comments_create"),
​[코드스니펫] articles/views.pyPython복사@require_POST
def comment_create(request, pk):
    article = get_object_or_404(Article, pk=pk)
    form = CommentForm(request.POST)
if form.is_valid():
        comment = form.save(commit=False)
        comment.article = article
        comment.save()
return redirect("articles:article_detail", article.pk)
​[코드스니펫] article_detail.html 변경HTML복사<hr>
<h3>댓글</h3>
<form action="{% url "articles:comment_create" article.pk %}," method="POST">
    {% csrf_token %},
    {{ comment_form.as_p },},
    <input type="submit" value="댓글작성">
</form>
​[코드스니펫] article_detail.html에 추가HTML복사...
<ul>
    {% for comment in comments %},
        <li>
<p>{{ comment.content },},</p>
</li>
    {% endfor %},
</ul>
​굉장히 흔히 사용되는 관계1:N 관계 예시만약 Article에 Author라는 개념을 둔다면,하나의 Article은 한 명의 Author를 가질 수 있습니다.한 명의 Author는 여러개의 Article을 가질 수 있습니다.만약 Article에 Comment라는 개념을 둔다면,하나의 Article은 여러개의 Comment를 가질 수 있습니다.하나의 Comment는 하나의 Article을 가질 수 있습니다.Foreign Key외래키를 의미합니다.관계형 데이터베이스에서 한 테이블(A)의 필드 중 다른 테이블(B)의 행을 유일하게 식별이 가능한 키입니다.테이블(A)에 설정되는 Foreign Key가 반드시 다른 테이블(B)의 Primary Key일 필요는 없으나 유일하게 식별이 가능해야합니다.실습- 댓글 구현하기댓글(Comment) 구현articles/models.pymodels.ForeignKey(<참조하는 모델 클래스>, on_delete=<옵션>) [코드스니펫] articles/models.pyPython복사class Comment(models.Model):
article = models.ForeignKey(Article, on_delete=models.CASCADE)
    content = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
def __str__(self):
return self.content
​📌on_delete 옵션이정도면 이제 스스로 공식문서를 찾으시겠죠?😊
https://docs.DJANGOproject.com/en/4.2/ref/models/fields/#DJANGO.db.models.ForeignKey.on_deleteCASCADE부모가 삭제되면 이를 참조하는 객체도 삭제PROTECT참조하는 객체가 있을경우 예외를 발생시켜 삭제 방지SET_NULL참조하는 객체가 삭제될 경우 NULL 값으로 지정… 📌<fieldname>_idALTALT참조 테이블의 이름뒤에 _id 를 붙여 컬럼을 자동으로 생성합니다.터미널에서 shell_plus설치?python manage.py shell_plusclear 입력해서 지울수있음comment = Comment()comment.content = “first comment”comment.save()ORM 사용해보기☝터미널에서 shell_plus 이용하기→ 터미널에서 아래의 코드를 입력합니다.python manage.py shell_pluscomment = Comment()comment.content = “first comment”comment.save()Comment 생성하기ALT진정해... DJANGOALT⇒ article_id 값을 지정하지 않았기때문에 그렇습니다!ALT ⇒ comment.article_id = article.pk로 명시하지 않아도 됩니다!실습 - 두번째 댓글 생성하기📢(해보세요) 위와 같은 article에 대해 생성해 주세요!ALTcomment → article 접근👀만약 comment에서 어떤 article인지 접근하고 싶다면 어떻게 할까요? ALT그렇다면 이 comment가 작성된 article의 title , content 를 알고 싶다면 어떻게 할까요?ALT와오 … JOIN 하고 뭐하고 ~ 필요가 없다ALT정참조Comment(N) → Article(1) 참조 == 정참조내 Model Class에서 Field가 정의되어 있으므로( Comment는 항상 하나의 참조하는 Article이 있으므로) comment.article 로 아주 쉽게 접근이 가능합니다. 👍article → comments 접근🤔만약 article에서 작성된 모든 comment를 알고싶다면? article.??????? Article 모델 클래스에는 Comment에 대한 어떠한 정보도 없어요!역참조Article(1) → Comment(N) 참조 == 역참조DJANGO는 역참조의 경우 참조하는 클래스명에 _set 을 붙인 manager를 생성합니다.1번 Article에 작성된 모든 Comment 조회ALTOMG … SOOOO EASY !!!ALT그런데 manager 이름이 맘에들지 않는데요?! → article.commnets.all() 이렇게 쓰고 싶어요!ALT→ 수정시 migration 필요ALT너무 깔끔하다 👍ALT댓글 생성forms.py (1차)[코드스니펫] forms.py (1차)articles/views.pyALTarticles/templates/articles/article_detail.html[코드스니펫] article_detail.html🤔article을 제외하려면 ALTforms.py (2차)[코드스니펫] forms.py (2차)로직구현articles/urls.py[코드스니펫] articles/urls.pyarticles/views.py[코드스니펫] articles/views.pysave(commit=False)실제 데이터 베이스에 처리되지 않은 상태의 인스턴스를 반환합니다.저장 전, 로직이 필요한 경우에 사용합니다.articles/templates/articles/article_detail.html[코드스니펫] article_detail.html 변경댓글 읽기articles/views.pyALTarticles/templates/articles/article_detail.html[코드스니펫] article_detail.html에 추가그런데 사실 이렇게도 가능해요!⇒ view를 수정하지 않고 바로 해결 👀HTML복사<ul>
    {% for comment in articles.comments.all %},
        <li>
<p>{{ comment.content },},</p>
</li>
    {% endfor %},
</ul>
​과제 📝📢아래 예시 사진처럼 결과가 나올 수 있도록 구현해볼까요?댓글 삭제를 구현해 보세요.전체 댓글의 수를 출력하도록 작성해 보세요.ALT💡과제의 정답 코드는 해당 페이지 상단 최종 코드에 포함되어 있습니다!', 22),
('DJANGO', 'Custom UserModel 활용하기', '[SCC] Custom UserModel 활용하기[SCC] 파이썬 장고 실무 기초/[SCC] Custom UserModel 활용하기제작:[SCC] Custom UserModel 활용하기수업 목표Custom User Model을 정의하고 이를 활용한 로직을 구현할 수 있다.목차01. Custom User Model적용하기회원가입 로직 수정02. 1:N 관계 확장하기User(1) - Article(N) 확장하기과제 🔖필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드23_DJANGO_custom_user_model.zip235.0KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. Custom User Model✔️이제 우리만의 Custom User Model을 사용해볼까요?코드스니펫[코드스니펫] accounts/models.pyPython복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


# Create your models here.
class User(AbstractUser):
pass

​[코드스니펫] settings.pyPython복사...
AUTH_USER_MODEL = ''accounts.User''
...
​[코드스니펫] accounts/admin.pyPython복사from DJANGO.contrib import admin
from DJANGO.contrib.auth.admin import UserAdmin
from .models import User

admin.site.register(User, UserAdmin)
​[코드스니펫] forms.pyPython복사class CustomUserCreationForm(UserCreationForm):
class Meta:
        model = get_user_model()
        fields = UserCreationForm.Meta.fields + (필요시 추가필드)
​현재 UserModel은!DJANGO의 기본 User Model을 사용하고 있습니다.대부분의 프로젝트에서는 User Model에 더 많은 기능들이 필요합니다.DJANGO는 AUTH_USER_MODEL setting을 변경하여 기본 User Model을 대체할 수 있습니다.만약 기본 User Model을 사용하더라도 Custom User Model을 사용하는 것이 권장됩니다.적용하기⚠️주의해요AUTH_USER_MODEL 설정은 반드시 프로젝트 최초 마이그레이션에서 함께 진행하기를 권장합니다.USER Model은 비지니스로직 깊숙이 관여되기에 중간에 변경하면 많은 변경사항을 야기합니다.User Model 정의하기accounts/models.py[코드스니펫] accounts/models.pyPython복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


# Create your models here.
class User(AbstractUser):
pass
​⇒ 기본 유저를 변경하지 않더라도 확장성을 위해 Custom User Model을 작성해요!settings.py[코드스니펫] settings.pyPython복사...
AUTH_USER_MODEL = ''accounts.User''
...
​accounts/admin.py[코드스니펫] accounts/admin.pyPython복사from DJANGO.contrib import admin
from DJANGO.contrib.auth.admin import UserAdmin
from .models import User

admin.site.register(User, UserAdmin)
​migration 적용하기프로젝트 중간에 진행되므로 데이터베이스를 초기화하고 진행합니다.→ 그렇지 않을 경우, 마이그레이션이 뒤엉키게 돼요!db.sqlite3 파일 삭제 및 모든 migration 삭제 후 다시 migration합니다.회원가입 로직 수정ALT기존의 UserCreationForm은 DJANGO의 기본 User 모델을 사용중이므로 해당 부분 수정이 필요합니다.→ accounts.User를 바라보도록 상속을 통한 클래스를 재정의해요!forms.py[코드스니펫] forms.pyPython복사class CustomUserCreationForm(UserCreationForm):
class Meta:
        model = get_user_model()
        fields = UserCreationForm.Meta.fields + (필요시 추가필드)
​02. 1:N 관계 확장하기✔️이제 1:N 관계 확장을 배워봅시다!코드스니펫[코드스니펫] articles/models.py[코드스니펫] articles/views.pyUser(1) - Article(N) 확장하기articles/models.py[코드스니펫] articles/models.pyALT⇒ migrationALT기존의 존재하던 데이터에 대해 어떻게 처리해야할까?ALTarticles/forms.pyALT→ 작성자를 제외해주는 것이 필요ALTarticles/views.py[코드스니펫] articles/views.pyALT과제 🔖📢게시글과 댓글을 아래 조건에 맞게 구현해볼까요?
<게시글>게시글 작성자가 누구인지 글목록에서 보여주세요.내가 작성한 게시글만 삭제할 수 있도록 만들어 주세요. 
(삭제가 가능한 경우만 삭제 버튼 노출)내가 작성한 게시글만 수정할 수 있도록 만들어 주세요.
(수정이 가능한 경우만 수정 버튼 노출)<댓글>댓글 작성에도 작성자를 적용해 주세요.댓글 목록에서 작성자를 노출해 주세요.로그인을 하지 않은 유저는 댓글을 입력하지 못하도록 해주세요.내가 작성한 댓글만 삭제할 수 있도록 만들어 주세요.
(삭제가 가능한 경우만 삭제 버튼 노출)💡과제의 정답 코드는 해당 페이지 상단 최종 코드에 포함되어 있습니다!', 23),
('DJANGO', 'Model Relationship (M:N)', '[SCC] Model Relationship (M:N)[SCC] 파이썬 장고 실무 기초/[SCC] Model Relationship (M:N)제작:[SCC] Model Relationship (M:N)수업 목표M:N 관계에 대해 이해하고 DJANGO Model과 ORM을 활용하여 구현할 수 있다.목차01. ManyToMany Relationship1차 구현2차 구현ManyToMany좋아요 구현하기팔로우 생각해보기팔로우 구현하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /🥕강의 최종 코드24_DJANGO_m2m_relationship.zip228.1KBdb가 제외되어 있으므로 최초 migration이 필요합니다 🙂01. ManyToMany Relationship✔️좋아요와 팔로우 기능은 어떻게 만드는 걸까요?코드스니펫[코드스니펫] articles/models.pyPython복사class Article(models.Model):
    title = models.CharField(max_length=50)
    content = models.TextField()
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="articles"
)
...
    like_user = models.ForeignKey(
        settings.AUTH_USER_MODEL, 
        on_delete=models.CASCADE, 
        related_name="like_articles",
        null=True
)
​[코드스니펫] articles/models.py에 추가Python복사class ArticleLike(models.Model):
    article = models.ForeignKey(
        Article, on_delete=models.CASCADE, related_name="likes"
)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="likes"
)
​[코드스니펫] articles/models.py 수정Python복사class Article(models.Model):
...
    like_users = models.ManyToManyField(
        settings.AUTH_USER_MODEL, related_name="like_articles"
)
​[코드스니펫] articles/urlsPython복사urlpatterns = [
...
    path("<int:pk>/like/", views.like, name="like"),
...
]
​[코드스니펫] articles/viewsPython복사@require_POST
def like(request, pk):
if request.user.is_authenticated:
        article = get_object_or_404(Article, pk=pk)
if article.like_users.filter(pk=request.user.pk).exists():
            article.like_users.remove(request.user)
else:
            article.like_users.add(request.user)
else:
return redirect("accounts:login")
return redirect("articles:articles")
​[코드스니펫] articles.html (1차)HTML복사{% for article in articles %},

		...
		
		<form actions="{% url "article:like" article.pk %}," method="POST">
				{% csrf_token &},
				<input type="sumit" value="좋아요">
</form>
		
{% endfor %},
​[코드스니펫] articles.html (2차)HTML복사{% for article in articles %},

		...
		
		<form actions="{% url "article:like" article.pk %}," method="POST">
				{% csrf_token &},
				{% if user in article.like_users.all %},
						<input type="sumit" value="좋아요 취소">
				{% else %},
						<input type="sumit" value="좋아요">
				{% endif %},
		</form>
		
{% endfor %},
​[코드스니펫] accounts/models.pyPython복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


class User(AbstractUser):
    following = models.ManyToManyField(
"self", symmetrical=False, related_name="followers"
)

​[코드스니펫] users/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "users"
urlpatterns = [
...
    path("<int:user_id>/follow/", views.follow, name="follow"),
]

​[코드스니펫] users/views.pyPython복사from DJANGO.shortcuts import render, redirect
from DJANGO.views.decorators.http import require_POST
from DJANGO.shortcuts import get_object_or_404
from DJANGO.contrib.auth import get_user_model


def users(request):
return render(request, "users/users.html")
def profile(request, username):
member = get_object_or_404(get_user_model(), username=username)
    context = {
"member": member,
},
return render(request, "users/profile.html", context)
@require_POST
def follow(request, user_pk):
if request.user.is_authenticated:
        member = get_object_or_404(get_user_model(), pk=user_pk)
if request.user != member:
if request.user in member.followers.all():
                member.followers.remove(request.user)
else:
                member.followers.add(request.user)
return redirect("users:profile", member.username)
return redirect("accounts:login")

​[코드스니펫] profile.html (1차)HTML복사{% extends ''base.html'' %},

{% block content %},
    <h1>{{ member.username },},의 프로필 페이지</h1>
<div>
<h2>username : {{ member.username },},</h2>
<p>
            팔로워 : {{ member.followers.count },},명
            팔로잉 : {{ member.following.count },},명
        </p>
</div>
<div>
<form action="{% url "users:follow" member.pk %}," method="POST">
            {% csrf_token %},
                <button type="submit">팔로우</button>
</form>
</div>
<a href="/index/">홈으로 돌아가기</a>

{% endblock content %},
​[코드스니펫] profile.html (2차)HTML복사{% extends ''base.html'' %},

{% block content %},
    <h1>{{ member.username },},의 프로필 페이지</h1>
<div>
<h2>username : {{ member.username },},</h2>
<p>
            팔로워 : {{ member.followers.count },},명
            팔로잉 : {{ member.following.count },},명
        </p>
</div>
<div>
<form action="{% url "users:follow" member.pk %}," method="POST">
            {% csrf_token %},
            {% if user in member.followers.all %},
                <button type="submit">언팔로우</button>
            {% else %},
                <button type="submit">팔로우</button>
            {% endif %},
        </form>
</div>
<a href="/index/">홈으로 돌아가기</a>

{% endblock content %},
​좋아요 생각해보기🤔좋아요 기능은 어떻게 구현을 해야할까요?⇒ 모든 기능은 로직을 고민하고 손으로 구현하는 방법 뿐입니다!좋아요 기능이 뭔가요?User가 Article에 좋아요(Like)를 누르는 것입니다.저장해야할 데이터는 뭘까요?User가 어떤 Article에 좋아요를 눌렀는지 저장하면 됩니다.1차 구현User(1) - Article(N) : ⇒ 한 명의 유저는 여러 Article에 좋아요를 누를 수 있으니까요![코드스니펫] articles/models.pyPython복사class Article(models.Model):
    title = models.CharField(max_length=50)
    content = models.TextField()
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="articles"
)
...
    like_user = models.ForeignKey(
        settings.AUTH_USER_MODEL, 
        on_delete=models.CASCADE, 
        related_name="like_articles",
        null=True
)
​users/models.pyPython복사class User(AbstractUser):
...
​괜찮을까요?User 1이 Article 1을 좋아요를 눌렀다면?idtitlelike_user(그 외 필드 생략)11번 글 제목122번 글 제목null33번 글 제목nullUser 2가 Article 3을 좋아요를 눌렀다면?idtitlelike_user(그 외 필드 생략)11번 글 제목122번 글 제목null33번 글 제목2User 3이 Article 1에 좋아요를 눌렀다면?idtitlelike_user(그 외 필드 생략)11번 글 제목1, 322번 글 제목null33번 글 제목2→ 이건 불가능!!idtitlelike_user(그 외 필드 생략)11번 글 제목122번 글 제목null33번 글 제목241번 글 제목3→ 이건 내용은 똑같지만 아예 다른 객체이죠,,?!⇒ 따라서, 1:N 관계로는 한계가 있습니다!2차 구현User는 여러 Article에 좋아요를 누를 수 있습니다.→ 좋아요 테이블을 따로 만들어요!articles/models.py 동일Python복사class Article(models.Model):
    title = models.CharField(max_length=50)
    content = models.TextField()
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="articles"
)
...
​users/models.py 동일Python복사class User(AbstractUser):
...
​[코드스니펫] articles/models.py에 추가괜찮을까요?User 1이 Article 1을 좋아요를 눌렀다면?iduser_idarticle_id111User 2가 Article 3을 좋아요를 눌렀다면?iduser_idarticle_id111223User 3이 Article 1에 좋아요를 눌렀다면?iduser_idarticle_id111223331⇒ 오? 좋아요!ManyToMany이제 공식문서 익숙하시죠?
https://docs.DJANGOproject.com/en/4.2/ref/models/fields/#manytomanyfield다대다(M:N) 관계 설정시 사용하는 모델 필드입니다.예시) 좋아요→ 한 명의 유저는 여러개의 게시글을 좋아할 수 있어요!→ 하나의 게시글도 여러명의 유저에게 좋아요를 받을 수 있어요!중계 테이블을 이용해서 관계를 표현합니다.models.ManyToManyField(<classname>)을 이용해서 설정합니다.M2M 관계가 설정되면 역참조시 사용가능한  _set이름의 RelatedManager를 생성합니다.
(related_name 으로 변경 가능)add(), remove()를 이용해서 관련 객체를 추가, 삭제할 수 있습니다.좋아요 구현하기articles/models[코드스니펫] articles/models.py 수정migration 실행☝중계테이블은요??DJANGO는 m2m 필드 추가시 자동으로 중계테이블을 설정합니다!ALTuser_id와 article_id가 있는 중계테이블ALTORM 연습하기article과 user가져오기ALT좋아요 추가하기 & 조회하기ALTuser_1 → article_3 : 좋아요user_2 → article_3 : 좋아요article_3을 좋아하는 모든 user 목록ALTuser_1 → article_4 : 좋아요user_1이 좋아하는 모든 article 목록article_article_like_users 중계테이블ALT→ 세상에 ! 사용하는게 너무 쉽죠?! 😃 (ORM의 힘)💡만약에, 좋아요에 ‘정도’를 표현하고 싶다면?중계테이블을 내가 직접 정의해줄 수도 있어요!articles/urls[코드스니펫] articles/urlsarticles/views[코드스니펫] articles/viewsarticles/templates/articles/articles.html (1차)[코드스니펫] articles.html (1차)ALTarticles/templates/articles/articles.html (2차)[코드스니펫] articles.html (2차)ALT팔로우 생각해보기🤔팔로우는 어떻게 구현할 수 있을까요?한 명의 유저는 여러명의 유저를 팔로우 할 수 있어요!한 명의 유저는 여러명의 팔로워를 가질 수 있어요!⇒  M:N 관계그런데 말입니다!Python복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


class User(AbstractUser):
    following = models.ManyToManyField(????, related_name=''followers'')
​누구랑 m2m 관계를 맺어야 할까요?⇒ USER - USER 즉, 관계를 맺는것도 내 자신입니다!Python복사following = models.ManyToManyField(''self'', related_name=''followers'')
​💡symmetricalALT기억…나니?ALTM2M Field가 동일한 모델(self)과 관계를 맺는 경우에 사용합니다.symmetrical=True인 경우 한 방향에서 관계를 맺으면 반대 관계도 설정됩니다. (대칭)기본값은 True입니다.팔로우 구현하기accounts/models.py[코드스니펫] accounts/models.py마이그레이션생성된 테이블 확인ALTusers/urls.py[코드스니펫] users/urls.pyusers/views.py[코드스니펫] users/views.pyusers/templates/users/profile.html (1차)[코드스니펫] profile.html (1차)ALTusers/templates/users/profile.html (2차)[코드스니펫] profile.html (2차)', 24),
('DJANGO', 'DJANGO 기초 마무리', '[SCC] DJANGO 기초 마무리[SCC] 파이썬 장고 실무 기초/[SCC] DJANGO 기초 마무리제작:[SCC] DJANGO 기초 마무리수업 목표DJANGO 프레임워크에 대한 이해를 바탕으로 스스로 활용할 수 있다.목차01. DJANGO FrameworkBootstrap 넣기Fontawesome 활용하기앞으로 우리는필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. DJANGO Framework✔️드디어 DJANGO 기초 마지막 마무리를 해볼까요~?지금까지 우리는DJANGO를 활용한 웹 개발을 진행했습니다.HTML / CSS만 넣으면 충분히 활용가능한 하나의 웹사이트가 됩니다!Bootstrap 넣기📎https://getbootstrap.comALTbase.html의 head에 위 사진 속 CSS 링크를 첨부합니다.base.html의 body 마지막줄에 JS 링크를 첨부합니다.사이트 속 사용법을 참고하여 원하는 것을 코드에 적용합니다.Fontawesome 활용하기📎https://fontawesome.com/좋아요 버튼 만들기base.html의 head에  Bootstrap 링크아래에 첨부합니다.검색하여 원하는 아이콘을 찾고, 복사하여 코드에 첨부합니다.ALT앞으로 우리는DJANGO를 API Server로 사용하는 방법을 배울 것입니다.', 25),
('DRF', 'DJANGO DRF INTRO', '[SCC] DJANGO DRF INTRO[SCC] 파이썬 장고 실무 심화/[SCC] DJANGO DRF INTRO제작:[SCC] DJANGO DRF INTRO수업 목표강의의 전체적인 흐름을 이해하고 청사진을 그릴 수 있다.목차01. 이번 강의에서 우리는무엇을 배우게 되나요?기존의 DJANGO랑 무엇이 다른가요?02. 수강대상준비가 필요해요!필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 이번 강의에서 우리는✔️이번 심화 강의에서는 어떤 것을 배우게 될지 기대되시죠~?무엇을 배우게 되나요?👉DJANGO를 이용해서 Web API Application을 만드는 방법을 배웁니다.⇒ DJANGO를 기반으로한 RESTful API를 제공하는 어플리케이션을 만들어요!기존의 DJANGO랑 무엇이 다른가요?✅기존의 DJANGODJANGO는 Web App을 빠르게 개발하기 위한 고수준의 웹 프레임워크입니다.즉, 기존에는 Web의 전체 기능이 모두 들어있는 Web Application을 제작했습니다.→ 요청에 대해서 html 파일(웹 페이지)을 응답하는 Web Application을 만드는 방법을 배웠어요!MTV를 활용한 Web 데이터 모델링, URL 라우팅, 템플릿 시스템, 관리자 기능, 세션, 보안 …✅여기서의 DJANGO보여지는 부분은 처리하지 않고 오직 로직에 집중하는 형태를 만들 것입니다.→ 요청에 대해 처리한 결과 데이터를 응답하는 형태DJANGO REST Framework (DRF)를 이용하는 방법을 배울 것입니다.→ DJANGO + DRF라고 하는 패키지를 살짝 얹은것(확장)으로 DJANGO를 다룰 수 있다면 무리없이 배울 수 있어요!DRF == 흔히 말하는 RESTful API를 DJANGO로 구축하기 위한 확장 프레임워크입니다.02. 수강대상✔️이번에도 수강 전 우리의 상태를 확인해봐야겠죠~?🤔여러분은 지금 무엇을 할 수 있나요?Python / HTML,CSS,JS / SQL + DJANGO만약 지나가던 친구가 “나 이번에 카페 개업하는데 홈페이지 하나만 만들어주라, 수고비는 작지만 줄게” 라고 했을 때,  “그래!, 단가는? 😃” 이런 반응이 나오고,“우리 카페가 좀 잘된다야, 그래서 말인데, Mobile App도 하나 내려고!” 라고 했을 때, “모바일 개발자는 뭐 아는 동생에게 부탁하면 된다고 치고 … 그런데 나는 뭘 어떻게 해줘야하지?”하는 생각이 든다면⇒ 이러한 분들이 우리 강의 수강대상입니다 !준비가 필요해요!✅강의 수강을 위해 필요한 역량Python 문법을 알아야 합니다.웹 프로그래밍 기초 (HTML, CSS) + JS 알아야 합니다.→ 몰라도 강의 수강은 가능하지만, 가능하다면 알면 좋아요!DJANGO 기초는 반드시 알아야 합니다.✅강의 수강을 통해 얻는 것DJANGO를 사용해서 RESTful API를 제공할 수 있게 됩니다.준주니어 DJANGO 백엔드 개발자로 첫걸음을 떼는 것입니다.', 1),
('DRF', 'HTTP와 URL 구조', '[SCC] HTTP와 URL 구조[SCC] 파이썬 장고 실무 심화/[SCC] HTTP와 URL 구조제작:[SCC] HTTP와 URL 구조수업 목표HTTP와 URL의 구조를 이해하고 요청과 응답을 설명할 수 있다.목차01. HTTPHTTP MessageHTTP Request MethodsHTTP Status Code02. URLURI (Uniform Resource Identifier)URI의 구조필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. HTTP✔️지난 강의와는 또 다른 이야기가 나오니 한번 배워볼까요~?📚또다시 HTTP 이야기Hyper Text Transfer Protocol⇒ Web에서 이루어지는 데이터 교환의 기초(약속)입니다.요청(Request)클라이언트 → 서버로 전송되는 메세지응답(Response)서버 → 클라이언트로 전송되는 메세지특성Stateless (무상태)→ 서버가 클라이언트의 상태를 보존하지 않습니다.→ 모든 응답과 요청은 독립적입니다.Connectless (비연결성)→ 요청 받고 응답을 주고나면 연결을 종료합니다.→ 연결을 유지하지 않으므로 서버 자원을 효율적으로 사용 가능합니다.→ 이후 HTTP1.1이 등장하면서 개선되었습니다.⇒ 단순하며 확장성이 용이한 구조HTTP Message요청(Request)클라이언트가 서버로 전달해서 서버의 어떤 행동(action)이 일어나게 하는 것을 의미합니다.응답(Response)요청에 대한 서버의 답변을 의미합니다.Http Message의 구조요청과 응답은 구조가 비슷합니다.시작(Start Line) - 실행되어야할 요청, 요청에 대한 성공 또는 실패HTTP Header - 요청에 대한 설명, 본문에 대한 설명빈줄(Blank Line) - 메타 정보의 끝을 알림HTTP Body - 요청과 관련된 내용, 응답과 관련된 문서📎예시ALT출처 : MDNALT요청(Request)Start Line Method, Traget, HTTP VersionHeaders요청에 필요한 여러가지 메타 정보Body요청에 필요한 여러가지 데이터응답(Response)Start LineHTTP Version,  Status Code, Status MessageHeaders응답에 대한 열가지 메타 정보Body요청을 처리한 여러가지 데이터HTTP Request MethodsMDN 공식문서
https://developer.mozilla.org/ko/docs/Web/HTTP/Methods요청 자원에 대한 행위를 나타냅니다. 어떤 동작을 하려고 하는지를 나타내요!GET, POST, PUT, DELETE, …→ REST 이야기할 때 조금 더 알아보아요!HTTP Status CodeMDN 공식 문서
https://developer.mozilla.org/ko/docs/Web/HTTP/StatusHTTP 요청에 대해 성공 여부를 나타내는 코드값입니다.크게 5개의 그룹으로 나누어집니다.1XX : Informational Response2XX : Successful Response→ 200 OK성공 - 에러없이 요청이 성공.ALT출처 http.catALT→ 201 Created요청이 성공했고 새로운 데이터가 만들어짐.ALT출처 http.catALT→ 202 Accepted요청은 정상적이나 아직 처리가 완료되지 않음.ALT출처 http.catALT→ 204 No Content요청은 성공적으로 처리했으나 전송할 데이터(Response Body)가 없음.ALT출처 http.catALT3XX : Redirection Message4XX : Client Error Response→  400 Bad Request클라이언트의 요청이 잘못되었음.서버는 해당 요청을 처리하지 않음.ALT출처 http.catALT→ 401 Unauthorized클라이언트가 인증이 되지 않았거나 인증정보가 유효하지 않음.ALThttp.catALT→ 403 Forbidden서버에서 요청을 이해했으나 금지된 요청.요청에 대한 자원이 있으나 수행할 권한이 없음.ALT출처 http.catALT→ 404 Not Found요청한 자원을 찾을 수 없음.ALT출처 http.catALT5XX : Server Error Response→ 500 Internal Server Error요청에 대해 서버가 수행하지 못하는 상황.서버가 동작하지 않는다는 포괄적인 의미가 내포됨.ALT출처 http.catALT→ 503 Service Unavailable서버가 요청을 처리할 준비가 되지 않았음.서버가 다운되었거나 일시적으로 중단된 상태.ALT출처 http.catALT02. URL✔️자원을 식별하기 위해 사용하는 URL에 대해 알아볼까요?💡웹에서의 자원의 식별우리가 어떤 요청을 하는 대상을 자원(Resource)이라고 합니다.→ 문서, 사진, 영상 등이 바로 자원이에요!이러한 자원을 식별하기 위해 URI(Uniform Resource Identifier)를 사용합니다.URI (Uniform Resource Identifier)통합 자원 식별자입니다.인터넷의 자원을 식별할 수 있는 유일한 문자열입니다.하위 개념 - URN, URL⇒ 일반적으로 URN을 사용하는 비중이 낮기때문에 URI와 URL을 같은 의미로 사용하기도 해요!URL(Uniform Resource Locator)통합 자원 위치(Location)를 의미합니다.웹상에 자원이 어디 있는지 나타내기 위한 문자열입니다.→ 어디에서 어떻게 리소스를 가져와야 하는지 나타내는 문자열이에요!흔히 말하는 웹 주소, 링크입니다.URN(Uniform Resource Name)통합 자원 이름(Name)을 의미합니다.위치에 독립적인 자원을 위한 유일한 이름 역할을 합니다.리소스를 특정하는 이름입니다.ISBN(국제표준도서번호)URI의 구조☝https://www.aidenlim.dev:80/path/to/resource/?key=value#docshttps://Scheme(Protocol)브라우저가 사용하는 프로토콜입니다.http, https, ftp, file, …www.aidenlim.devHost(Domain name)요청을 처리하는 웹 서버입니다.IP 주소를 바로 사용할 수 있지만 도메인 이름을 받아서 사용하는 것이 일반적입니다.:80Port리소스에 접근할 때 사용되는 일종의 문(게이트)입니다.HTTP: 80 / HTTPS: 443이 표준 포트입니다./path/to/resource/ Path웹 서버에서의 리소스 경로입니다.웹 초기에는 실제 물리적인 위치를 나타냈으나 현재는 추상화된 형태를 표현합니다.?key=valueQuery(Identifier)웹 서버에 제공하는 추가적인 변수입니다.&로 구분되는 Key=Value 형태의 데이터입니다.#docsFragment(Anchor)해당 자원 안에서의 특정 위치 (북마크)를 나타냅니다.HTML 문서의 특정 부분을 보여주기 위한 방법입니다.', 2),
('DRF', 'RESTful API와 JSON', '[SCC] RESTful API와 JSON[SCC] 파이썬 장고 실무 심화/[SCC] RESTful API와 JSON제작:[SCC] RESTful API와 JSON수업 목표RESTful API가 무엇인지 이해하고 요청과 응답의 형태를 설명할 수 있다.목차01. RESTful APIAPI란?RESTful API란?Representational State Transfer02. JSONJSON(JavaScript Object Notation)사용해보기03. 이제 우리는필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. RESTful API✔️API는 어플리케이션과 프로그래밍적으로 소통하는 방법이에요!API란?📕API (Application Programming Interface)⇒ 쉽게 말해 어플리케이션과 프로그래밍적으로 소통하는 방법입니다.CLI (Command Line Interface) - 명령줄로 소통하는 방법GUI (Graphic User Interface) - 그래픽으로 유저와 소통하는 방법API (Application Programming Interface) - 프로그래밍으로 어플리케이션과 소통하는 방법요청뿐만 아니라 응답까지 전체적인 것을 포함한 구조입니다.기계 ↔ 인간뿐만 아니라 소프트웨어 ↔ 소프트웨어간에도 수많은 소통이 존재합니다.☝API를 이용해서 서로 소통하는 것미세먼지를 보여주는 웹 어플리케이션 ↔ 기상청 서버 (기상청 API)카카오 로그인이 있는 웹 어플리케이션 ↔ 카카오 서버 (Kakao API)유튜브 영상을 보여주는 웹 어플리케이션 ↔ 유튜브 서버 (Youtube API)⇒ 이러한 소통에는 서로 약속된 형식이 필요 == APIRESTful API란?📕RESTRepresentational State Transfer웹에 대한 소프트웨어 설계 방법론입니다.→ 2000년 로이 필딩의 논문으로 처음 소개되어 널리 적용되었어요!ALTHello, Roy FieldingALT논문이 궁금하다면 (📃여기를 눌러주세요~)REST의미에 대해서는 여러 해석이 존재합니다.🤔그래서 제 생각은 하나의 웹 페이지를 하나의 상태(State)로 본다면 유저가 링크를 입력하는 것은 상태 전이(State Transfer)가 일어나는 것이며이때 유저가 받는 하나의 상태는 특정한 표현(Representational)에 의해 조작된다는 개념→ 여러분의 생각은 어떠신가요~?API를 만들기 위한 개념이 아닌 RESTful API로 우리가 사용하는 것입니다.📕RESTful API어플리케이션간 소통하는 방법에 REST적인 표현을 더한 것입니다. ⇒  REST 원리를 따라 설계한 API이에요!RESTful API로 작성하면 결과를 보지 않고 요청 형식만 보더라도 추론이 가능합니다.POST /articles/ → 새로운 article 생성GET /articles/→ article 목록 조회GET /articles/1→ 1번 article 조회DELETE /articles/1/→ 1번 article 삭제핵심 규칙자원 : URI로 표현행위 : HTTP Method로 표현표현 자원과 행위를 통해 표현되는 결과물로 일반적으로 JSON 형식을 사용URI는 동사가 아닌 명사의 나열로 사용→ POST /articles/create/ (X)→ POST /articles/ (O)따르지 않더라도 로직과 동작에는 아무런 이상이 없으나, 이 규칙을 따를 때 얻는 이득이 큽니다.일반적으로 GET POST PUT DELETE + PATCH를 사용합니다.⇒ 앞으로 우리는 RESTful API를 설계하고 제공하는 서버를 만들게 될 거예요!02. JSON✔️RESTful API에서 사용하는 JSON 형식에 대해 알아볼까요?JSON(JavaScript Object Notation)JS 표기법을 따른 일종의 데이터를 담는 형식입니다.XML, CSV, YAML 등의 형식도 있지만 JSON을 일반적으로 사용해요!사람이 읽기 쉽고 프로그래밍으로 파싱(분석)하기 쉬습니다.파이썬의 dict처럼 key-value 형식의 구조입니다.사용해보기.json 형식으로 사용합니다.문자는 "으로 묶여야하며 true false , 숫자 등을 사용가능합니다.기본 형식JSON복사["리스트", 1, true, "다양한 자료를 담을 수 있어요"] // list
{ key: value }, // object
​예시JSON복사{
"user1": {
"name": "aiden",
"age": 22,
"tags": ["python", "javascript", "DJANGO"]
},,
"user2": {
			...
	},,
	...
},
​object안에 또 object 등이 담길 수 있습니다.vscode settings.json으로 슬쩍 구조를 엿볼까요👀03. 이제 우리는✔️클라이언트의 요청(Request)에 JSON으로 응답하는 서버를 만들어볼 것입니다!!', 3),
('DRF', 'Response와 Serializer', '[SCC] Response와 Serializer[SCC] 파이썬 장고 실무 심화/[SCC] Response와 Serializer제작:[SCC] Response와 Serializer수업 목표JSON과 Serializer에 대해 이해하고 이를 구현할 수 있다.목차01. JSON Response와 Serialization 새로운 프로젝트 생성Response 만들기 (1)Response 만들기 (2)필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t (꿀팁) VS Code 단축키 모음새로고침F5저장Windows: Ctrl + S macOS: command + S 전체선택Windows: Ctrl + A macOS: command + A잘라내기Windows: Ctrl + X macOS: command + X콘솔창 줄바꿈shift + enter코드정렬Windows: Ctrl + Alt + LmacOS: option + command + L들여쓰기Tab들여쓰기 취소 : Shift + Tab주석Windows: Ctrl + /macOS: command + /01. JSON Response와 Serialization ✔️JSON Response를 만들어볼까요?코드스니펫[코드스니펫] settings.pyPython복사INSTALLED_APPS = [
"DJANGO.contrib.admin",
"DJANGO.contrib.auth",
"DJANGO.contrib.contenttypes",
"DJANGO.contrib.sessions",
"DJANGO.contrib.messages",
"DJANGO.contrib.staticfiles",
# Third-party
"DJANGO_seed",
# Local
"articles",
]
​[코드스니펫] seedingPython복사python manage.py seed articles --number=30
​[코드스니펫] 에러 발생시JSON복사pip install psycopg2
​[코드스니펫] HTML Response - urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
]

​[코드스니펫] HTML Response - viewsPython복사from DJANGO.shortcuts import render
from .models import Article


def article_list_html(request):
    articles = Article.objects.all()
    context = {"articles": articles},
return render(request, "articles/articles.html", context)

​[코드스니펫] HTML Response - templatesHTML복사<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>API PJT</title>
</head>
<body>
<h1>Article List</h1>
<hr><br>

    {% for article in articles %},
        <h3>title: {{ article.title },},</h2>
<p>content: {{ article.content },},</p>
<p>created_at: {{ article.created_at },},</p>
<p>updated_at: {{ article.updated_at },},</p>
<hr>
    {% endfor %},
    
</body>
</html>
​[코드스니펫] Json Response 01 - urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
]
​[코드스니펫] Json Response 01 - viewsPython복사def json_01(request):
    articles = Article.objects.all()
    json_res = []
for article in articles:
        json_res.append(
{
"title": article.title,
"content": article.content,
"created_at": article.created_at,
"updated_at": article.updated_at,
},
)
return JsonResponse(json_res, safe=False)
​[코드스니펫] urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
    path("json-02/", views.json_02, name="json_02"),
]

​[코드스니펫] viewsPython복사from DJANGO.core import serializers

def json_02(request):
    articles = Article.objects.all()
    res_data = serializers.serialize("json", articles)
return HttpResponse(res_data, content_type="application/json")
​새로운 프로젝트 생성📢직접 만들어주세요!api_pjt 라는 이름의 프로젝트를 생성해 주세요.articles 앱을 생성하고 기본적인 url 구조를 만들어주세요./api/v1/articles/로 들어오면 articles 앱의 urls로 연결해 주세요.articles 앱의 models.py를 작성해 주세요.Artcile 모델 클래스를 작성하고 아래 필드를 포함해 주세요.title content created_at updated_at🤔조회를 하려면 데이터가 필요합니다!→ 매번 create하는 것도 너무 힘들고, 자동으로 많이 생성해주는 거 뭐없을까요?DJANGO SeedALTGithub : https://github.com/Brobin/DJANGO-seedDJANGO-seed uses the faker library to generate test data for your DJANGO models.DJANGO-seed allows you to write code to generate models, and seed your database with one simple manage.py command!데이터 생성하기installpip install DJANGO-seed → freeze !settings.py[코드스니펫] settings.pyPython복사INSTALLED_APPS = [
"DJANGO.contrib.admin",
"DJANGO.contrib.auth",
"DJANGO.contrib.contenttypes",
"DJANGO.contrib.sessions",
"DJANGO.contrib.messages",
"DJANGO.contrib.staticfiles",
# Third-party
"DJANGO_seed",
# Local
"articles",
]
​seeding[코드스니펫] seedingPython복사python manage.py seed articles --number=30
​⚠️혹시 이런 에러가 나신다면Python복사ModuleNotFoundError: No module named ''psycopg2''
​[코드스니펫] 에러 발생시Python복사pip install psycopg2
​ALT실제로 30개의 랜덤한 문자열로 채워진 데이터 생성ALTResponse 만들기 (1)💡HTML ResponseALTurls[코드스니펫] HTML Response - urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
]

​views[코드스니펫] HTML Response - viewsPython복사from DJANGO.shortcuts import render
from .models import Article


def article_list_html(request):
    articles = Article.objects.all()
    context = {"articles": articles},
return render(request, "articles/articles.html", context)

​templates[코드스니펫] HTML Response - templatesHTML복사<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>API PJT</title>
</head>
<body>
<h1>Article List</h1>
<hr><br>

    {% for article in articles %},
        <h3>title: {{ article.title },},</h2>
<p>content: {{ article.content },},</p>
<p>created_at: {{ article.created_at },},</p>
<p>updated_at: {{ article.updated_at },},</p>
<hr>
    {% endfor %},
    
</body>
</html>
​💡Json Response 01ALTurls[코드스니펫] Json Response 01 - urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
]
​views[코드스니펫] Json Response 01 - viewsPython복사def json_01(request):
    articles = Article.objects.all()
    json_res = []
for article in articles:
        json_res.append(
{
"title": article.title,
"content": article.content,
"created_at": article.created_at,
"updated_at": article.updated_at,
},
)
return JsonResponse(json_res, safe=False)
​JsonResponseJSON으로 인코딩된 response를 만드는 HttpResponse의 서브 클래스입니다.safe → dict 타입이 아닌 객체를 직렬화(Serialization)하기 위해서는 False로 설정해야해요!📕Serialization란?직렬화(Serialization)객체 또는 데이터 구조를 저장, 전송을 위해 다른 포맷으로 변경하는 것입니다.→ 데이터의 구조는 유지하면서 추후 재구성이 가능한 포맷으로 변환해요!현재 Python 객체 형태인 Queryset 혹은 Model의 Instance를 전송 가능한 형태로 직렬화를 통해 JSON, XML, YAML 등의 형태로 변환하는 것입니다.DJANGO도 내부적으로 다른 데이터 포맷으로 쉽게 직렬화 할 수 있는 기능을 제공합니다.Response 만들기 (2)ALTurls[코드스니펫] urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
    path("json-02/", views.json_02, name="json_02"),
]

​views[코드스니펫] viewsPython복사from DJANGO.core import serializers

def json_02(request):
    articles = Article.objects.all()
    res_data = serializers.serialize("json", articles)
return HttpResponse(res_data, content_type="application/json")
​✅DJANGO는 위와 같이 내부적으로 serializer를 제공하지만 모델 구조에 한정된 구조직렬화된 데이터의 구조를 변경하거나 새로운 필드를 구성하는 것에 많은 추가 작업이 필요합니다.유연한 API를 위한 기능이라기보다 모델 구조로 저장되어있는 데이터를 export 하는 용도에 가깝습니다.⇒ 모델에 종속적이지 않고 유연하지만 사용하기 편한 Serializer의 필요성!', 4),
('DRF', 'DJANGO REST Framework 시작하기', '[SCC] DJANGO REST Framework 시작하기[SCC] 파이썬 장고 실무 심화/[SCC] DJANGO REST Framework 시작하기제작:[SCC] DJANGO REST Framework 시작하기수업 목표DRF가 무엇인지 이해하고 기본 설정을 할 수 있다.목차01. DJANGO REST Framework일단 사용해보기02. PostmanPostman 📮Postman 둘러보기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. DJANGO REST Framework✔️이제부터는 DRF를 사용해서 JSON을 응답하는 API를 설계하고 구현해봅시다!코드스니펫[코드스니펫] urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
    path("json-02/", views.json_02, name="json_02"),
    path("json-DRF/", views.json_DRF, name="json_DRF"),
]
​[코드스니펫] serializers.pyPython복사from rest_framework import serializers
from .models import Article


class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"

​[코드스니펫] viewsPython복사from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer

@api_view(["GET"])
def json_DRF(request):
    articles = Article.objects.all()
    serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
​[코드스니펫] my_program.pyPython복사import requests

url = "http://127.0.0.1:8000/api/v1/articles/json-DRF"
response = requests.get(url)
print(response)
print(response.json())
​✅DRF 설치 및 설정Python복사pip install DJANGOrestframework
​settings.pyPython복사INSTALLED_APPS = [
...
''rest_framework'',
...
]
​→ freeze !일단 사용해보기urls[코드스니펫] urlsPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("html/", views.article_list_html, name="article_list_html"),
    path("json-01/", views.json_01, name="json_01"),
    path("json-02/", views.json_02, name="json_02"),
    path("json-DRF/", views.json_DRF, name="json_DRF"),
]
​serializers.py (생성)[코드스니펫] serializers.pyPython복사from rest_framework import serializers
from .models import Article


class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"

​views[코드스니펫] viewsPython복사from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer

@api_view(["GET"])
def json_DRF(request):
    articles = Article.objects.all()
    serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
​일단 느낌이 다르잖아요? ^~^ALTAPI는 소프트웨어끼리 소통하는 방법⇒ 직접 파이썬 프로그램을 만들어서 콜해봅시다!my_program.py[코드스니펫] my_program.pyPython복사import requests

url = "http://127.0.0.1:8000/api/v1/articles/json-DRF"
response = requests.get(url)
print(response)
print(response.json())
​ALT데이터가 잘 나온다 ! 이제 이 데이터를 사용해서 보여주는건 Client의 몫이다.ALT📕DJANGO REST Framework (DRF)DJANGO를 이용해서 API를 구축하는 기능을 제공하는 라이브러리입니다.DJANGO의 Form, ModelForm과 굉장히 비슷하게 구성 및 작동합니다.02. Postman✔️앞으로 우리를 도와줄 Postman에 대해 알아볼까요?🤔우리에게 필요한 도구는 API를 제공하는 서버를 개발하고나면 해당 API를 Call 할 수 있는 ‘무언가’가 필요합니다.⇒ API를 호출하고 결과도 보고 해야하니까요!Postman 📮가입 및 설치를 진행해 주세요!
https://www.postman.com/ALT개발자가 API를 디자인, 테스트, 문서화, 공유를 할 수 있도록 도와주는 소프트웨어입니다.API 테스트, 환경 관리, 협업 등을 위한 강력한 기능을 제공하여 보다 효율적으로 API를 개발하고 테스트 할 수 있게 도와줍니다.Postman 둘러보기ALT웹에서도 사용할 수 있지만 설치해서 사용하는 것을 추천해요 👍ALTMy workspace에 들어갑니다.ALT새로운 collection을 생성합니다.ALTrequest를 생성하고 정의합니다.ALT보낼 주소를 입력하고 보내기를 합니다.ALT이렇게 하나하나의 API를 작성하고 테스트하면서 개발을 진행합니다.Workspace를 팀원끼리 공유하여 협업이 가능합니다. ⇒  최대 3명까지 무료로 이용가능하고, 그 이상은 유료입니다!', 5),
('DRF', 'DRF Single Model CRUD', '[SCC] DRF Single Model CRUD[SCC] 파이썬 장고 실무 심화/[SCC] DRF Single Model CRUD제작:[SCC] DRF Single Model CRUD수업 목표DRF를 사용하여 단일 모델의 CRUD를 구현할 수 있다.목차01. DRF Single Model02. 백문이불여일타(百見而不如一作)url 및 view 정리API 설계Article 목록 조회 (List)Article 상세 조회 (Detail)Article 생성 (Create)Article 삭제 (Delete)Article 수정 (Update)필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. DRF Single Model✔️DRF Single Model에 대해 알아볼까요~?✅단일 모델에서 데이터를 조회해서 직렬화(Serialization)하여 JSON으로 응답하기를 반복합니다.ModelSerializer결국 Model의 여러가지 필드들을 어떻게 직렬화해서 데이터의 포맷을 잡을지가 핵심입니다.DJANGO의 Model → ModelForm 사용과 굉장히 유사한 형태입니다.02. 백문이불여일타(百見而不如一作)✔️백번 듣는 것보다 직접 한번 쳐보는 게 제일이겠죠?코드스니펫[코드스니펫] api_pjt/urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/v1/articles/", include("articles.urls")),
]
​[코드스니펫] articles/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
]
​[코드스니펫] articles/views.pyPython복사from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer
from .models import Article

# Create your views here.
​[코드스니펫] List- articles/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
]

​[코드스니펫] List- articles/views.pyPython복사from DJANGO.shortcuts import get_object_or_404
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer
from .models import Article


@api_view(["GET"])
def article_list(request):
    articles = Article.objects.all()
    serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)

​[코드스니펫] @api_view() - articles/serializers.pyPython복사from rest_framework import serializers
from .models import Article


class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"

​[코드스니펫] Detail - urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
    path("<int:pk>/", views.article_detail, name="article_detail"),
]
​[코드스니펫] Detail - articles/views.pyPython복사@api_view(["GET"])
def article_detail(request, pk):
    article = get_object_or_404(Article, pk=pk)
    serializer = ArticleSerializer(article)
return Response(serializer.data)
​[코드스니펫] Create - urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
    path("<int:pk>/", views.article_detail, name="article_detail"),
]
​[코드스니펫] Create - views.py (1차)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
print(request.data)
​[코드스니펫] Create - views.py (2차)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid():
            serializer.save()
return Response(serializer.data, status=201)
return Response(serializer.errors, status=400)
​[코드스니펫] from rest_framework import statusPython복사from rest_framework import status

@api_view(["GET", "POST"])
def article_list(request):
...
elif request.method == "POST":
...
return Response(serializer.data, status=status.HTTP_201_CREATED)
return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
​[코드스니펫] Create - views.py (완성)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​[코드스니펫] Delete - views.py Python복사@api_view(["GET", "DELETE"])
def article_detail(request, pk):
    article = get_object_or_404(Article, pk=pk)
if request.method == "GET":
        serializer = ArticleSerializer(article)
return Response(serializer.data)
elif request.method == "DELETE":
        article.delete()
        data = {"delete": f"Article({pk},) is deleted."},
return Response(data, status=status.HTTP_200_OK)
​url 및 view 정리api_pjt/urls.py[코드스니펫] api_pjt/urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/v1/articles/", include("articles.urls")),
]
​articles/urls.py[코드스니펫] articles/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
]
​articles/views.py[코드스니펫] articles/views.pyPython복사from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer
from .models import Article

# Create your views here.
​API 설계APIsArticle 목록조회GET/articles/Article 상세조회GET/articles/<int:article_id>/Article 생성POST/articles/Article 수정PUT/articles/<int:article_id>/Article 삭제DELETE/articles/<int:article_id>/NameMethodEndpointArticle 목록 조회 (List)articles/urls.py[코드스니펫] List- articles/urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
]

​articles/views.py[코드스니펫] List- articles/views.pyPython복사from DJANGO.shortcuts import get_object_or_404
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ArticleSerializer
from .models import Article


@api_view(["GET"])
def article_list(request):
    articles = Article.objects.all()
    serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)

​@api_view()아무것도 적지 않으면 GET 만 허용, 이외의 요청일경우 405 Method Not AllowedDRF의 함수형 뷰의경우 필수적으로 작성이 필요합니다.articles/serializers.py[코드스니펫] @api_view() - articles/serializers.pyPython복사from rest_framework import serializers
from .models import Article


class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"

​Postman에 등록하고 조회하기ALTArticle 상세 조회 (Detail)urls.py[코드스니펫] Detail - urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
    path("<int:pk>/", views.article_detail, name="article_detail"),
]
​articles/views.py[코드스니펫] Detail - articles/views.pyPython복사@api_view(["GET"])
def article_detail(request, pk):
    article = get_object_or_404(Article, pk=pk)
    serializer = ArticleSerializer(article)
return Response(serializer.data)
​PostmanALTArticle 생성 (Create)🤔어떤 데이터를 받아야할까요?title과 content ! 어떻게 받아야할까요? JSON으로 주고 받아요! → Form도 가능해요!JSON복사// request body
{
"title": "제목제목",
"content": "내용내용"
},
​urls.py[코드스니펫] Create - urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
    path("", views.article_list, name="article_list"),
    path("<int:pk>/", views.article_detail, name="article_detail"),
]
​기존에 이미 /articles/ 경로는 존재해요!해당 경로에서 Method에 따라 처리해요!views.py (1차)[코드스니펫] Create - views.py (1차)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
print(request.data)
​ALTPostman 추가 및 설정ALTALT이 데이터를 사용해서 Article.objects 를 이용해 Data를 생성해도 되지만DRF의 Serializer는 단순 Serialization외에도 Model을 이용한 다양한 기능을 제공합니다.→ Model Form이 다양한 기능을 제공한 것 처럼요!views.py (2차)[코드스니펫] Create - views.py (2차)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid():
            serializer.save()
return Response(serializer.data, status=201)
return Response(serializer.errors, status=400)
​ALTALTfrom rest_framework import status[코드스니펫] from rest_framework import statusPython복사from rest_framework import status

@api_view(["GET", "POST"])
def article_list(request):
...
elif request.method == "POST":
...
return Response(serializer.data, status=status.HTTP_201_CREATED)
return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
​조금 더 읽기 쉬운 status code 구성을 제공합니다.상태코드를 정수로 명시해도 되지만 아래와 같은 형식을 권장합니다.→ 읽기 쉽고 실수할 일 없어요!views.py (완성)[코드스니펫] Create - views.py (완성)Python복사@api_view(["GET", "POST"])
def article_list(request):
if request.method == "GET":
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
elif request.method == "POST":
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​raise_exception=True is_valid 하지 않을시 serializers.ValidationError를 발생시키는 옵션입니다.DRF 내부의 예외처리 로직에 의해 처리되어 400 응답을 반환합니다.Article 삭제 (Delete)urls는 이미 작성되어 있습니다.views[코드스니펫] Delete - views.py Python복사@api_view(["GET", "DELETE"])
def article_detail(request, pk):
    article = get_object_or_404(Article, pk=pk)
if request.method == "GET":
        serializer = ArticleSerializer(article)
return Response(serializer.data)
elif request.method == "DELETE":
        article.delete()
        data = {"delete": f"Article({pk},) is deleted."},
return Response(data, status=status.HTTP_200_OK)
​ALTArticle 수정 (Update)urls는 이미 작성되어 있습니다.views.pyALT🤔만약에 모든 필드를 수정하는 것이 아니라 몇몇의 필드만 수정하고싶다면?ALT공식 문서에 모든 것이 나와있습니다.
https://www.DJANGO-rest-framework.org/api-guide/serializers/#partial-updatesALTALTForm data도 처리 가능합니다.ALT', 6),
('DRF', 'DRF Class Based View 사용하기', '[SCC] DRF Class Based View 사용하기[SCC] 파이썬 장고 실무 심화/[SCC] DRF Class Based View 사용하기제작:[SCC] DRF Class Based View 사용하기수업 목표Class Based View를 사용해서 API를 제공할 수 있다.목차01. Class Based View (CBV)Class Based View 특징Class Based View 종류CBV 사용해보기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. Class Based View (CBV)✔️클래스형 뷰 (CBV)에 대해 알아볼까요?코드스니펫[코드스니펫] ArticleListAPIViewPython복사from rest_framework.views import APIView

class ArticleListAPIView(APIView):
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​[코드스니펫] urls.py 변경Python복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
# path("", views.article_list, name="article_list"),
    path("", views.ArticleListAPIView.as_view(), name="article_list"),
...
]
​[코드스니펫] ArticleDetailAPIViewPython복사class ArticleDetailAPIView(APIView):
# 두 번 이상 반복되는 로직은 함수로 빼면 좋습니다👀
def get_object(self, pk):
return get_object_or_404(Article, pk=pk)
def get(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleSerializer(article)
return Response(serializer.data)
def put(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleSerializer(article, data=request.data, partial=True)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data)
def delete(self, request, pk):
        article = self.get_object(pk)
        article.delete()
        data = {"pk": f"{pk}, is deleted."},
return Response(data, status=status.HTTP_200_OK)
​[코드스니펫] urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
# path("", views.article_list, name="article_list"),
# path("<int:pk>/", views.article_detail, name="article_detail"),
    
    path("", views.ArticleListCreateAPIView.as_view(), name="article_list_create"),
    path("<int:pk>/", views.ArticleDetailAPIView.as_view(), name="article_detail"),
]
​📕DJANGO의 View는 두가지 방식으로 작성할 수 있습니다.함수형 뷰 (Function Based View, FBV)클래스형 뷰 (Class Based View, CBV)⇒ DRF 역시 두가지 방식의 View 형태로 작성이 가능합니다!Class Based View 특징클래스형 뷰에서는 특정 Http Method에 대한 처리를 함수로 분리할 수 있습니다.→ GET요청에 대한 처리는 get()에서, POST 요청에 대한 처리는 post()에서 정의가 가능해요!클래스를 사용하기 때문에 코드의 재사용성과 유지보수성이 향상됩니다.기본 APIView외에도 여러 편의를 제공하는 다양한 내장 CBV가 존재합니다.Class Based View 종류APIView - DRF CBV의 베이스 클래스GenericAPIView 일반적인 API 작성을 위한 기능이 포함된 클래스보통 CRUD 기능이 대부분인 상황을 위해 여러가지 기능이 미리 내장되어 있습니다.Mixin재사용 가능한 여러가지 기능을 담고있느 클래스말그대로 여러 클래스를 섞어서 사용하기 위한 클래스ListModelMixin - 리스트 반환 API를 만들기 위해 상속 받는 클래스CreateModelMixin - 새로운 객체를 생성하는 API를 만들기위해 상속 받는 클래스 ViewSets 여러 엔드포인트(endpoint)를 한 번에 관리할 수 있는 클래스RESTful API에서 반복되는 구조를 더 편리하게 작성할 수 있는 방법을 제공합니다.⚠️기본이 되는 APIView를 이용해서 학습할 예정이며, 추후 필요시 하나씩 적용해보는 것을 권장드려요!CBV 사용해보기ArticleListAPIView[코드스니펫] ArticleListAPIViewPython복사from rest_framework.views import APIView

class ArticleListAPIView(APIView):
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​안쪽 로직 자체는 변동없습니다.urls.py 변경[코드스니펫] urls.py 변경Python복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
# path("", views.article_list, name="article_list"),
    path("", views.ArticleListAPIView.as_view(), name="article_list"),
...
]
​CBV를 사용할 때는 참조하는 형식이 변경됩니다.as_view()메서드를 사용해서 URL 패턴에 연결합니다.→ 클래스 자체를 넘기는 것이 아니라 as_view()메서드를 사용해서 호출 가능한 함수로 변환해요!ArticleDetailAPIView[코드스니펫] ArticleDetailAPIViewPython복사class ArticleDetailAPIView(APIView):
# 두 번 이상 반복되는 로직은 함수로 빼면 좋습니다👀
def get_object(self, pk):
return get_object_or_404(Article, pk=pk)
def get(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleSerializer(article)
return Response(serializer.data)
def put(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleSerializer(article, data=request.data, partial=True)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data)
def delete(self, request, pk):
        article = self.get_object(pk)
        article.delete()
        data = {"pk": f"{pk}, is deleted."},
return Response(data, status=status.HTTP_200_OK)
​안쪽 로직은 변경되는 것이 없습니다.urls.py[코드스니펫] urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
# path("", views.article_list, name="article_list"),
# path("<int:pk>/", views.article_detail, name="article_detail"),
    
    path("", views.ArticleListAPIView.as_view(), name="article_list"),
    path("<int:pk>/", views.ArticleDetailAPIView.as_view(), name="article_detail"),
]
​📚CBV 정리FBV와 CBV 둘 중 무엇을 사용해도 괜찮아요!CBV를 구조적으로 잘 사용할 경우 코드 재사용성과 유지 보수성이 향상돼요!간단한 로직은 FBV로 작성해도 충분해요!', 7),
('DRF', 'Relationship과 DRF', '[SCC] Relationship과 DRF[SCC] 파이썬 장고 실무 심화/[SCC] Relationship과 DRF제작:[SCC] Relationship과 DRF수업 목표Model Relationship 구조를 DRF를 이용해서 API를 제공할 수 있다.필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)🥕수업 코드 공유08_Relationship과 DRF.zip37.0KB목차01. DRF with Relationship먼저 한 번 해볼까요? 😃먼저 생각해보기 🤔 특정 Article의 댓글 조회새로운 댓글 작성댓글 삭제댓글 수정모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. DRF with Relationship✔️Relationship이 있는 데이터를 직렬화(Serialization)하여 제공하는 방법을 학습해 볼까요?💡특별할 건 없습니다 ^~^ 이미 배운 것들을 이용해서 해보는 것입니다!코드스니펫[코드스니펫] articles/models.pyPython복사class Comment(models.Model):
    article = models.ForeignKey(
        Article, on_delete=models.CASCADE, related_name="comments"
)
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
​[코드스니펫] articles/serializers.pyPython복사class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
​[코드스니펫] DJANGO seed로 생성하기Python복사python manage.py seed articles --number=20
​먼저 한 번 해볼까요? 😃Articles 앱에 Comment 모델을 작성하고 Migrate 해주세요.Comment 모델은 content, created_at, update_at 을 가져야 합니다.fk 관계도 설정해 주세요.articles 에 대해 20개의 랜덤한 데이터를 생성해 주세요. (seeding)CommentSerializer 를 작성해 주세요.모든 fields를 대상으로 합니다.✅이런식으로 작성하면 됩니다![코드스니펫] articles/models.pyPython복사class Comment(models.Model):
    article = models.ForeignKey(
        Article, on_delete=models.CASCADE, related_name="comments"
)
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
​[코드스니펫] articles/serializers.pyPython복사class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
​[코드스니펫] DJANGO seed로 생성하기Python복사python manage.py seed articles --number=20
​먼저 생각해보기 🤔 💡댓글 서비스에는 어떤 API들이 필요할까요? 한 번 생각해봅시다!Comment APIs특정 Article의 댓글 조회GET/articles/<int:pk>/comments/새로운 댓글 작성POST/articles/<int:pk>/comments/댓글 수정PUT/articles/comments/<int:comment_pk>/댓글 삭제DELETE/articles/comments/<int:comment_pk>/NameMethodEndpoint이 정도면 될 것 같습니다~ 😊특정 Article의 댓글 조회코드스니펫[코드스니펫] (특정 Article의 댓글 조회) views.pyPython복사class CommentListAPIView(APIView):
def get(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        comments = article.comments.all()
        serializer = CommentSerializer(comments, many=True)
return Response(serializer.data)
def post(self, request, pk):
pass
​[코드스니펫] (특정 Article의 댓글 조회) urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
...
    path(
"<int:pk>/comments/",
        views.CommentListAPIView.as_view(),
        name="comment_list",
),
]
​[코드스니펫] 특정 모델에 데이터 넣기Python복사python manage.py seed articles --number=20 --seeder "Comment.article_id" 2
​[코드스니펫] (특정 Article의 댓글 조회) views.pyPython복사class CommentListAPIView(APIView):
def get(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        comments = article.comments.all()
        serializer = CommentSerializer(comments, many=True)
return Response(serializer.data)
def post(self, request, pk):
pass
​[코드스니펫] (특정 Article의 댓글 조회) urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
...
    path(
"<int:pk>/comments/",
        views.CommentListAPIView.as_view(),
        name="comment_list",
),
]
​🙂이전에 배운것에서 전혀 새로울게 없습니다!조회하고 싶은데… 랜덤이라서 특정 article에는 댓글이 많이없네요..😞💡seeding을 하게 되면 articles에 있는 모든 모델 중에서 총 20개의 데이터가 랜덤하게 생기다 보니 어떤 게시글에는 댓글이 없고 어떤 게시글에는 있으니 직접 확인해보며 개발하기가 쉽지 않습니다.DJANGO-seed에서 앱이 아니라 특정 모델만 지정을 할 수는 없을까요? 👀예를 들어 3번 게시글에 20개의 랜덤한 댓글을 등록하는 식입니다.이럴 때 가장 좋은 방법은 바로 공.식.문.서를 찾아보는 것입니다.☝공식문서를 한 번 찾아볼까요?ALT어떤 모델의 어떤 필드에 특정 값을 넣을 수 있는 방법이 있다는 설명을 찾았습니다!ALT이렇게 제공되는 명령어 말고도 아예 파이썬 스크립트를 작성해서 완전히 커스텀 하는것도 가능합니다.[코드스니펫] 특정 모델에 데이터 넣기Python복사python manage.py seed articles --number=20 --seeder "Comment.article_id" 2
​ALT새로운 댓글 작성코드스니펫[코드스니펫] Comment JSONJSON복사{
"content": "댓글댓글"
},
​[코드스니펫] CommentListAPIView (1)Python복사class CommentListAPIView(APIView):
...
def post(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        serializer = CommentSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​[코드스니펫] CommentListAPIView (2) Python복사class CommentListAPIView(APIView):
...
def post(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        serializer = CommentSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save(article=article)
return Response(serializer.data, status=status.HTTP_201_CREATED)
​[코드스니펫] CommentSerializerPython복사class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
read_only_fields = ("article",)
​데이터는 뭐가 필요할까요?[코드스니펫] Comment JSONJSON복사{
"content": "댓글댓글"
},
​어떤 article인지는 url에 있으니까![코드스니펫] CommentListAPIView (1)Python복사class CommentListAPIView(APIView):
...
def post(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        serializer = CommentSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​☝어디 한 번 API 콜을 해볼까요?ALT어엇! ALT[코드스니펫] CommentListAPIView (2)Python복사class CommentListAPIView(APIView):
...
def post(self, request, pk):
        article = get_object_or_404(Article, pk=pk)
        serializer = CommentSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save(article=article)
return Response(serializer.data, status=status.HTTP_201_CREATED)
​comment는 생성시에 article 모델의 객체 정보가 필요합니다! (FK)save() 는 인스턴스를 저장하는 과정에서 추가적인 데이터가 필요한 경우 받을 수 있습니다.🤔하지만..ALT여전히 내 콜을 받아주지 않는 이 녀석ALTread_only_fields serializer.is_valid 를 통과하지 못합니다.→  serializer 입장에서는 내가 넘겨받은 데이터에 article 정보가 없기 때문입니다!이럴 때는 read_only_fields 를 설정해서 특정 필드를 직렬화 로직에 포함하지 않고 반환 값에만 필드를 포함하도록 할 수 있습니다.[코드스니펫] CommentSerializerALT댓글 삭제코드스니펫[코드스니펫] (delete) urls.py[코드스니펫] (delete) views.py[코드스니펫] (delete) urls.py[코드스니펫] (delete) views.pyALT댓글 수정코드스니펫[코드스니펫] (update) views.py[코드스니펫] (update) views.pyALT😊어떤가요? 이전에 배웠던 것들과 크게 다르지 않죠?
결국 Serializer 잘 신경써주면 나머지는 그동안 배워왔던 것들의 
반복적인 작업이라고 할 수 있습니다!', 8),
('DRF', 'Serializer 활용하기', '[SCC] Serializer 활용하기[SCC] 파이썬 장고 실무 심화/[SCC] Serializer 활용하기제작:[SCC] Serializer 활용하기수업 목표Serializer를 활용해 나만의 응답 구조를 만들 수 있다.필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)목차01. Serializer 활용하기
역참조 데이터 추가하기Article에 Comment 추가하기커스텀 필드 추가하기응답 구조만 변경하기상속 활용하기모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. Serializer 활용하기✔️Serializer를 여러가지 상황에 맞춰서 활용하는 방법을 알아봅시다!코드스니펫[코드스니펫] Article에 Comment 추가하기Python복사from rest_framework import serializers
from .models import Article, Comment


class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
        read_only_fields = ("article",)
class ArticleSerializer(serializers.ModelSerializer):
comments = CommentSerializer(many=True, read_only=True)
class Meta:
        model = Article
        fields = "__all__"
​[코드스니펫] 댓글 수 필드 추가하기Python복사class ArticleSerializer(serializers.ModelSerializer):
    comments = CommentSerializer(many=True, read_only=True)
comments_count = serializers.IntegerField(source="comments.count", read_only=True)
class Meta:
        model = Article
        fields = "__all__"
​[코드스니펫] 이외 많이 찾는 필드Python복사from DJANGO.contrib.auth.models import User
from DJANGO.utils.timezone import now
from rest_framework import serializers

class UserSerializer(serializers.ModelSerializer):
    days_since_joined = serializers.SerializerMethodField()
class Meta:
        model = User
        fields = ''__all__''
def get_days_since_joined(self, obj):
return (now() - obj.date_joined).days
​[코드스니펫] to_representation()Python복사class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
        read_only_fields = ("article",)
def to_representation(self, instance):
        ret = super().to_representation(instance)
        ret.pop("article")
return ret
​[코드스니펫] (상속을 이용해서 처리하기) serializers.pyPython복사from rest_framework import serializers
from .models import Article, Comment

...
class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"
class ArticleDetailSerializer(ArticleListSerializer):
    comments = CommentSerializer(many=True, read_only=True)
    comments_count = serializers.IntegerField(source="comments.count", read_only=True)
​[코드스니펫] (상속을 이용해서 처리하기) views.pyPython복사class ArticleListCreateAPIView(APIView):
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleListSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleListSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
class ArticleDetailAPIView(APIView):
def get_object(self, pk):
return get_object_or_404(Article, pk=pk)
def get(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleDetailSerializer(article)
return Response(serializer.data)
def put(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleDetailSerializer(article, data=request.data, partial=True)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data)
​🥸백엔드 개발자로 일을 하고있다고 상상해보면 다음과 같은 요청을 받을 수 있을 것 같습니다.
역참조 데이터 추가하기저기요 - 이거 있잖아요 👀 Article 있잖아요?ALT저희 Article 상세 조회하면 화면에서 댓글도 같이 보여야 해서요.
지금은 콜을 두번해야해서 그런데 콜 하나로 묶어주실래요? 동료 개발자Python복사{
"id": 1,
"title": "제목제목제목",
"content": "내용내용내용",
"created_at": "2023-12-28T08:02:08.364474Z",
"updated_at": "2024-04-06T08:01:00.260880Z"
},
이걸 수정해달라는거지 …?ALT​→ 우리가 할 일Python복사{
"id": 1,
"title": "제목제목제목",
"content": "내용내용내용",
"created_at": "2023-12-28T08:02:08.364474Z",
"updated_at": "2024-04-06T08:01:00.260880Z",
"comments" : {
// 여기에 여러가지 코멘트가 함께 들어가면 좋을 것 같은데🤔
    },
},
​🙂우리는 문제를 해결하는 개발자! 한 번 해봅시다! Article에 Comment 추가하기Nested RelationshipsSerializer는 기존 필드를 override 하거나 추가적인 필드를 구성할 수 있으며이때 모델 사이에 참조 관계가 있다면 해당 필드를 포함하거나 중첩할 수 있습니다.결국 우리가 조작해줘야할 것은~~ Serializer!현재 Article → Comments 접근이 필요 == 역참조역참조시 사용할 수 있는 comment_set 이 있으나 우리는 comments 로 명명합시다.[코드스니펫] Article에 Comment 추가하기Python복사from rest_framework import serializers
from .models import Article, Comment


class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
        read_only_fields = ("article",)
class ArticleSerializer(serializers.ModelSerializer):
comments = CommentSerializer(many=True, read_only=True)
class Meta:
        model = Article
        fields = "__all__"
​→ comments 라는 기존에 존재하는 매니저 이름으로 된 필드를 다시 override 하는데 표현 방식은 CommentSerializer 를 사용합니다.커스텀 필드 추가하기아, 감사합니다. 그런데 혹시 👀ALT저희 화면에 보면 댓글수도 함께 표시가 되고 있어서요,
물론 데이터 받아와서 제가 카운트해도 되긴하는데, 
데이터 내려주실 때 한 번에 주실 수 있을까요?동료 개발자댓글 수 필드 추가하기[코드스니펫] 댓글 수 필드 추가하기Python복사class ArticleSerializer(serializers.ModelSerializer):
    comments = CommentSerializer(many=True, read_only=True)
comments_count = serializers.IntegerField(source="comments.count", read_only=True)
class Meta:
        model = Article
        fields = "__all__"
​comments 의 경우 우리의 DJANGO가 자동으로 추가해주는 매니저이기에 바로 사용할 수 있었으나comments_count 는 직접 필드를 추가해주는 것이 필요합니다.
 source 속성을 이용하여 데이터 값을 전달하는 것 가능합니다, 우리의 경우 Queryset API중 하나인 count() 를 이용하여 전달해주면 됩니다!source SerializerField의 속성으로 해당 필드를 채우는데 사용하는 속성을 지정합니다.점 표기법을 이용하여 내부 속성에 접근할 수 있습니다.ALT이외 많이 찾는 필드Serializer Method Fields
https://www.DJANGO-rest-framework.org/api-guide/fields/#serializermethodfield[코드스니펫] 이외 많이 찾는 필드Python복사from DJANGO.contrib.auth.models import User
from DJANGO.utils.timezone import now
from rest_framework import serializers

class UserSerializer(serializers.ModelSerializer):
    days_since_joined = serializers.SerializerMethodField()
class Meta:
        model = User
        fields = ''__all__''
def get_days_since_joined(self, obj):
return (now() - obj.date_joined).days
​get_ 가 붙은 필드명의 함수가 실행되어 필드로 추가됩니다.응답 구조만 변경하기저 그리고 👀ALT아래와 같은 댓글 조회에서 article 로 내려오는 필드 삭제 부탁드릴게요.
오히려 헷갈려서요.동료 개발자JSON복사[
{
"id": 22,
"content": "수정댓글",
"created_at": "1972-09-02T22:34:52.315416Z",
"updated_at": "2024-04-06T12:07:29.461800Z",
"article": 1
},,
{
"id": 23,
"content": "Try four often third side purpose. Detail require break believe arrive. Wonder avoid out network director.",
"created_at": "2018-01-01T10:48:02.905154Z",
"updated_at": "2017-04-27T18:30:10.763704Z",
"article": 1
},,
​우리의 심정모델필드나 serializer 필드는 변경하지 않고 딱 보여지는 부분만 변경하는거 뭐없나? 🤔공식문서에는 모든 해답이 있습니다!
https://www.DJANGO-rest-framework.org/api-guide/fields/#custom-fieldsALTto_representation()[코드스니펫] to_representation()Python복사class CommentSerializer(serializers.ModelSerializer):
class Meta:
        model = Comment
        fields = "__all__"
        read_only_fields = ("article",)
def to_representation(self, instance):
        ret = super().to_representation(instance)
        ret.pop("article")
return ret
​Serialization이후 보여지는 결과에 대해 자동으로 내부적으로 불리는 함수입니다.이 메서드를 override 하여 커스텀 형식으로 변경 가능합니다.ALT상속 활용하기ALT죄송한데, 지금 게시글 목록 조회에서도 댓글 관련 필드들이 내려오고 있는데, 
이건 상세 조회에서만 나오게 해주세요. 
(내가 이런것까지 말해줘야하나) 참 …  예? 아 혼잣말이었습니다 ㅎㅎㅎ동료개발자상속을 이용해서 처리하기[코드스니펫] 상속을 이용해서 처리하기 serializers.pyPython복사from rest_framework import serializers
from .models import Article, Comment

...
class ArticleSerializer(serializers.ModelSerializer):
class Meta:
        model = Article
        fields = "__all__"
class ArticleDetailSerializer(ArticleSerializer):
    comments = CommentSerializer(many=True, read_only=True)
    comments_count = serializers.IntegerField(source="comments.count", read_only=True)
​[코드스니펫] 상속을 이용해서 처리하기 views.pyPython복사class ArticleListAPIView(APIView):
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
class ArticleDetailAPIView(APIView):
def get_object(self, pk):
return get_object_or_404(Article, pk=pk)
def get(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleDetailSerializer(article)
return Response(serializer.data)
def put(self, request, pk):
        article = self.get_object(pk)
        serializer = ArticleDetailSerializer(article, data=request.data, partial=True)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data)
​✅이제부터는 사실이제는 공식문서가 교재입니다.지금부터는 누가 더 많이 공식문서를 참고하고 구현해본 경험이 있는가가 실력을 가릅니다.지식은 전부 공개되어있는데 찾는 방법을 모르는 시대.Copy & Paste Driven … Noooo!', 9),
('DRF', 'Token Auth with JWT', '[SCC] Token Auth with JWT[SCC] 파이썬 장고 실무 심화/[SCC] Token Auth with JWT제작:[SCC] Token Auth with JWT수업 목표JWT를 이용한 인증 과정을 이해하고 구현할 수 있다.목차01. 시작하기 전에해주세요 😃02. JSON Web Token, JWTSession & CookieJSON Web Token, JWT처리방식세션과의 차이장점과 단점JWT 구조Access Token과 Refresh TokenJWT 구현하기JWT Settings03. 접근 제한하기유저가 아니면 Article 기능 접근 제한Token을 이용해서 인증하기Token 유저정보 가져오기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 시작하기 전에✔️들어가기에 앞서 구현하셔야 하는 부분이 있습니다. 한 번 구현해 볼까요?코드스니펫[코드스니펫] urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/v1/articles/", include("articles.urls")),
    path("api/v1/accounts/", include("accounts.urls")),
]
​[코드스니펫] accounts/models.pyPython복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


class User(AbstractUser):
pass
​[코드스니펫] settings.pyPython복사AUTH_USER_MODEL = "accounts.User"
​[코드스니펫] (랜덤한 모델에 50개) seedingPython복사python manage.py seed articles --number=50
​[코드스니펫] (특정 모델에 20개) seedingPython복사python manage.py seed articles --number=20 --seeder "Comment.article_id" 1
​해주세요 😃데이터베이스를 초기화하고 비어있는 Custom User Model을 만들어 주세요.accounts 앱을 생성하고 User Model을 작성해 주세요.settings 에 AUTH_USER_MODEL 도 설정해야 합니다./api/v1/accounts/ 로 들어오면 accounts 앱의 urls로 연결해 주세요.superuser 를 하나 생성해 주세요.DB를 초기화 했으니 seeding을 이용해서 article과 comment 데이터를 채워주세요.✅이렇게 되어야겠죠?[코드스니펫] urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/v1/articles/", include("articles.urls")),
    path("api/v1/accounts/", include("accounts.urls")),
]
​[코드스니펫] accounts/models.pyPython복사from DJANGO.db import models
from DJANGO.contrib.auth.models import AbstractUser


class User(AbstractUser):
pass
​[코드스니펫] settings.pyPython복사AUTH_USER_MODEL = "accounts.User"
​[코드스니펫] (랜덤한 모델에 50개) seedingPython복사python manage.py seed articles --number=50
​[코드스니펫] (특정 모델에 20개) seedingPython복사python manage.py seed articles --number=20 --seeder "Comment.article_id" 1
​02. JSON Web Token, JWT✔️JWT란 무엇일까요?Session & Cookie⭐쿠키 (Cookie)웹 브라우저와 요청과 응답을 주고받을때 사용하는 데이터 조각쿠키는 도메인에 제한적이며 유효기간이 정해져있음Auth 외에도 다양한 방식으로 활용⭐세션 (Session)stateless한 HTTP 특징을 보완하기 위한 방법세션 DB를 이용해서 유저의 정보를 기억하며
Session ID라고 하는 랜덤한 Key를 쿠키에 담아서 Auth에 활용쿠키를 사용해서 Session ID를 주고 받는 것JSON Web Token, JWT✅간단 개요Cookie는 웹 브라우저에만 존재하는 것으로 다양한 장치들과 공통적으로 사용할 수 있는 방식이 필요합니다.
이러한 방식으로 널리 사용되는 방법중 하나가 바로 Token Auth, 그중에서도 JWT 방식이 많이 사용됩니다.Token은 간단히 말해 랜덤하게 생긴 문자열이며,
일정한 규칙을 가지고 있고 간단한 서명을 더한 문자열로 토큰 자체에 유저에 대한 간단한 정보가 들어있는 형태입니다.JWT 방식으로 Auth를 처리하면 Session DB나 인증을 위한 여러가지 로직 처리가 필요 없습니다.처리방식클라이언트가 ID/PW를 서버로 보냅니다.서버에서 ID/PW를 검증하고 유효하다면 일정한 형식으로 서명 처리된 Token을 응답합니다.이후 클라이언트는 모든 요청 헤더에 토큰을 담아 서버로 요청을 전송합니다.서버는 해당 토큰의 유효성을 검증하고 유저의 신원과 권한을 확인 후 요청을 처리합니다.세션과의 차이세션 데이터베이스가 존재하지 않으며 데이터베이스가 필요하지 않습니다.토큰 자체가 하나의 인증 데이터입니다.서버는 토큰이 유효한지만 검증하여 처리합니다.장점과 단점🙆‍♂️장점서버에서 관리하는 데이터가 없으므로 복잡한 처리 로직이 필요하지 않습니다.세션이나 DB없이 유저를 인증하는것이 가능합니다.💁‍♂️단점일방적으로 로그인을 무효화 하는 등의 처리가 불가능합니다. (세션 테이블 X)모든 기기 로그아웃현재 접속 유저 관리 등Token 자체가 데이터를 담고 있는 정보이므로 탈취당할시 보안이 취약합니다.JWT 구조 https://jwt.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c. 을 기준으로 HEADER . PAYLOAD . VERIFY SIGNATURE 세 부분으로 구성됩니다.HEADER토큰의 타입(jwt) 또는 서명 부분의 생성에 어떤 알고리즘(alg)이 사용되었는지 등을 저장PAYLOAD토근 발급자, 토큰 대상자, 토큰 만료시간, 활성날짜, 발급시간 등등여러 데이터가 담겨있는 부분이곳에 서비스가 유저 정보를 담아서 인증누구나 풀어볼 수 있기 때문에 민감한 정보를 담지않고 최소의 정보만 저장user의 pk 값 등각각의 데이터는 Claim이라고도 하며 Key-Value 형태로 구성됨SIGNATUREHEADER + PAYLOAD + 서버의 비밀키 값을 HEADER에 명시된 암호 알고리즘 방식으로 생성한 값 즉 PAYLOAD의 글자 하나만 달라져도 SIGNATURE는 완전히 다른 문자열로 변환되어 서버의 비밀키 값을 모른다면 유효한 서명값을 만들어내는 것이 불가능서버는 토큰을 받으면 HEADER + PAYLOAD + 비밀키로 생성한  서명값이 토큰의 서명값과 일치하는지를 확인하는 과정을 거쳐서 유효성 여부를 확인서명의 유효여부 + 유효기간 내의 토큰인지 확인하여 Auth 과정을 처리Access Token과 Refresh TokenJWT 인증 방식은 굉장히 장점이 많은데 단점도 확실하다고 할 수 있습니다.→ 어떻게 보완할 수 있을까? 🤔→ 토큰의 유효시간을 매우 짧게 잡아버리자!➡️Access Token요청할 때 인증을 위해 헤더에 포함해야하는 토큰입니다.매 요청시 보내는 토큰이므로 보안이 취약합니다.만료 기한을 짧게 잡아 만약 탈취 당해도 짧은 시간안에 유효하지 않은 토큰 형태가 됩니다.🔃Refresh TokenAccess Token이 만료되었을때 새로 Access Token을 발급받기 위한 Token입니다.Access Token 보다 긴 유효기간을 가집니다.주로 사용자의 기기에 저장해두고 사용되며 만약 Refresh Token까지 만료되었다면
다시 인증(로그인) 과정이 필요합니다.Refresh Token의 탈취를 보완하기 위해 DB 리소스를 사용하는 다양한 방식도 존재합니다. (BlackList 등)JWT 구현하기반드시 공식문서를 보고 적용할 수 있어야해요.
https://DJANGO-rest-framework-simplejwt.readthedocs.io/en/latest/index.html코드스니펫[코드스니펫] pip install simplejwtPython복사pip install DJANGOrestframework-simplejwt
​[코드스니펫] settings.pyPython복사REST_FRAMEWORK = {
"DEFAULT_AUTHENTICATION_CLASSES": [
"rest_framework_simplejwt.authentication.JWTAuthentication",
],
},
​[코드스니펫] accounts/urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

urlpatterns = [
    path("signin/", TokenObtainPairView.as_view(), name="token_obtain_pair"),
    path("token/refresh/", TokenRefreshView.as_view(), name="token_refresh"),
]

​[코드스니펫] Login JSONPython복사{
"username": "admin",
"password" : "admin1234"
},
​[코드스니펫] pip install simplejwtPython복사pip install DJANGOrestframework-simplejwt
​[코드스니펫] settings.pyPython복사REST_FRAMEWORK = {
"DEFAULT_AUTHENTICATION_CLASSES": [
"rest_framework_simplejwt.authentication.JWTAuthentication",
],
},
​[코드스니펫] accounts/urls.pyPython복사from DJANGO.contrib import admin
from DJANGO.urls import path, include
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

urlpatterns = [
    path("signin/", TokenObtainPairView.as_view(), name="token_obtain_pair"),
    path("token/refresh/", TokenRefreshView.as_view(), name="token_refresh"),
]

​[코드스니펫] Login JSONJSON복사{
"username": "admin",
"password" : "admin1234"
},
​ALT로그인 이후 토큰 발급ALTALTaccess Token 재발급ALTJWT Settings이제는 정말 공식문서를 볼 수 있어야 개발을 할 수 있습니다.
https://DJANGO-rest-framework-simplejwt.readthedocs.io/en/latest/settings.html코드스니펫[코드스니펫] JWT 유효기간 설정Python복사from datetime import timedelta
...

SIMPLE_JWT = {
"ACCESS_TOKEN_LIFETIME": timedelta(minutes=1),
"REFRESH_TOKEN_LIFETIME": timedelta(days=1),
"ROTATE_REFRESH_TOKENS": True,
"BLACKLIST_AFTER_ROTATION": True,
},
​[코드스니펫] JWT 유효기간 설정Python복사from datetime import timedelta
...

SIMPLE_JWT = {
"ACCESS_TOKEN_LIFETIME": timedelta(minutes=1),
"REFRESH_TOKEN_LIFETIME": timedelta(days=1),
"ROTATE_REFRESH_TOKENS": True,
"BLACKLIST_AFTER_ROTATION": True,
},
​ALT03. 접근 제한하기✔️웹 서비스를 이용하다보면 로그인 또는 회원가입을 한 뒤 서비스를 이용할 수 있었던 경험 있으시죠? 그걸 한 번 구현해 봅시다!코드스니펫[코드스니펫] 유저가 아니면 Article 기능 접근 제한Python복사from rest_framework.permissions import IsAuthenticated
...
class ArticleListAPIView(APIView):
		permission_classes = [IsAuthenticated]
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​유저가 아니면 Article 기능 접근 제한[코드스니펫] 유저가 아니면 Article 기능 접근 제한Python복사from rest_framework.permissions import IsAuthenticated
...
class ArticleListAPIView(APIView):
		permission_classes = [IsAuthenticated]
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
def post(self, request):
        serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
            serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​ALTToken을 이용해서 인증하기Token 정보는 요청 Header에 담아서 전달합니다.postman은 보다 편리하게 auth를 담을 수 있도록 편의 기능을 제공합니다.ALTAccess Token 만료 또는 잘못된 Token인 경우ALT☝좀 전에 Access Token의 유효기간을 1분으로 잡아놨었죠? 이렇게 짧게 설정하는 것이 안전하지만  저희는 지금 테스트를 하며 개발하고 있기 때문에 기간을 조금 늘려도 괜찮습니다. (강의에서는 30분으로 설정하고 진행하고 있습니다.)ALT정상적인 Access Token 사용시ALTALT실제로는 Header에 담김ALTBearer JWT 혹은 OAuth에 대한 토큰임을 명시하는 것입니다. (RFC 6750)이 값도 특정 단어로 변경할 수 있으나 권장하지 않습니다.Token 유저정보 가져오기request.userUser 객체 접근가능나머지는 모두 DJANGO 내부에서 처리 👍', 10),
('DRF', 'DJANGO ORM 한 걸음 더', '[SCC] DJANGO ORM 한 걸음 더[SCC] 파이썬 장고 실무 심화/[SCC] DJANGO ORM 한 걸음 더제작:[SCC] DJANGO ORM 한 걸음 더수업 목표DJANGO ORM의 동작 방식을 이해하고 더 효율적인 방식을 생각할 수 있다.목차01. 사전 준비하기02. 더 복잡한 쿼리 사용하기Q() 를 이용해서 여러 조건 연결하기F() 를 이용해서 필드값 가져오기annotate() 를 사용해서 추가 정보 제공하기aggregate() 를 사용해서 쿼리하기Group By 적용하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 사전 준비하기✔️들어가기에 앞서 구현하셔야 하는 부분이 있습니다. 한 번 구현해 볼까요?코드스니펫[코드스니펫] articles/models.pyPython복사from DJANGO.db import models
from DJANGO.core.validators import MinValueValidator, MaxValueValidator

class Product(models.Model):
    CATEGORY_CHOICES = (
("F", "Fruit"),
("V", "Vegetable"),
("M", "Meat"),
("O", "Other"),
)

    name = models.CharField(max_length=100)
    price = models.PositiveIntegerField()
    quantity = models.PositiveIntegerField()
    category = models.CharField(max_length=1, choices=CATEGORY_CHOICES)
def __str__(self):
return self.name
​[코드스니펫] DJANGO seed로 생성하기Python복사python manage.py seed products --number=30
​products앱을 만들고 product 모델을 만들어주세요.product 모델에는 name , price , quantity , category필드가 있습니다.각 필드는 적절한 형태의 필드를 사용해주세요.category는 아래 선택지중 하나가 적용되도록 작성해 주세요.Python복사CATEGORY_CHOICES = (
("F", "Fruit"),
("V", "Vegetable"),
("M", "Meat"),
("O", "Other"),
)
​migrate 이후 seed를 사용해서 랜덤한 데이터를 30개 만들어주세요.✅이렇게 하면 되겠죠?(앱 생성 및 등록과정, migration은 생략)[코드스니펫] articles/models.pyPython복사from DJANGO.db import models
from DJANGO.core.validators import MinValueValidator, MaxValueValidator

class Product(models.Model):
    CATEGORY_CHOICES = (
("F", "Fuit"),
("V", "Vegetable"),
("M", "Meat"),
("O", "Other"),
)

    name = models.CharField(max_length=100)
    price = models.PositiveIntegerField()
    quantity = models.PositiveIntegerField()
    category = models.CharField(max_length=1, choices=CATEGORY_CHOICES)
def __str__(self):
return self.name
​[코드스니펫] DJANGO seed로 생성하기Python복사python manage.py seed products --number=30
​02. 더 복잡한 쿼리 사용하기✔️커스텀한 복잡한 쿼리를 사용하려면 어떻게 해야할까요?코드스니펫[코드스니펫] 정답 1)Python복사Product.objects.filter(
	Q(price__gt=15000) | Q(quantity__lt=3000)
)
​[코드스니펫] 정답 2)Python복사Product.objects.filter(
	Q(price__gt=10000) & Q(quantity__lt=2000)
)
​[코드스니펫] 정답 3)Python복사Product.objects.update(price = F(''price'') + 1000)
​[코드스니펫] 정답 4)Python복사products = Product.objects.annotate(
    total_price=F(''price'') * F(''quantity'')
)
​[코드스니펫] 정답 5)Python복사Product.objects.aggregate(Avg(''price''))
# {''price__avg'': 14627.76},

Product.objects.aggregate(my_avg = Avg(''price''))
# {''my_avg'': 14627.76},
​[코드스니펫] 정답 6)Python복사Product.objects.aggregate(Count(''category''))
​[코드스니펫] Raw()를 이용해서 직접 SQL문을 입력하기Python복사categories_count = Product.objects.raw(
''''''
SELECT "id", "category", COUNT("category") AS "category_count" 
FROM "products_product" 
GROUP BY "category"
''''''
)
​[코드스니펫] Raw()를 이용해서 직접 SQL문을 입력하기(print)Python복사for each in categories_count:
print(each.category_count, each.category)
# 15 F
# 15 M
# 15 O
# 5 V
​[코드스니펫] Database Connection을 만들고 쿼리하기Python복사from DJANGO.db import connection

sql_query = ''''''
SELECT "category", COUNT("category") AS "category_count" 
FROM "products_product" 
GROUP BY "category"
''''''
cursor = connection.cursor()
cursor.execute(sql_query)
result = cursor.fetchall()
print(result)
# [(''F'', 15), (''M'', 15), (''O'', 15), (''V'', 5)]
​기본적인 ORM 외에도 다양한 비지니스 상황에 맞는 쿼리가 필요합니다.DJANGO의 ORM은 대부분의 쿼리가 가능하도록 설계되어 있습니다.값을 가져와서 Python으로 조작해도 되지만 Database에서 조작한 후 가져오는것이 필요한 경우가 있습니다.Q() 를 이용해서 여러 조건 연결하기내가 여러 조건에 해당하는 ORM이 필요하다면 Q 객체를 사용해봅시다.Q 는 조건을 정의하는 객체로 논리적 OR 조건을 만들거나 여러개의 조건을 결합해서 SQL의 WHERE 절에 해당하는 기능을 온전히 활용할 수 있습니다.& : and, | : or, ~ : not 연산자 활용 가능!❓예제 1) 가격이 15000보다 크거나 수량이 3000보다 적은 제품들을 조회해 보세요.정답 1)[코드스니펫] 정답 1)Python복사Product.objects.filter(
	Q(price__gt=15000) | Q(quantity__lt=3000)
)
​❓예제 2) 가격이 10000보다 크고 수량이 2000보다 적은 제품들을 조회해 보세요.정답 2)[코드스니펫] 정답 2)Python복사Product.objects.filter(
	Q(price__gt=10000) & Q(quantity__lt=2000)
)
​F() 를 이용해서 필드값 가져오기F() 는 쿼리를 작성할 때 이전의 필드 값에 의존하는 작업을 쉽게 할 수 있습니다.주로 필드의 값을 가져오거나 업데이트해서 값을 참조하는데 사용합니다.python 메모리로 값을 가져오지 않고 필요한 작업을 데이터베이스에서 수행할 수 있습니다.❓예제 3) 모든 프로덕트의 가격을 1000원 인상해 보세요.정답 3)[코드스니펫] 정답 3)Python복사Product.objects.update(price = F(''price'') + 1000)
​annotate() 를 사용해서 추가 정보 제공하기공식문서가 제일 정확해요
https://docs.DJANGOproject.com/en/4.2/ref/models/querysets/#annotateannotate == 주석을달다조회하는 쿼리셋 각각에 추가적인 정보(데이터)를 제공하는데 사용합니다.❓예제 4) 각 프로덕트 별 total_price를 추가로 구성해서 조회해 주세요.
(total_price = price * quantity)정답 4)[코드스니펫] 정답 4)Python복사products = Product.objects.annotate(
    total_price=F(''price'') * F(''quantity'')
)
​aggregate() 를 사용해서 쿼리하기공식문서가 정확합니다
https://docs.DJANGOproject.com/en/4.2/ref/models/querysets/#aggregateaggregate == 종합/집약하다조회하는 쿼리셋 전체에 대해 결과를 집계/집약합니다.주로 집계 함수(Avg, Sum, Count 등)와 많이 사용합니다.❓예제 5) 전체 프로덕트의 평균 가격을 구하세요.정답 5)[코드스니펫] 정답 5)Python복사Product.objects.aggregate(Avg(''price''))
# {''price__avg'': 14627.76},

Product.objects.aggregate(my_avg = Avg(''price''))
# {''my_avg'': 14627.76},
​❓예제 6) 각 카테고리별 상품수를 구하세요.정답 6)[코드스니펫] 정답 6)Python복사Product.objects.aggregate(Count(''category''))
​✅결과Python복사{''category__count'': 30},
​→ 그냥 카테고리를 세면 안되지 ! DJANGO 녀석아! → Group By를 하고 세야지 !Group By 적용하기(Recommend) DJANGO에서 Group By는 아래의 두 단계를 이용해서 수행합니다.values() 내가 원하는 컬럼만 뽑은 다음~Python복사	Product.objects.values(''category'')
​✅결과Python복사<QuerySet [{''category'': ''M''},, {''category'': ''O''},,
{''category'': ''V''},, {''category'': ''M''},, ...
{''category'': ''F''},, ''...(remaining elements truncated)...'']>
​annotate() 로 묶어서 Group By를 수행Python복사Product.objects.values(''category'').annotate(category_count = Count(''category''))
​✅결과Python복사{''category'': ''F'', ''category__count'': 15},,
{''category'': ''M'', ''category__count'': 15},,
{''category'': ''O'', ''category__count'': 15},,
{''category'': ''V'', ''category__count'': 5},
​❓(HARD) Raw()를 이용해서 직접 SQL문을 입력하기정답[코드스니펫] Raw()를 이용해서 직접 SQL문을 입력하기Python복사categories_count = Product.objects.raw(
''''''
SELECT "id", "category", COUNT("category") AS "category_count" 
FROM "products_product" 
GROUP BY "category"
''''''
)
​[코드스니펫] Raw()를 이용해서 직접 SQL문을 입력하기(print)Python복사for each in categories_count:
print(each.category_count, each.category)
# 15 F
# 15 M
# 15 O
# 5 V
​[코드스니펫] Database Connection을 만들고 쿼리하기Python복사from DJANGO.db import connection

sql_query = ''''''
SELECT "category", COUNT("category") AS "category_count" 
FROM "products_product" 
GROUP BY "category"
''''''
cursor = connection.cursor()
cursor.execute(sql_query)
result = cursor.fetchall()
print(result)
# [(''F'', 15), (''M'', 15), (''O'', 15), (''V'', 5)]
​❓(HARD) 직접 Database Connection을 만들고 쿼리하기정답[코드스니펫] Database Connection을 만들고 쿼리하기Python복사from DJANGO.db import connection

sql_query = ''''''
SELECT "category", COUNT("category") AS "category_count" 
FROM "products_product" 
GROUP BY "category"
''''''
cursor = connection.cursor()
cursor.execute(sql_query)
result = cursor.fetchall()
print(result)
# [(''F'', 15), (''M'', 15), (''O'', 15), (''V'', 5)]
​👼걱정말아요. 필요할 때 찾아서 쓰면됩니다.
그리고 여러분이 작성하는 대부분의 쿼리는 DJANGO ORM 선에서 해결됩니다.', 11),
('DRF', 'DJANGO ORM 최적화', '[SCC] DJANGO ORM 최적화[SCC] 파이썬 장고 실무 심화/[SCC] DJANGO ORM 최적화제작:[SCC] DJANGO ORM 최적화수업 목표DJANGO ORM의 동작 방식을 이해하고 더 효율적인 방식을 생각할 수 있다.목차01. 더 효율적으로 사용하기파악하기지연로딩(Lazy Loading)바로 사용해보기02. 내 로직 편하게 살펴보기SilkSilk 사용해보기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 더 효율적으로 사용하기✔️DJANGO ORM을 최적화하는 방법을 알아볼까요?코드스니펫[코드스니펫] 답변 1)Python복사Comment.objects.all()
​[코드스니펫] 답변 2)Python복사comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
​[코드스니펫] 답변 3) urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
...
    path("check-sql/", views.check_sql, name="check_sql"),
]

​[코드스니펫] 답변 3) views.pyPython복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
print("-" * 30)
print(connection.queries)
return Response()
​[코드스니펫] 답변 3) views.py 하나씩 출력Python복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
# print(connection.queries)  # 너 좀 수상하다
print("-" * 30)
for query in connection.queries:
print(query) # 하나씩 출력해보자
return Response()
​[코드스니펫] 수정전 (지연로딩)Python복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
print("-" * 30)
print(connection.queries)
return Response()
​[코드스니펫] 수정후 (select_related 적용)Python복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all().select_related("article")
for comment in comments:
print(comment.article.title)
print("-" * 30)
print(connection.queries)
return Response()
​[코드스니펫] 역참조 수정전 (지연로딩)Python복사articles = Article.objects.all()
for article in articles:
  comments = article.comments.all()
for comment in comments:
print(comment.id)
​[코드스니펫] 역참조 수정후 (prefetch_related 적용)Python복사articles = Article.objects.all().prefetch_related("comments")
for article in articles:
  comments = article.comments.all()
for comment in comments:
print(comment.id)
​[코드스니펫] 정참조에 prefetch_related 적용Python복사comments = Comment.objects.all().prefetch_related("article")
for comment in comments:
print(comment.id)
​들어가기 전에“섣부른 최적화는 만악의 근원이다” - 컴퓨터 과학의 거장 ‘도널드 크누스’
그래도 하고 싶다면 아래 두 단계를 따를 것하지마라.아직 하지마라. 완전히 명백하게 이해하고 해법을 찾기전까지는 하지 마라.확실하게 이해하고 사용하지 않은 단순 성능상의 이익을 위한 최적화는 
결국 더욱 큰 문제로 되돌아옵니다.파악하기문제를 내보겠습니다 🙂Python복사from DJANGO.db import models


class Article(models.Model):
    title = models.CharField(max_length=120)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
class Comment(models.Model):
    article = models.ForeignKey(
        Article, on_delete=models.CASCADE, related_name="comments"
)
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
​❓문제 1) 위와 같은 구조를 갖는 두 모델이 있을때, 모든 Comment를 조회하는 ORM을 작성해보세요.

답변 1) 에이 이 정도는 누워서 떡 먹기죠~ 😏[코드스니펫] 답변 1)Python복사Comment.objects.all()
​❓문제 2) 아래의 코드가 있을때, 각 Comment가 작성된 Article의 제목을 출력해 보세요.Python복사comments = Comment.objects.all()
​
답변 2) 에이 쉽죠 - 정참조 아닙니까? 😏[코드스니펫] 답변 2)Python복사comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
​❓문제 3) 아래의 코드는 몇 번의 SQL Query를 실행했는가?Python복사comments = Comment.objects.all()
for comment in comments:
print(f"{comment.id},의 글제목 - {comment.article.title},")
​
답변 3) … 갑자기 난이도가 …?2번 …?  DJANGO는 똑똑하니까 … 1번?한 번 확인해 볼까요? 👀[코드스니펫] 답변 3) urls.pyPython복사from DJANGO.urls import path
from . import views

app_name = "articles"
urlpatterns = [
...
    path("check-sql/", views.check_sql, name="check_sql"),
]

​[코드스니펫] 답변 3) views.pyPython복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
print("-" * 30)
print(connection.queries)
return Response()
​결과 화면ALT????????????????????????????????ALTALT이게 뭔가요.. 뭔가 잘못돼가고 있는 것 같아요. 😵‍💫ALT어..음 일단.. 하나씩 출력해보자…[코드스니펫] 답변 3) views.py 하나씩 출력Python복사@api_view(["GET"])
def check_sql(request):
from DJANGO.db import connection

    comments = Comment.objects.all()
for comment in comments:
print(comment.article.title)
# print(connection.queries)  # 너 좀 수상하다
print("-" * 30)
for query in connection.queries:
print(query) # 하나씩 출력해보자
return Response()
​결과 화면ALT일단 확실한건 1번, 2번은 아니야 … 겁나 많아 …DJANGO야 갑자기 나한테 왜 이러는 거야… 😞🤔분석하기 Python복사SELECT "articles_comment"."id", "articles_comment"."article_id", "articles_comment"."content", "articles_comment"."created_at", "articles_comment"."updated_at" 
FROM "articles_comment"

SELECT "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" 
FROM "articles_article" 
WHERE "articles_article"."id" = 16 
LIMIT 21

SELECT "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" 
FROM "articles_article" 
WHERE "articles_article"."id" = 31 
LIMIT 21

SELECT "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" 
FROM "articles_article" 
WHERE "articles_article"."id" = 38 
LIMIT 21
...
​→ 한 번의 쿼리(1)가 일어난 다음, 비슷한 쿼리(2)가 엄청 많이 일어나는 것을 확인할 수 있습니다.지연로딩(Lazy Loading)DJANGO의 ORM은 기본적으로 게으르다!우리가 ORM을 작성하면 작성하자마자 SQL로 변환되어 쿼리되는것이 아닌
최대한 쿼리를 미루다가 해당 데이터가 실제로 사용될 때 쿼리를 진행합니다.
이것을 지연 로딩 (Lazy Loading) 이라고 합니다.지연로딩은 아래와 같은 장점이 있으며 많은 ORM에서 구현하고 있는 방식입니다.불필요한 데이터베이스 쿼리를 방지하여 필요한 데이터만 쿼리하여 성능을 보장합니다.모든 관련된 데이터를 한 번에 로드하지 않고 필요한 경우에만 쿼리하므로 메모리 사용을 줄일 수 있습니다.데이터베이스의 부담을 줄일 수 있습니다.Python복사comments = Comment.objects.all()
for comment in comments:
print(f"{comment.id},의 글제목")
print(f"{comment.article.title},")
​그럼 위 코드에서는 언제 실제로 쿼리가 발생할까요?comments = Comment.objects.all() → 쿼리하지 않음 (예약만 해둠)for comment in comments: → comments 조회 쿼리 발생print(f"{comment.id},의 글제목") → 쿼리하지 않음 (이미 데이터 가지고 왔음)print(f"{comment.article.title},") → 해당 comment의 article id 조회 쿼리 발생(N번)💡N+1 Problem위와 같이 관계형 데이터베이스에서 지연로딩을 사용할 경우 관련된 객체를 조회하기 위해 N개의 추가 쿼리가 발생하고 실행 되는 문제입니다. 당연히 데이터베이스에 많은 부하가 걸리고 응답시간이 느려지는 등의 성능 문제를 야기합니다.어떻게 해결할 수 있을까? 🤔→ 아니, 그냥 처음 가져올때 뒤에 필요한 데이터도 한 번에 가져오면 되잖아?💡즉시로딩(Eager Loading)데이터를 로드할 때 필요하다고 판단되는 연관된 데이터 객체들을 한 번에 가져오는 것. 이를 통해 지연로딩에서 발생하는 N+1 문제를 해결할 수 있습니다. 너무 많은 데이터를 가져오면 오히려 성능 문제를 야기할 수 있습니다.DJANGO에서의 Eager Loadingselect_relatedone-to-many 또는 one-to-one 관계에서 사용SQL의 JOIN을 이용해서 관련된 객체들을 한 번에 로드하는 방식prefetch_relatedmany-to-many 또는 역참조 관계에서 주로 사용 (select_related를 사용하는 관계에서도 동작)내부적으로 두번의 쿼리를 사용해서 동작
첫번째 쿼리는 원래 객체를 조회하며 두번째 쿼리는 연관된 객체를 가져오는 방식간단하게 이해하려면~Python복사ModelClass.objects.filter(조건절)
.select_related(''정방향 참조'') # JOIN
.prefetch_related(''역방향 참조'') # Additional Query
​그런데 말입니다. 이게 또 우리 의도대로 100% 동작하지는 않습니다. 🙄DJANGO가 내부적으로 개발자가 준 여러 옵션들이 불필요하다고 생각될 경우
자기 나름대로의 로직대로 Query를 새로 작성합니다.(하지만 이게 항상 더 효율적이라는 보장은 없다고 할 수 있습니다.)바로 사용해보기정참조 조회해보기[코드스니펫] 수정전 (지연로딩)[코드스니펫] 수정후 (select_related 적용)🖥️결과는? 👀ALTDJANGO야 드디어 정신차렸구나 !!ALTPython복사SELECT "articles_comment"."id", "articles_comment"."article_id", "articles_comment"."content", "articles_comment"."created_at", "articles_comment"."updated_at", "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" 
FROM "articles_comment" INNER JOIN "articles_article" 
ON ("articles_comment"."article_id" = "articles_article"."id")
​역참조 조회해보기[코드스니펫] 역참조 수정전 (지연로딩)🖥️결과는? 👀ALT얘 또 이러네 …ALT[코드스니펫] 역참조 수정후 (prefetch_related 적용)🖥️결과는? 👀ALTPython복사SELECT "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" FROM "articles_article"

SELECT "articles_comment"."id", "articles_comment"."article_id", "articles_comment"."content", "articles_comment"."created_at", "articles_comment"."updated_at" 
FROM "articles_comment" WHERE "articles_comment"."article_id" IN (1, 2, 3, ... , 170)
​정참조 다른 방식으로 조회해보기[코드스니펫] 정참조에 prefetch_related 적용🖥️결과는? 👀ALTPython복사SELECT "articles_comment"."id", "articles_comment"."article_id", "articles_comment"."content", "articles_comment"."created_at", "articles_comment"."updated_at" FROM "articles_comment"

SELECT "articles_article"."id", "articles_article"."title", "articles_article"."content", "articles_article"."created_at", "articles_article"."updated_at" 
FROM "articles_article" WHERE "articles_article"."id" IN (1, 2, 3, ... ,170)
​02. 내 로직 편하게 살펴보기✔️앞에서 결과를 확인하는 코드를 직접 작성하여 확인해봤습니다. 더 간편한 방법은 없을까요?코드스니펫[코드스니펫] pip install DJANGO-silk[코드스니펫] settings.py 설정[코드스니펫] urls.py 설정[코드스니펫] (silk) 이전의 코드로 테스트Silk설치부터 사용까지 모든건 공식문서에 다있습니다.
https://github.com/jazzband/DJANGO-silkALTSilk is a live profiling and inspection tool for the DJANGO framework. Silk intercepts and stores HTTP requests and database queries before presenting them in a user interface for further inspection[코드스니펫] pip install DJANGO-silk[코드스니펫] settings.py 설정[코드스니펫] urls.py 설정실시간으로 내 요청에 대한 다양한 정보를 볼 수 있는 검사 도구입니다.대시보드를 제공하여 개발자로 하여금 편하게 로직을 분석할 수 있게 도와줍니다.특히 ORM을 통해 DJANGO 내부적으로 사용하는 쿼리를 바로 확인할 수 있습니다.Silk 외에도 다양한 도구가 존재합니다.Silk 사용해보기🖥️사용해보기ALTALT🖥️만약 이전의 코드로 작성한다면? 👀[코드스니펫] (silk) 이전의 코드로 테스트ALTALT→ 비효율적인 쿼리가 나가는것을 바로바로 알 수 있다!', 12),
('DRF', '더 빠른 속도를 위해', '[SCC] 더 빠른 속도를 위해[SCC] 파이썬 장고 실무 심화/[SCC] 더 빠른 속도를 위해제작:[SCC] 더 빠른 속도를 위해수업 목표Redis에 대해 이해하고 Redis를 활용한 로직을 작성할 수 있다.목차01. Redis 이해하기02. Redis (Remote Dictionary Server)소개특징다재다능한 Redis다양한 캐싱 전략캐시 읽기 전략 (Read Cache Strategy)캐시 쓰기 전략 (Write Cache Strategy)설치03. Redis 가볍게 사용하기ReadCreateUpdateDelete04. DJANGO With Redis준비하기 (해주세요 🙂)Redis를 Cache로 사용하기필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. Redis 이해하기✔️한번 쯤은 들어봤을 Redis에 대해서 살펴봅시다!ALT02. Redis (Remote Dictionary Server)소개✔️Redis는 외부에 있는 key-value를 저장하는 서버로, 캐싱이나 세션관리 등에 자주 사용됩니다.특징☝️Redis을 왜 사용하는지 가볍게 이해해봅니다.아래의 특징들 외에도 Redis는 많은 장점을 가지고 있는 도구입니다.큰 틀 안에서의 이해를 바탕으로 더 많은 세세한 특징을 찾아보세요 🙂인-메모리(In-memory) 데이터베이스로 메모리를 저장소로 사용한 마디로 아주 빠름 (Disk에 비해 약 1,000배 이상)value에 String, Set, Hash 등 다양한 종류의 타입을 지원ALT출처 redis.comALT복잡한 쿼리가 필요 없음그런데 잘 잊어버림 (보완책 있음)한 번에 하나의 일만 처리할 수 있음 (오히려 장점)→ Redis == 데이터를 빠르게 저장하고 가져오는데 탁월한 성능을 발휘하는 도구!다재다능한 Redis☝️Redis는 하나의 도구일뿐, 그 자체로 무언가를 해주지 않습니다.내가 직면한 문제를 해결할 수 있는 여러 방법중 하나가 될 수 있는거죠.즉, 문제 상황을 이해하고 이 기술이 적절한지 여부를 생각할 수 있는 힘을 기르는 것이 중요합니다.카운터(Counter)로 사용하기❓조회수, 방문자수 등을 우리가 보여줘야한다면?

DB에 직접 저장할 수 있겠지만 1초에 너무 많은 업데이트가 필요한 경우,
 많은 DB 리소스를 소모하게 됩니다.
(때에 따라 처리가 안되거나 누락되기도 합니다.)
→ 빠르게 응답이 가능한 Redis로 처리하자 ! 모든 처리는 Redis를 이용해서 하고, 영속적인 저장이 필요할 때 데이터를 DB로 옮기자 !빈번하게 업데이트 되는 데이터라면?❓좋아요/팔로우 등의 기능은 버튼을 누를때마다 DB에 읽기/쓰기 연산이 이루어 집니다.다량의 insert/update는 RDB의 성능을 크게 저하시킴실제로 좋아요/팔로우를 DB 사용으로 구현해두고 2-3명이 동시에 버튼을 여러번 눌러보면
생각대로 동작하지 않는 것을 볼 수 있다 👀이벤트를 하게되어 실시간 랭킹이 필요하다면?이 역시 RDB로는 한계 !!→ Redis를 이용해서 처리하면 초당 16만건 이상을 처리할 수 있습니다. 👍
또한 내부적으로 key-value 형태를 이용하여 각 사용자당 하나의 좋아요/팔로우만 할 수 있게 하는등의 처리가 용이합니다!세션 / 실시간 검색  …❓실시간으로 로그인 해있는 유저를 파악하는 것이 필요하다면?
모든 유저가 검색하는 것에 대한 실시간 파악이 필요하다면?→ 즉, RDB로 처리하기에는 너무나 많은 쿼리가 발생할 것 같을때, 
RDB에 바로 저장해야할 만큼 중요하지 않은 데이터일때
너무 데이터의 크기가 크지 않을때 우리는 Redis 사용을 생각해 볼 수 있습니다.서버가 여러개로 많아진다면?❓서비스가 커짐에따라 서버는 증가할 수 밖에 없다!여러대의 서비스에서 동시에 접근해야하는 데이터가 있다면? 👀캐싱(Caching)❓우리가 많이 사용하는 Relational Database는 빠르지만, 빨라졌지만 느립니다.고객의 수가 많아질수록, 요청이 증가할수록 우리의 DB는 점점 부하가 걸리게 된다😢예시) 우리가 도서 관련 서비스를 하는데 항상 유저에게 보여줘야하는 도서 데이터가 있다면?모든 유저에게 매번 데이터베이스에서 읽어서 보여주는게 아니라, 미리 불러오기(Load)해서 Redis에 저장을 해두고 사용하자 !→ 데이터베이스를 거치지 않고 Redis에서 바로 가져와서 응답이 가능하다 !→ 캐싱 Caching아니 Redis가 그렇게 빠르고 좋다고? 🤔❗그럼 모든 데이터를 Redis에 넣으면!? 나는 천재!?

→ Redis는 메모리를 사용하기 때문에 빠른겁니다.→ 하지만 💰이 정말 많다면 가능한 이야기일수도 있어요.기본 흐름 구조1️⃣(선택) DB에서 필요한 데이터를 미리 Caching2️⃣요청이 들어오면 Caching 되어 있는지 확인 (cache-key 이용)

2-1. Caching 되어 있다면 바로 조회해서 처리 (Cache Hit)2-2. Caching 되어 있지않다면 (Cache Miss)(1) DB에서 데이터를 조회해서 (2) Caching 하고(3) 요청을 처리Q) 그럼 뭐 대부분의 데이터를 Redis에 넣죠?캐싱이 의미가 없어지는 데이터는 Redis가 오히려 효율이 떨어집니다.결과값이 계속 갱신 되는데이터 → 캐시도 계속 변경 필요 → 오히려 안좋다 !즉, 캐시에 저장할 데이터의 특성을 고려하는 것이 필요 ☝️다양한 캐싱 전략📕Redis는 결국 또 다른 데이터베이스를 사용하는 것입니다.

이는 데이터를 관리하는 곳이 두 곳으로 늘어난다는 것이고,
두 데이터베이스 사이에 정합성이 깨지지 않게 관리가 필요하게 된다는 것을 의미합니다!캐싱을 고려하려면? 🤔데이터가 한 번 작성된 이후 여러번 읽혀지는 경우인가?반복적으로 조회되는 데이터가 고유한 데이터인가?데이터의 크기가 크지는 않은가?캐시 읽기 전략 (Read Cache Strategy)1️⃣Look Aside(Cache Aside) 패턴

요청이 들어와서 데이터를 찾을때 캐시를 먼저 찾아봄만약 캐싱되지 않았다면 DB를 조회

가장 기본이 되는 캐시 전략캐시와 DB가 분산되어 운용되므로 redis가 죽어도 서비스에 문제가 없음하지만 redis가 죽었을때 요청이 한번에 DB로 몰리면 서비스 장애 가능성 있음최초에 캐시로 데이터를 넣어주는 작업 필요 (Cache Warming)

2️⃣Read Through 패턴

Look Aside와 비슷하지만 캐시만 바라보고 데이터를 조회하는 것캐싱하는 로직은 직접 처리하지 않고 다른 라이브러리에게 위임
즉, 자동으로 DB와의 데이터가 동기화가 이루어지도록 하는 방식캐싱을 적극적으로 이용할 수 있으나, Redis가 다운될 경우 서비스가 중지됨캐시 쓰기 전략 (Write Cache Strategy)1️⃣Write Back(Write Behind) 패턴

데이터를 저장할 때 바로 DB에 저장하는 것이 아닌 캐시에 모아 두었다가 한 번에 저장(N개의 데이터를 하나씩 저장하는 것보다, bulk create 하는것이 더 빠르기 때문)캐시에서 장애가 발생할 시 데이터 누락의 가능성이 있음2️⃣Write Through 패턴

데이터를 캐시에도 저장하고, DB에도 저장하는 방식캐시를 이용해서 DB를 동기화 캐시의 데이터가 항상 최신 데이터로 유지됨두번의 저장이 이루어지기 때문에 데이터 유실에 민감한 로직에서 사용3️⃣Write Around 패턴

모든 데이터는 DB에 바로 저장cache miss가 발생했을때만 캐시와 DB에 저장캐시와 DB간 데이터 불일치 가능성cache miss가 발생하기 전까지 DB에서 내용이 수정되었다면 서비스에 반영되지 않음 (cache가 만료될 때까지 유지됨)cache의 만료시간(TTL)을 짧게 잡고 사용📕캐싱에서는 읽기 전략과 쓰기 전략을 적절하게 섞어서 사용합니다!
(일반적으로 Look Aside + Write Around 사용)

결국 어떤 전략을 선택하느냐 보다는 내 서비스에 맞는 전략이 중요해요!설치☝️Redis도 결국 하나의 프로그램배포 환경에서는 Redis만 설치되어있는 컴퓨터를 따로 사용 (Redis Server)하지만 우리는 배우는 단계이므로, 내 컴퓨터에 Redis를 설치하고 띄우는 것 ☝️macOSWindowsping-pong이 되었다면 OK !03. Redis 가볍게 사용하기✔️Redis를 간단하게 직접 사용해 봅시다!ReadPython복사keys * # 모든 key 조회
keys * 명령어는 redis가 가지고 있는 모든 key를 조회하는 큰 부하가 들어가는 명령어
redis는 한 번에 하나의 일을 처리하기에 keys * 같은 명령어는 정말 조심 !
(특히 프로덕션 환경에서는 결코 사용해서는 안됨)ALT​ALTPython복사get key # Key에 해당하는 value 조회
​ALTCreatePython복사set key value # key value 저장
​ALT', 13),
('DRF', 'API 문서화', '[SCC] API 문서화[SCC] 파이썬 장고 실무 심화/[SCC] API 문서화제작:[SCC] API 문서화수업 목표API 문서화에 대해 이해하고 여러 도구를 사용해서 API 문서를 작성할 수 있다.목차01. API 문서화어떻게 작성하면 좋을까? 🤔API 문서의 장점 및 한계점02. DRF-Spectacular설치 및 셋팅필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. API 문서화📕우리가 열심히 만든 API를 프론트엔드 개발자들이 사용하고 싶다면 어떻게 해야할까요? 🤔→ API 사용법을 알려주는 것이 필요하겠네요!
(헤더에는 뭐가 필요하고, 요청은 어떻게하고, 데이터는 어떻게 되고 …)→ 하지만 구두로 설명하는것은 한계가 있겠죠?→ 문서화(Documentation)가 필요 !어떻게 작성하면 좋을까? 🤔📕API 문서의 경우, 사실 회사마다 다르고 개발팀마다 사용하는 방법이 다릅니다.

각 회사나 팀마다 사용하는 툴도 다르고 형식도 다르니까요!
로마에 가면 로마의 법을 따르듯, 문서도 조직에 맞는 형식을 따르게 될 겁니다!노션(Notion)IT 업계에서 소통을 위한 도구로 많이 사용하는 도구입니다.검색, 필터, 정렬등 데이터를 편하게 작성하고 볼 수 있는 기능을 제공합니다.표APIsMethodAuthorizationEndpointDescriptionGETUSER/api/v1/articles/Article 목록 조회GETUSER/api/v1/articles/<int:pk>/Article 상세 조회POSTUSER/api/v1/articles/Article 생성PUTUSER/api/v1/articles/<int:pk>/Article 수정DELETEUSER/api/v1/articles/<int:pk>/Article 삭제포스트맨(Postman)Postman과 함께 제공되는 경우가 일반적이므로 문서도 포스트맨에 작성하는 경우가 많습니다.간편한 테스트와, 결과 저장이 가능해 편리하다는 장점이 있습니다.ALT다른 툴들Git Book엑셀(Excel)워드(Word)…API 문서의 장점 및 한계점우리 조직에 맞게 완벽하게 커스텀해서 작성 가능작성툴에 대한 학습 없이 누구나 작성 및 수정 가능코드가 변경될 때 마다 문서를 수정해주지 않으면 문서가 가치를 상실함→ 내 코드를 기반으로 API 문서를 만들도록 할 수 없을까? 🤔우리가 사용하는 DJANGO REST Framework 에서는 👀공식문서 이제는 알아서 찾을 수 있겠지만
https://www.DJANGO-rest-framework.org/topics/documenting-your-api/#third-party-packagesALTRESTful API는 자원에 대한 표현과 접근하는 방법을 잘 정의하는 것이 가장 중요하며,
이에 대한 자세한 설명과 명확한 정의가 필요하다고 하네요!DRF-spectacular와 DRF-yasg를 추천둘 모두 코드를 기반으로 API Doc을 만들고, 이 문서를 사용자가 보기 편하게 UI로 변환하는 도구(Swagger-UI / Redoc)를 포함하고 있음둘의 가장 큰차이는 DRF-yasg 는 OpenAPI 2 기반으로 만들어졌고
DRF-spectacular 는 OpenAPI 3을 기반으로 한다는 것OpenAPI?OAS(OpenAPI Specification)이 정식명칭RESTful API를 설명하고 표현하는 하나의 표준프로그래밍 언어에 한정되지 않도록 RESTful API를 인터페이스화 하려는 방향
즉, 사용자 또는 프로그램이 소스코드나 글로 작성된 문서를 보지 않고도 서비스의 기능들을 이해할 수 있도록 JSON 형태로 표현하려는 프로젝트OAS를 지원하는 Swegger 또는 Redoc을 이용하면 JSON으로 작성된 API Doc을 보기편한 UI로 변환할 수 있다02. DRF-Spectacular공식문서https://DRF-spectacular.readthedocs.io/en/latest/ALTDJANGO REST Framework을 위한 합리적이고 유연한 OpenAPI 스키마 생성기설치 및 셋팅JSON복사pip install DRF-spectacular
​Python복사INSTALLED_APPS = [
...
''DRF_spectacular'',
]
settings.pyALT​Python복사REST_FRAMEWORK = {
...
''DEFAULT_SCHEMA_CLASS'': ''DRF_spectacular.openapi.AutoSchema'',
},
settings.pyALT​Python복사SPECTACULAR_SETTINGS = {
''TITLE'': ''MY DJANGO API'',
''DESCRIPTION'': ''DJANGO DRF API Doc'',
''VERSION'': ''1.0.0'',
...
},
settings.pyALT​Python복사from DRF_spectacular.views import SpectacularAPIView, SpectacularRedocView, SpectacularSwaggerView

urlpatterns = [
# YOUR PATTERNS
...
    path(''api/schema/'', SpectacularAPIView.as_view(), name=''schema''),
# Optional UI:
    path(''api/schema/swagger-ui/'', SpectacularSwaggerView.as_view(url_name=''schema''), name=''swagger-ui''),
    path(''api/schema/redoc/'', SpectacularRedocView.as_view(url_name=''schema''), name=''redoc''),
]
프로젝트의 urls.pyALT​~/api/schema/swagger-ui/ 로 접근해보면ALT우리 코드를 기반으로 문서가 생성된 것을 볼 수 있다.ALT이대로 완벽하면 참 좋겠지만 (그렇지않다)ALT우리가 결국 쓰기위해서는 커스텀이 필요하다ALT@extend_schema 데코레이터를 이용해서 문서를 커스터마이징 할 수 있다.Python복사...
class ArticleListCreateAPIView(APIView):
    permission_classes = [IsAuthenticated]
@extend_schema(
        tags=["Articles"],
        description="Article 목록 조회를 위한 API",
)
def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
return Response(serializer.data)
...
​ALTPython복사@extend_schema(
        tags=["Articles"],
        description="Article 생성을 위한 API",
        request=ArticleSerializer,
)
def post(self, request):
    serializer = ArticleSerializer(data=request.data)
if serializer.is_valid(raise_exception=True):
        serializer.save()
return Response(serializer.data, status=status.HTTP_201_CREATED)
​ALT그럼 이제 해결이 된걸까? 🤔📕그럴수도 있고, 아닐수도 있습니다!

Spectacular를 이용해서 코드를 기반으로한 문서화를 적용했지만,
실제로 사용을 위해서는 많은 커스텀이 필요합니다.
실제로 Spectacular의 내부적인 부분을 커스텀해서 사용하기도 합니다!문제없이 동작하더라도 View로직 코드 보다 문서화를 위한 코드가 더 길어지는 상황이 오기도 합니다.
이 역시 구조를 새로 잡아서 해결을 해야 하겠죠?결론 : 도구에 대해 이해하고 내부 문서와 코드를 뜯어보며 내가 원하는 방향으로 만들어 낼 수 있는 것이 필요함!', 14),
('DRF', '외부 API 연동하기 (feat. ChatGPT)', '[SCC] 외부 API 연동하기 (feat. ChatGPT)[SCC] 파이썬 장고 실무 심화/[SCC] 외부 API 연동하기 (feat. ChatGPT)제작:[SCC] 외부 API 연동하기 (feat. ChatGPT)수업 목표OpenAI를 연동하며 외부 API를 사용하는 방법을 알아본다.목차01. 외부 API 사용하기OpenAI API를 사용해서 AI 서비스를 제공해보자필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 01. 외부 API 사용하기📕우리는 이제 아래와 관련된 내용을 살펴볼 예정입니다!사실 단순히 내부 로직만 사용해서 개발을 하는 경우는 거의 없다!많은 경우 외부 서비스와의 연동을 통해 처리하는 것이 필요하다.실제로 외부 업체와 제휴를 하게되면 업체 개발팀으로 부터 개발 문서 하나가 도착할거고, 그걸 보고 하나하나 해석해서 우리 로직에 넣어서 연동하는 일을 하게 된다.예시) CU Post와 제휴를 맺었다면?해당 개발팀에서 자신들의 서버에 요청을 보내고 받을 수 있는 문서를 전달해주고 연동은 우리가 직접 하나씩 해야한다. (업체가 해주거나 자동으로 뭔가 되지않아요)즉 ! 문서를 보고 하나하나 연동하는 과정으로 많은 외부 서비스를 이용하게 된다.소셜 로그인결제(PG)외부 데이터 APIOpenAI …OpenAI API를 사용해서 AI 서비스를 제공해보자(1) 회원 가입하기ALTAPI / Docs로 들어가서 ALTALT가입하고 로그인까지 !ALTALTALT로그인을 하면 연동을 시작할 수 있다 !ALTALT이제 문서를 찾고 읽어보며 하나하나 해보면 된다. 사실 개발은 오픈북이다 😃ALT(2) API Key 발급 및 설정하기외부 서비스를 가져다가 사용하는 경우 대부분 API Key를 이용해서 서비스를 이용하게 된다.API Key는 유저의 고유 Key이며 이 Key를 이용해서 자신들의 서비스를 이용하는 유저가 누구인지 식별하고 필요시 과금처리를 한다.따라서 절대 노출이 되면 안된다 ! (Github Repo 등에 올리지 않도록 각별히 유의)ALT인증절차를 거치고ALTALTSecret Key를 발급받는다ALTALTCopy 한 뒤 아래 과정으로 미리 복사해두자 다시 이 key를 볼 수 없다.ALTPython복사OPENAI_API_KEY = "my_openai_key"
config.pyALT​ALT(3) 크레딧 준비하기이 과정을 처음한다면 무료로 $5까지 쓸 수 있는 크레딧을 지급받는다.첫 API Key 발급일로부터 3개월까지 사용이 가능하다.ALTUsage에서 현재 내가 무료로 사용할 수 있는 크레딧을 확인할 수 있다.ALTALTSettings > Billing > Payment methods 에서 카드를 등록할 수 있다.ALTALT만약 크레딧이 없다면 카드를 등록하고 크레딧을 충전해야 API를 사용할 수 있다.$5 정도면 여러분이 진짜 열심히써야 소진 가능 !그럼 이 돈이면 OpenAI는 얼마나 쓸 수 있는걸까? 🤔문서를 보면 됩니다 (https://openai.com/pricing)ALT1M Token = 1,000,000 Token 마다 $0.5 니까
10M Token = 10,000,000 Token을 쓸 수 있겠네 ! ($5)그러면 Token은 어떤 단위인데?다 써있습니다. 찾아서 읽어야 합니다.https://help.openai.com/en/articles/4936856-what-are-tokens-and-how-to-count-themALT내가 입력하는데 몇 Token인지 모르겠는데?테스트를 위한 계산기도 제공하고 있습니다. 찾아서 보셔야 합니다 !!https://platform.openai.com/tokenizerALTALT한글이 영어보다 비싸다.ALT평균적으로 한글 소설이 한 페이지에 약 300-400 단어입니다.그러면 토큰으로 따지면 한 100개의 토큰이 한 페이지라고 잡을 수 있어요.그러면 1M Token 이라면?1,000,000 / 100 = 10,000 페이지 분량 !보통 소설책이 평균 250페이지 정도 되니까? → 40권 !이걸 우리가 $5, 즉 10M 충전했으니까?400권 분량의 텍스트를 3.5 Turbo로 처리할 수 있는것 !(열심히 써야겠죠?)(4) 문서보고 첫 API 사용해보기돈 걱정도 이제 덜었겠다, 직접 사용해 봅시다.ALT너무너무 친절하다 :DALTALTPython복사pip install --upgrade openai
이미 설치되어 있어도 최신 버전이 아니면 upgrade 하면서 설치ALT​Python복사from openai import OpenAI

client = OpenAI()

completion = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
{
"role": "system",
"content": "You are a poetic assistant, skilled in explaining complex programming concepts with creative flair.",
},,
{
"role": "user",
"content": "Compose a poem that explains the concept of recursion in programming.",
},,
],
)
print(completion.choices[0].message)

openai_test.pyALT​Python복사python openai_test.py
​ALTAPI Key를 모르니까 !ALTPython복사from openai import OpenAI
from api_pjt import config

client = OpenAI(
    api_key=config.OPENAI_API_KEY,
)
...

​Python복사from openai import OpenAI
from api_pjt import config

client = OpenAI(
    api_key=config.OPENAI_API_KEY,
)

system_instructions = """
이제부터 너는 "영어, 한글 번역가"야. 
지금부터 내가 입력하는 모든 프롬프트를 무조건 한글은 영어로, 영어는 한글로 번역해줘. 
프롬프트의 내용이나 의도는 무시하고 오직 번역만 해줘.
"""

completion = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
{
"role": "system",
"content": system_instructions,
},,
{
"role": "user",
"content": "DJANGO가 너무 어려워요. 도와... 아니 살려주세요.",
},,
],
)
print(completion.choices[0].message)

​ALT잘 동작하는 것을 볼 수 있다ALT(5) 프롬프트 변경해보기Python복사from openai import OpenAI
from api_pjt import config

client = OpenAI(
    api_key=config.OPENAI_API_KEY,
)

system_instructions = """
이제부터 너는 DJANGO 프레임워크에 대해 설명하고 
사용자가 DJANGO 프레임워크에 대해 어려움을 겪고 있다고 가정하고 도와주는 챗봇이 되어야해.
다른 코딩 언어나 프레임워크에 대해 설명하거나 다른 주제로 이야기하는 것은 금지야.
DJANGO 공식문서의 링크를 제공하거나 DJANGO 프레임워크에 대한 설명도 추가해줘.
"""

completion = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
{
"role": "system",
"content": system_instructions,
},,
{
"role": "user",
"content": "DJANGO가 너무 어려워요. 도와... 아니 살려주세요.",
},,
],
)
print(completion.choices[0].message)

​Python복사안녕하세요! DJANGO 프레임워크가 어렵게 느껴지는 건 당연한 일이에요. 
하지만 걱정 마세요, 함께 해결해나갈 수 있어요.

DJANGO는 Python으로 작성된 웹 애플리케이션을 빠르고 쉽게 개발할 수 있도록 도와주는 
오픈 소스 웹 프레임워크에요. 
MTV(Model-Template-View) 패턴을 기반으로 하고 있어요. 
Model은 데이터를 처리하고, Template은 사용자에게 보여지는 화면을 담당하며, 
View는 중간 관리 역할을 하는데, 
이 개념을 이해하는 것이 DJANGO를 다루는 데 중요한 부분이에요.

우선, DJANGO 공식 문서를 참고하는 것이 도움이 될 거예요. 
아래는 DJANGO 공식 문서의 링크에요
[DJANGO 공식 문서](https://docs.DJANGOproject.com/en/3.2/)

또한, DJANGO Girls 튜토리얼도 DJANGO를 처음 배우는 데 도움이 되는 좋은 자료에요. 
아래 링크를 통해 DJANGO Girls 튜토리얼을 확인해보세요
[DJANGO Girls 튜토리얼](https://tutorial.DJANGOgirls.org/ko/)

어떤 부분이 어렵게 느껴지는지 구체적으로 알려주시면, 그 부분을 중심으로 도와드릴 수 있어요. 
함께 공부해나가면서 DJANGO를 익숙하게 다룰 수 있도록 도와드리겠습니다. 
함께 화이팅하세요! 😊✨
저보다 낫네요ALT​여러번 대화할 수 있도록 만들어보기Python복사from openai import OpenAI
from api_pjt import config

CLIENT = OpenAI(
    api_key=config.OPENAI_API_KEY,
)
def ask_to_gpt(instructions, message):
    completion = CLIENT.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[
{
"role": "system",
"content": instructions,
},,
{
"role": "user",
"content": message,
},,
],
)
return completion.choices[0].message.content


system_instructions = """
이제부터 너는 ''에이든 카페''의 직원이야.
아래 종류의 음료 카테고리에서 주문을 받고, 주문을 처리하는 대화를 진행해.

1. 아메리카노
2. 카페라떼
3. 프라푸치노
4. 콜드브루
5. 스무디

주문을 받으면, 주문 내용을 확인하고, 주문을 처리하는 대화를 진행해.
주문이 완료되면, 주문 내용을 확인하고, 주문이 완료되었음을 알려줘.
"""
# 처음 인사를 위해
response = ask_to_gpt(system_instructions, "")
print(f"에이든 카페봇 : {response},")
while True:
    user_message = input("유저 : ")
if user_message == "종료":
break
    response = ask_to_gpt(system_instructions, user_message)
print(f"에이든 카페봇 : {response},")

​ALTDJANGO API로 서비스 제공하기위의 로직을 API로 제공해보자.사실 이미 로직이 완성되었기 때문에 그냥 옮겨주기만 하면 된다 🙂해보세요 🙂이렇게 하면 되겠죠?마무리📕여러분이 구현하고 싶은 모든 기능들도 위와 동일하게 적용하면 됩니다!

결제? → 결제를 제공하는 PG사 홈페이지로 가서 신청하고 문서를 보고 적용 !데이터? → 데이터를 제공하는 서비스로 가서 문서를 보고 적용 !문자 발송? → 발송을 제공하는 서비스로 가서 문서를 보고 구현 !개발자는 지식이 많은 사람이 아니라, 어찌되었건 구현해내는 사람이 개발자다 !두려워말고 내가 하고싶은걸 하나씩 구현해 봅시다 💪', 15),
('DRF', 'DJANGO Deploy with AWS', '[SCC] DJANGO Deploy with AWS[SCC] 파이썬 장고 실무 심화/[SCC] DJANGO Deploy with AWS제작:[SCC] DJANGO Deploy with AWS수업 목표DJANGO 배포 과정에 대해 이해하고 AWS를 사용해서 배포할 수 있다.목차배포 (Deploy)서버와 클라우드AWS를 이용해서 배포하기AWS 계정 생성 (https://aws.amazon.com/ko/)AWS EC2 인스턴스 생성AWS EC2 인스턴스 접속Github에 코드 올리기AWS EC2 기본 설정기본 프로그램 설치 및 설정Code Clone 및 패키지 설치하기DJANGO 실행해보고 설정하기현재 상태 이해하기포트 개방하고 접속해보기ALLOWED_HOSTS 설정하고 재배포 하기개발 서버에서 벗어나기구조 이야기gunicorn 설치 및 설정하기Gunicorn 실행하기정적 파일 다루기Nginx 설치 및 설정하기Nginx 실행하기80 포트 열어주기Gunicorn 서비스 설정 및 실행배포 마무리Postman 동작 확인필수 프로그램 설치펼쳐서 확인하기✅ Google Chrome✅ Python(3.10.11)✅ VS Code(1.73.1)모든 토글을 열고 닫는 단축키
Windows : Ctrl + alt + t 
Mac : ⌘ + ⌥ + t 배포 (Deploy)✔️이제 우리가 열심히 만든 서비스를 AWS를 이용해서 배포해 봅시다!

DJANGO로 풀스택 개발을 했던, DRF로 API를 만들었던 배포의 큰 과정은 크게 다르지 않으니,
차근차근 따라해 볼게요!서버와 클라우드서버?📕지금 우리 컴퓨터에서 실행한 DJANGO 서비스는 컴퓨터 전원이 꺼지는순간 사라지게 됩니다 🥲

하지만 우리가 제작한 DJANGO 서비스는 1년 365일 24시간 돌아가야 하는데..
즉, 우리는 안정적으로 항상 켜져 있는 컴퓨팅 자원이 필요한 겁니다!사실 서버 컴퓨터는 우리가 사용하는 컴퓨터와 구성이 똑같아요!다만 불필요한 부분을 제거하고 효율적인 구조로 만들어둔 것!ALT각각이 모두 컴퓨터라고 생각하면 쉽다
컴퓨터 아파트 …?ALT이전에는 이런 서버를 직접 만들어서 사용했습니다.규모에 따라 데스크탑과 비슷한 서버부터 큰 서버까지 다양!❗서버는 말그대로 컴퓨터입니다!
그래서 서버를 다루려면 운영체제부터 필요한 프로그램 설치, 그리고 여러 셋팅이 필요합니다.과거에는 이런 번거로운 작업들을 하나하나 해야 했지만,
클라우드 컴퓨팅 서비스가 등장하고 이러한 일에서 해방되었습니다! 🙌클라우드?📕클라우드 컴퓨팅을 쉽게 말하면 물리적 서버를 가상화 시켜서 인터넷 서비스로 제공하는 것을 말합니다.
아래와 같이 크게 세 가지로 분류할 수 있어요!IaaS(Infrastructure as a Service)물리적인 컴퓨팅 자원을 가상화 해서 제공하는 서비스모두 설정을 해줘야하므로 마음대로 커스텀 할 수 있음 (장점이자 단점)Amazon Web Service, Microsoft Azure, Google Compute EnginePaaS(Platform as a Service)플랫폼을 가상화 해서 제공하는 서비스인프라에 대한 관리 없이 개발에 집중하여 빠른 속도로 개발할 수 있음Heroku, AWS Elastic Beanstalk, PythonAnyWhereSaaS(Sofrware as a Service)서비스형 소프트웨어로 컴퓨터에 설치하고 사용하던 이전의 소프트웨어와 달리 인터넷 접속을 통해 바로 서비스를 사용할 수 있음모든 서비스를 맡기고 비지니스에 집중할 수 있음Dropbox, Notion, SlackAWS를 이용해서 배포하기AWS 계정 생성 (https://aws.amazon.com/ko/)기본적으로 여러 자원에 대해 프리티어를 제공하여 정해진 사용량까지 무료로 체험 가능합니다.이후로는 자동으로 과금이 들어가기 때문에 사용하지 않을거라면 자원을 해지하는 것이 필요!ALTALT가입시 해외 결제가 가능한 카드 필요하며(체크 or 신용), 100원의 테스트 결제가 이루어짐(이후 취소)ALTALTALTManagement Console로 이동후 로그인ALTALTAWS EC2 인스턴스 생성ALTALT인스턴스 시작ALTALT원하는 사양을 커스텀 할 수 있다(IaaS)
Ubuntu 22.04 / t2.micro로 진행ALTALT키 페어는 내 EC2 인스턴스에 접근할 수 있는 일종의 암호키이다.
키페어를 공유하거나, 잃어버리지 않도록 주의ALTALTALT나머지는 모두 기본값으로 두고 인스턴스 시작ALTALTALT생성된 인스턴스ALTAWS EC2 인스턴스 접속macOS터미널을 이용해서 접속 가능다운로드 받아둔 .pem 파일을 사용해서 접속ssh -i [키 페어 파일] [유저 이름]@[퍼블릭 DNS 주소]ALTPython복사ssh -i ~~/~~.pem ubuntu@ec2~~~~~.amazonaws.com
​ALT최초 연결시 yes 입력 후 진행ALT만약 Unprotected Private Key File 경고가 뜬다면ALTAWS에서 임대한 EC2 인스턴스에 접속했다 !ALTwindows윈도우는 CMD로 바로 SSH에 접근할 수 없고 외부 프로그램을 이용해야함이전에는 PuTTY라는 툴을 많이 이용했으나 더 기능이 많고 사용성이 좋은 모바엑스텀(MobaXTerm)으로 진행ALT추억의 PuTTY (하지만 아직까지도 많이 사용한다)ALT모바엑스텀(MobaXTerm) 설치ALTSSH 접속 선택ALTRemote host : AWS의 퍼블릭 DNS 입력Specify username 체크 후 ubuntu 입력Advanced SSH settings 선택후 이전에 생성했던 .pem 파일 선택ALT모두 입력했다면 OK 클릭 !ALTALTALTAWS에서 임대한 EC2 인스턴스에 접속했다 !ALTGithub에 코드 올리기📕이제 우리가 열심히 만든 코드를 Github에 올려 봅시다!왜 해야하죠?우리 컴퓨터가 아니라 임대한 컴퓨터(EC2)에 코드를 옮겨야 하니까 !repository 생성후 push 해주세요 🙂requirements.txt 최신 버전으로 다시 한 번 freeze 하기 !.gitignore 꼭 잘 설정하기 !추천 gitignore아래 내용을 .gitignore 에 붙여넣고 필요할 경우 더 추가해서 사용해보자Python복사# Created by https://www.toptal.com/developers/gitignore/api/windows,macos,python,venv,visualstudiocode,DJANGO,pycharm
# Edit at https://www.toptal.com/developers/gitignore?templates=windows,macos,python,venv,visualstudiocode,DJANGO,pycharm
### Custom ###
config.py

### DJANGO ###
*.log
*.pot
*.pyc
__pycache__/
local_settings.py
db.sqlite3
db.sqlite3-journal
media

# If your build process includes running collectstatic, then you probably don''t need or want to include staticfiles/
# in your Git repository. Update and uncomment the following line accordingly.
# <DJANGO-project-name>/staticfiles/
### DJANGO.Python Stack ###
# Byte-compiled / optimized / DLL files
*.py[cod]
*$py.class
# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/
cover/
# Translations
*.mo

# DJANGO stuff:
# Flask stuff:
instance/
.webassets-cache

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/
# PyBuilder
.pybuilder/
target/
# Jupyter Notebook
.ipynb_checkpoints

# IPython
profile_default/
ipython_config.py

# pyenv
#   For a library or package, you might want to ignore these files since the code is
#   intended to run in multiple environments; otherwise, check them in:
# .python-version
# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don''t work, or not
#   install all needed dependencies.
#Pipfile.lock
# poetry
#   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
#   This is especially recommended for binary packages to ensure reproducibility, and is more
#   commonly ignored for libraries.
#   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
#poetry.lock
# pdm
#   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
#pdm.lock
#   pdm stores project-wide configurations in .pdm.toml, but it is recommended to not include it
#   in version control.
#   https://pdm.fming.dev/#use-with-ide
.pdm.toml

# PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
__pypackages__/
# Celery stuff
celerybeat-schedule
celerybeat.pid

# SageMath parsed files
*.sage.py

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/
# Spyder project settings
.spyderproject
.spyproject

# Rope project settings
.ropeproject

# mkdocs documentation
/site

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/
# pytype static type analyzer
.pytype/
# Cython debug symbols
cython_debug/
# PyCharm
#  JetBrains specific template is maintained in a separate JetBrains.gitignore that can
#  be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
#  and can be added to the global gitignore or merged into this file.  For a more nuclear
#  option (not recommended) you can uncomment the following to ignore the entire idea folder.
#.idea/
### macOS ###
# General
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two 
Icon


# Thumbnails
._*
# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

### macOS Patch ###
# iCloud generated files
*.icloud

### PyCharm ###
# Covers JetBrains IDEs: IntelliJ, RubyMine, PhpStorm, AppCode, PyCharm, CLion, Android Studio, WebStorm and Rider
# Reference: https://intellij-support.jetbrains.com/hc/en-us/articles/206544839
# User-specific stuff
.idea/**/workspace.xml
.idea/**/tasks.xml
.idea/**/usage.statistics.xml
.idea/**/dictionaries
.idea/**/shelf

# AWS User-specific
.idea/**/aws.xml

# Generated files
.idea/**/contentModel.xml

# Sensitive or high-churn files
.idea/**/dataSources/
.idea/**/dataSources.ids
.idea/**/dataSources.local.xml
.idea/**/sqlDataSources.xml
.idea/**/dynamic.xml
.idea/**/uiDesigner.xml
.idea/**/dbnavigator.xml

# Gradle
.idea/**/gradle.xml
.idea/**/libraries

# Gradle and Maven with auto-import
# When using Gradle or Maven with auto-import, you should exclude module files,
# since they will be recreated, and may cause churn.  Uncomment if using
# auto-import.
# .idea/artifacts
# .idea/compiler.xml
# .idea/jarRepositories.xml
# .idea/modules.xml
# .idea/*.iml
# .idea/modules
# *.iml
# *.ipr
# CMake
cmake-build-*/
# Mongo Explorer plugin
.idea/**/mongoSettings.xml

# File-based project format
*.iws

# IntelliJ
out/
# mpeltonen/sbt-idea plugin
.idea_modules/
# JIRA plugin
atlassian-ide-plugin.xml

# Cursive Clojure plugin
.idea/replstate.xml

# SonarLint plugin
.idea/sonarlint/
# Crashlytics plugin (for Android Studio and IntelliJ)
com_crashlytics_export_strings.xml
crashlytics.properties
crashlytics-build.properties
fabric.properties

# Editor-based Rest Client
.idea/httpRequests

# Android studio 3.1+ serialized cache file
.idea/caches/build_file_checksums.ser

### PyCharm Patch ###
# Comment Reason: https://github.com/joeblau/gitignore.io/issues/186#issuecomment-215987721
# *.iml
# modules.xml
# .idea/misc.xml
# *.ipr
# Sonarlint plugin
# https://plugins.jetbrains.com/plugin/7973-sonarlint
.idea/**/sonarlint/
# SonarQube Plugin
# https://plugins.jetbrains.com/plugin/7238-sonarqube-community-plugin
.idea/**/sonarIssues.xml

# Markdown Navigator plugin
# https://plugins.jetbrains.com/plugin/7896-markdown-navigator-enhanced
.idea/**/markdown-navigator.xml
.idea/**/markdown-navigator-enh.xml
.idea/**/markdown-navigator/
# Cache file creation bug
# See https://youtrack.jetbrains.com/issue/JBR-2257
.idea/$CACHE_FILE$

# CodeStream plugin
# https://plugins.jetbrains.com/plugin/12206-codestream
.idea/codestream.xml

# Azure Toolkit for IntelliJ plugin
# https://plugins.jetbrains.com/plugin/8053-azure-toolkit-for-intellij
.idea/**/azureSettings.xml

### Python ###
# Byte-compiled / optimized / DLL files
# C extensions
# Distribution / packaging
# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
# Installer logs
# Unit test / coverage reports
# Translations
# DJANGO stuff:
# Flask stuff:
# Scrapy stuff:
# Sphinx documentation
# PyBuilder
# Jupyter Notebook
# IPython
# pyenv
#   For a library or package, you might want to ignore these files since the code is
#   intended to run in multiple environments; otherwise, check them in:
# .python-version
# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don''t work, or not
#   install all needed dependencies.
# poetry
#   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
#   This is especially recommended for binary packages to ensure reproducibility, and is more
#   commonly ignored for libraries.
#   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
# pdm
#   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
#   pdm stores project-wide configurations in .pdm.toml, but it is recommended to not include it
#   in version control.
#   https://pdm.fming.dev/#use-with-ide
# PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
# Celery stuff
# SageMath parsed files
# Environments
# Spyder project settings
# Rope project settings
# mkdocs documentation
# mypy
# Pyre type checker
# pytype static type analyzer
# Cython debug symbols
# PyCharm
#  JetBrains specific template is maintained in a separate JetBrains.gitignore that can
#  be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
#  and can be added to the global gitignore or merged into this file.  For a more nuclear
#  option (not recommended) you can uncomment the following to ignore the entire idea folder.
### Python Patch ###
# Poetry local configuration file - https://python-poetry.org/docs/configuration/#local-configuration
poetry.toml

# ruff
.ruff_cache/
# LSP config files
pyrightconfig.json

### venv ###
# Virtualenv
# http://iamzed.com/2009/05/07/a-primer-on-virtualenv/
[Bb]in
[Ii]nclude
[Ll]ib
[Ll]ib64
[Ll]ocal
[Ss]cripts
pyvenv.cfg
pip-selfcheck.json

### VisualStudioCode ###
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json
!.vscode/*.code-snippets

# Local History for Visual Studio Code
.history/
# Built Visual Studio Code Extensions
*.vsix

### VisualStudioCode Patch ###
# Ignore all local history of files
.history
.ionide

### Windows ###
# Windows thumbnail cache files
Thumbs.db
Thumbs.db:encryptable
ehthumbs.db
ehthumbs_vista.db

# Dump file
*.stackdump

# Folder config file
[Dd]esktop.ini

# Recycle Bin used on file shares
$RECYCLE.BIN/
# Windows Installer files
*.cab
*.msi
*.msix
*.msm
*.msp

# Windows shortcuts
*.lnk

# End of https://www.toptal.com/developers/gitignore/api/windows,macos,python,venv,visualstudiocode,DJANGO,pycharm

​config.py 올리면 안된다 !가상 환경 폴더도 꼭 제외하자 ! (venv , .venv 등)AWS EC2 기본 설정ALT현재 우리의 EC2는 새 컴퓨터나 다름없다.ALTIaaS 이므로 우리는 인프라를 서비스 받고 있음모든 설정을 직접해주는 것이 필요기본 프로그램 설치 및 설정Python복사sudo apt-get update # 패키지 정보 업데이트
​ALTPython복사sudo apt-get install python3-pip
​ALTALTTab으로 OK로 이동한 후 EnterALTALTpython과 pip 설치 완료ALTCode Clone 및 패키지 설치하기EC2에서 Clone 받기Python복사git clone {repository 주소},
​ALTALT패키지 설치하기우리 DJANGO 프로젝트를 실행하기 위해서는 다양한 패키지가 필요해요!우리에게 필요한 패키지는 requirements.txt 안에 버전과 함께 모두 명시되어 있답니다!Python복사sudo apt-get install build-essential libpq-dev -y
requirements 설치시 필요할 수 있는 시스템 패키지 사전 설치 
(중간에 나오는 창에서는 모두 OK로 진행)ALT​Python복사pip install -r requirements.txt
requirements를 참고하며 모든 패키지를 버전에 맞게 설치ALT​DJANGO 실행해보고 설정하기일단 실행해보기우선 DJANGO 프로젝트를 실행해 봅시다!Python복사python3 manage.py runserver
​ALT실행에 필요한 config 파일이 없기에 실행이 되지 않는다ALTconfig(env) 파일❗실제 환경에서는 config(env)를 설정하는 다양한 방법이 존재합니다.

지금처럼 파일 형태를 가지고 있는 케이스도 있지만,
 환경 변수 설정이나 인프라의 지원을 받는등의 방법도 있어요!

이번에 우리는 직접 필요한 파일을 만들어서 설정해 보도록 하겠습니다!(1) 홈 디렉토리에 config.py 파일 생성(2) vi를 사용해서 편집(3) 작성한 config.py 파일 옮기기(4) 다시 실행해보면현재 상태 이해하기ALTdb.sqlite3 파일은 gitignore에 의해 제외되고 있습니다. 

그렇기 때문에 현재 migration 파일은 있으나, 
데이터베이스에 반영이 안 된 상태이기에 다시 migration이 필요합니다!Python복사python3 manage.py migrate
​*makemigrations 명령은 배포 인스턴스에서 하지 않습니다!
필요할 경우 로컬에서 모두 작업해서 migration 파일을 생성한 뒤,
해당 변경 사항을 받아와서 적용해야 합니다.superuser 생성Python복사python3 manage.py createsuperuser
​포트 개방하고 접속해보기이번엔 아래 명령어를 이용해서 서버를 실행해 봅시다Python복사python3 manage.py runserver 0:8000
​0 : 이 서버에 접속 할 수 있도록 함8000 : 8000번 포트로 접속을 허용그리고 EC2 IP 주소를 이용해서 접속해보면?ALTALT안…된다 !ALT아직 EC2에서 8000 포트로의 접속을 허용해주지 않았기 때문이에요!포트 열어주기EC2 인스턴스 아래의 보안 → 보안 그룹 → 인바운드 규칙 편집ALTALT인바운드 : 우리 EC2 인스턴스로 들어오는 규칙
아웃바운드 : EC2에서 밖으로 나가는 규칙ALTALTALT그리고 다시 접속해보면 !ALTsettings의 allowd_hosts 항목에 우리의 EC2 IP 주소를 적어줘야한다ALTALLOWED_HOSTS 설정하고 재배포 하기DJANGO는 프로젝트가 실행되는 호스트를 등록하는 보안기능을 제공합니다.ALTALTsettings.py에 내 EC2 IP를 넣어준다ALT코드를 수정했으니 다시 push를 하고, EC2로 가서 다시 pull을 받는다ALT그리고 실행후 접속해보면?Python복사python3 manage.py runserver 0:8000
​ALT실제로 배포가 된것을 알 수 있다 !ALT개발 서버에서 벗어나기지금까지 DJANGO 서버를 실행할 때는 계속 DJANGO에 내장된 개발 서버를 사용했지만, 
배포 환경에서는 더 효율적인 처리를 할 수 있는 환경이 필요합니다.일반적으로 DJANGO는 Gunicorn과 Nginx를 사용해서 배포 환경을 구성해요!구조 이야기📕사실 우리의 DJANGO는 ‘웹서버’가 아니에요.
정확하게 말하면 Web Application이며 Nginx가 웹 서버이고,
이 둘 사이를 연결해주는 매개체가 WSGI에 해당하는 Gunicorn입니다!Python복사Web Server <-> WSGI <-> Web Application
Nginx <-> Gunicorn <-> DJANGO
​Web Application?식당으로 따지면 요리사요청에 따라서 다양한 요청을 직접 처리해서 동적인 응답을 만들어내는 주체WSGI(Web Server Gateway Interface)식당으로 따지면 서빙 직원HTTP와 Python으로 동작하는 DJANGO간의 연결을 담당하는 인터페이스HTTP로 들어오는 네트워크 신호를 Python Application으로 변환해서 전달해주는 역할을 한다. HTTP 네트워크 신호는 Python과 아무런 연관성이 없기때문에 이러한 중간 인터페이스가 필요한 것.이전의 개발 서버는 DJANGO에 내장되어 있는 간단한 WSGI를 사용한것Web Server?식당으로 따지면 안내 데스크(출입구)클라이언트의 HTTP 요청을 받아서 정적 파일을 바로 제공하거나 로드밸런싱(여러대의 서버가 있을경우 부하를 분산시켜 트래픽을 처리하는 기술)등을 앞쪽에서 담당하여 전체적인 시스템의 가용성을 증가시키는 역할gunicorn 설치 및 설정하기ALTPython복사$ sudo apt-get update
$ sudo apt-get install gunicorn
설치 과정에서 나오는 설정들은 tab을 이용해서 모두 OK로 설치ALT​Gunicorn 실행하기manage.py 가 있는 폴더에서 실행해 줍니다.Python복사gunicorn --bind 0:8000 api_pjt.wsgi:application
​ALT그리고 다시 웹브라우저로 들어가봐도 잘 동작하는 것을 볼 수 있습니다.ALT그런데 /admin/ 으로 들어가보면?ALT정적 파일이 제공되고 있지 않기때문 ! → Nginx에서 처리 예정정적 파일 다루기정적파일 설정 및 한 곳으로 모으기settings.py에 static 파일들이 위치할 경로와 url을 지정해 줍니다.Python복사...
STATIC_URL = "static/"
STATIC_ROOT = BASE_DIR / "static"
...
settings.pyALT​코드변경 → commit → puth 이후 EC2에서 pull !정적파일 한 곳에 모으기Python복사python3 manage.py collectstatic
​ALTNginx 설치 및 설정하기Python복사sudo apt install nginx -y
중간에 멈추어서 물어보는 구간에서는 엔터를 이용해서 모두 넘겨주며 설치ALT​/etc/nginx/stites-available 로 이동해서 설정을 등록해 줍니다.Python복사cd /etc/nginx/sites-available
​내 설정 파일 생성Python복사sudo vi DJANGO
​Python복사server {
        listen 80;
        server_name *.compute.amazonaws.com;
        charset utf-8;
		    client_max_body_size 128M;

        location /static {
                alias /home/ubuntu/edu-DJANGO-test/static;
},

        location / {
                include proxy_params;
                proxy_pass http://unix:/tmp/gunicorn.sock;
},
},
esc → :wq 입력 후 Enter로 빠져나오기ALT​📕listen 8080 포트로 들어오면 웹 서버를 만날 수 있음HTTP의 기본 포트는 80 포트www.aidenlim.dev:80 == www.aidenlim.dev설정 파일 적용 하기작성한 DJANGO 설정 파일을 Nginx에게 등록해주는 과정이 필요sites-available 에 설정 목록을 만들어두고 sites-enabled 에서 실제로 적용하는 구조Python복사cd /etc/nginx/sites-enabled
​Python복사sudo rm default # 기본 설정 삭제
​Python복사sudo ln -s /etc/nginx/sites-available/DJANGO
윈도우로 치면 바로가기 링크를 만드는 것ALT​ALT내가 작성한 설정만 남아있다 !ALTPython복사sudo nginx -t # 설정이 올바른지 테스트
​ALTnignx 유저 정보 바꿔주기Python복사sudo vi /etc/nginx/nginx.conf
​ALTi 를 입력해 INSERT 모드로 들어가 바꿔주고 esc 로 나온후 :wq 를 이용해 반영ALTNginx 실행하기Python복사sudo systemctl start nginx
Nginx 실행ALT​Python복사sudo systemctl stop nginx
Nginx 중지ALT​Python복사sudo systemctl restart nginx
Nginx 재시작ALT​80 포트 열어주기ALT이제 포트번호 없이 내 ip 주소로 바로 들어가면 Nginx 설정을 만날 수 있다 !ALTGunicorn 서비스 설정 및 실행이전에는 아래의 명령어를 이용해서 Gunicorn을 실행했습니다.Python복사gunicorn --bind 0:8000 api_pjt.wsgi:application
​이 방식은 포트를 이용해서 연결하는 방식이지만, 
유닉스 계열 시스템에는 소켓을 이용하는 것이 효율적인 방법입니다.
(소켓으로 연결하면 좋구나 정도로만 생각해 둡시다!)더구나 지금은 Shell을 종료하면 Gunicorn도 종료되어 서비스가 되지 않음→ 계속해서 동작하도록 하고 AWS 서버를 재시작해도 동작해야한다!→ 서비스(service)로 등록 필요!Python복사cd /etc/systemd/system
​Python복사sudo vi gunicorn.service
gunicorn 서비스 파일 생성ALT​Python복사[Unit]
Description=gunicorn daemon
After=network.target

[Service]
User=ubuntu
Group=ubuntu
WorkingDirectory=<manage.py가 위치한 디렉토리 pwd>
ExecStart=<gunicorn이 설치된 가상환경 위치> \
        --workers 2 \
        --bind unix:/tmp/gunicorn.sock \
        <wsgi.py가 있는 디렉토리 이름>.wsgi:application

[Install]
WantedBy=multi-user.target
​Python복사[Unit]
Description=gunicorn daemon
After=network.target

[Service]
User=ubuntu
Group=ubuntu
WorkingDirectory=/home/ubuntu/edu-DJANGO-test
ExecStart=/usr/bin/gunicorn \
        --workers 2 \
        --bind unix:/tmp/gunicorn.sock \
        api_pjt.wsgi:application

[Install]
WantedBy=multi-user.target
예시 코드이므로 이대로 입력하면 안된다. 내 경로를 입력하자.ALT​다시 ip 주소로 들어가보면 👀ALTALT정적 파일도 잘 적용되었다 !ALT배포 마무리개발 모드 종료하기Python복사# SECURITY WARNING: don''t run with debug turned on in production!
DEBUG = False
settings.pyALT​commit → push & EC2 pull !Gunicorn 재시작Python복사sudo systemctl restart gunicorn
​Python복사sudo systemctl status gunicorn
동작 상태 확인ALT​ALTALT이제는 내부 정보가 보이지 않는다 !ALTPostman 동작 확인마지막으로 postman 동작을 확인해보자ALT환경 변수로 등록해서 사용해보기ALTALT', 16),
('DOCKER', 'Docker와 GitHub Actions를 활용한 CI/CD 및 자동 배포 실습', '# Docker와 CI/CD .by 김대영 튜터님

### **1. 강의 목표**

- Docker 및 가상 컨테이너의 개념을 이해하고, 기본적인 설치 및 설정 방법을 익힌다.
- Docker를 활용하여 개발 환경을 가상화하고, CI/CD의 기초 개념을 배우고 실습을 진행한다.

---

### **2. Docker 개념 설명**

### **가상화와 컨테이너화**

- **가상화(Virtualization)**: **하나의 물리적인 서버** 위에 **여러 개의 운영체제(OS)를 가상으로 실행**하는 기술. 이를 위해 **하드웨어 자원을 분할하여 여러 운영체제를 동시에 실행**할 수 있음.
    - Ex) VMWare, VirtualBox, Bootcamp, Parellels ⇒ 여러분들 게임 클라이언트 여러 개 돌릴 때 많이 써보셨을 겁니다!
- **컨테이너(Containerization)**: **가상화보다 더 가벼운 기술**로, **운영체제 커널(가장 low level의 핵심 자원)**을 공유하면서 **필요한 라이브러리와 설정**을 컨테이너 안에 넣어 독립적으로 실행할 수 있도록 하는 방식.
    - EX) Docker, Rancher, … ⇒ 아마 최근에 처음 들어보셨을 겁니다.

### **Docker와 컨테이너**

- **Docker**는 애플리케이션을 **컨테이너**라는 가상 환경 안에서 실행하도록 도와주는 도구입니다.
    - **Dockerfile**은 **붕어빵 기계** **설계도**
    - **Image**는 설계도를 통해 만들어진 **붕어빵 기계**
    - **Container**는 붕어빵 기계를 통해 만들어진 **실제 붕어빵**(프로그램)
- **컨테이너**는 OS와 라이브러리 종속성을 최소화하며, 애플리케이션과 그에 필요한 모든 요소를 하나의 패키지로 묶어서 배포하고 실행할 수 있게 해줍니다.
    - EX) **가상화** ⇒ OS(운영체제/ Windows, MacOS, Linux…) + 라이브러리 전부 + 애플리케이션 전부 ⇒ 자원을 너무 많이 써요 ㅠ
    - EX) **컨테이너** ⇒ **Linux(제일 가벼운 OS)** + **필요 라이브러리 일부 + 애플리케이션 하나**

---

### **3. Docker 설치 및 설정**

### **(1) Windows 환경에서 Docker 설치 및 설정**

1. **Docker Desktop 다운로드 및 설치**
    - Docker 공식 사이트(https://www.docker.com/products/docker-desktop)에서 Windows용 Docker Desktop을 다운로드합니다.
    - 다운로드한 파일을 실행하고, 화면에 따라 설치합니다.
2. **Hyper-V 활성화 (필요한 경우)**
    - Docker Desktop을 사용하기 위해 Hyper-V가 활성화되어 있어야 합니다. Windows 기능에서 "Hyper-V"를 활성화하거나, 아래의 명령어를 관리자 권한으로 PowerShell에 입력하여 활성화할 수 있습니다.
    
    ```powershell
    dism.exe /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V-All
    
    ```
    
3. **Docker Desktop 실행**
    - 설치가 완료되면 Docker Desktop을 실행하고, 계정으로 로그인합니다.
    - Docker가 정상적으로 실행되면 시스템 트레이에서 Docker 아이콘을 확인할 수 있습니다.

### **(2) MacOS 환경에서 Docker 설치 및 설정**

1. **Docker Desktop 다운로드 및 설치**
    - Docker 공식 사이트(https://www.docker.com/products/docker-desktop)에서 MacOS용 Docker Desktop을 다운로드합니다.
    - 다운로드한 `.dmg` 파일을 열고 Docker 아이콘을 Applications 폴더에 드래그하여 설치합니다.
2. **Docker Desktop 실행**
    - 설치가 완료되면 Docker Desktop을 실행하고, 계정으로 로그인합니다.
    - Docker가 정상적으로 실행되면 메뉴 바에서 Docker 아이콘을 확인할 수 있습니다.

---

### **4. Docker 기본 사용법**

### **Docker 이미지와 컨테이너**

- **이미지(Image)**: Docker 컨테이너의 템플릿. 애플리케이션을 실행할 때 필요한 파일들을 포함한 상태.
- **컨테이너(Container)**: 이미지를 기반으로 실행되는 가상 환경. 애플리케이션을 실행하는 실제 인스턴스입니다.

### **(1) 기본 명령어**

1. **Docker 이미지 검색**
    - Docker Hub에서 이미지를 검색하고 다운로드합니다.
    
    ```bash
    docker search <image_name>
    docker pull <image_name>
    
    ```
    
2. **Docker 컨테이너 실행**
    - 이미지를 기반으로 컨테이너를 실행합니다.
    
    ```bash
    docker run -d -p 80:8001 <image_name>  # 80포트로 들어오면, 8001 포트로 연결해줘
    
    ```
    
    - `d` 옵션은 백그라운드 실행을 의미하고, `p` 옵션은 포트 매핑을 설정합니다.
3. **Docker 컨테이너 상태 확인**
    
    ```bash
    docker ps | grep python  # MacOS 기준, Python 이미지의 상태를 가져와 줘.
    
    ```
    
    - 실행 중인 컨테이너 목록을 확인할 수 있습니다.
4. **Docker 컨테이너 종료**
    
    ```bash
    docker stop <container_id>
    
    ```
    
5. **Docker 컨테이너 삭제**
    
    ```bash
    docker rm <container_id>
    
    ```
    
6. **Docker 이미지 삭제**
    
    ```bash
    docker rmi <image_name>
    
    ```
    

---

### **5. Docker로 개발 환경 만들기: 실습 예제**

### **(1) 간단한 웹 애플리케이션 컨테이너화**

1. **애플리케이션 코드 작성**:
    - `app.py`라는 간단한 Python 웹 애플리케이션을 작성합니다.
    
    ```python
    from flask import Flask
    
    app = Flask(__name__)
    
    @app.route(''/'')
    def hello_world():
        return ''Hello, Docker World!''
    
    if __name__ == ''__main__'':
        app.run(host=''0.0.0.0'')
    
    ```
    
2. **Dockerfile 작성**
    - Python 애플리케이션을 Docker로 컨테이너화할 때 필요한 `Dockerfile`을 작성합니다.
    
    ```
    # 기본 이미지 설정
    FROM python:3.8-slim
    
    # 애플리케이션 파일 복사
    COPY app.py /app.py
    
    # Flask 설치
    RUN pip install Flask
    
    # 애플리케이션 실행
    CMD ["python", "/app.py"]
    
    ```
    
3. **Docker 이미지 빌드 및 실행**
    
    ```bash
    docker build -t flask-app .
    docker run -d -p 5000:5000 flask-app
    
    ```
    
    - `localhost:5000`에서 웹 애플리케이션을 확인할 수 있습니다.

---

### **6. CI/CD와 Docker**

### **CI/CD 개념 설명**

- **CI (Continuous Integration)**: 소프트웨어 개발 시, 코드를 자주 통합하여 빌드하고 테스트하는 과정. 버그를 초기에 발견하고 해결하기 위한 기법.
- **CD (Continuous Delivery / Continuous Deployment)**: 소프트웨어를 자동으로 배포하는 과정. CI 후, 자동으로 서버에 배포되는 과정.

### **Docker와 CI/CD의 연계**

- Docker는 CI/CD 파이프라인에서 중요한 역할을 합니다. Docker 이미지를 CI/CD 파이프라인에 포함시키면, 동일한 환경에서 애플리케이션을 테스트하고 배포할 수 있습니다.
- **예시**: GitHub Actions, GitLab CI 등에서 Docker를 활용하여 자동화된 빌드 및 배포를 설정할 수 있습니다.', 1),
('DOCKER', 'Docker를 활용한 DJANGO 프로젝트 환경 설정 및 통합 가이드', '# Docker 특강 자료 [1]

### **1. DJANGO 프로젝트 생성**

1. **DJANGO 프로젝트 초기화**
    
    ```bash
    cd my-project-directory # 여러분들 평소 하던 프로젝트 경로로 이동하세요.
    mkdir DJANGO-docker-app
    cd DJANGO-docker-app
    python -m venv venv
    source venv/bin/activate  # Windows: venv\\Scripts\\activate
    pip install DJANGO==4.2.1  # Docker에서 쓸 Python 버전과 호환이 되는 DJANGO 버전
    DJANGO-admin startproject myapp .
    
    ```
    
    - **커맨드 설명**:
        - `mkdir`: 폴더(디렉토리) 만들기
        - `mkdir DJANGO-docker-app`: 새 프로젝트 디렉토리 생성.
        - `python -m venv venv`: 가상 환경 생성.
        - `source venv/bin/activate`: 가상 환경 활성화.
        - `pip install DJANGO==4.2.1`: DJANGO 설치.
        - `DJANGO-admin startproject myapp .`: 현재 디렉토리에 DJANGO 프로젝트 초기화.
2. **로컬 서버 실행 확인**
    
    ```bash
    python manage.py runserver
    
    ```
    
    브라우저에서 `http://127.0.0.1:8000` 접속하여 DJANGO 기본 페이지 확인.
    

---

### **2. Docker란 무엇인가?**

Docker는 애플리케이션을 실행하기 위한 **컨테이너 기반의 가상화 기술**입니다. 다음은 Docker를 사용하는 이유와 장점입니다:

1. **일관된 환경 제공**:
    - **개발 환경, 테스트 환경, 배포 환경 간 차이**를 줄일 수 있습니다.
    - `"제 컴퓨터에서는 잘 동작했는데 서버에서 안 돼요"` 등의 문제 해결.
2. **종속성 관리**:
    - **Python, Node.js, PostgreSQL 등의 종속성을 컨테이너 내부**에서 관리.
    - **설치 충돌 및 버전 문제**를 방지.
3. **빠른 배포**:
    - Dockerfile을 통해 이미지를 생성하고 컨테이너로 실행하면, 복잡한 설치 과정을 생략 가능.
    - 서버 설정 없이 동일한 이미지를 **어디에서든** 실행 가능.
4. **확장성**:
    - 여러 서비스를 **독립적으로 실행**하여 **마이크로서비스 아키텍처**를 지원.

---

### **3. Docker 설정**

1. **Docker 설치 (이미 했음)**
    - 공식 사이트에서 설치: [Docker Desktop](https://www.docker.com/products/docker-desktop)
    - 설치 후 명령어 확인:
    
    ```bash
    docker --version
    
    ```
    
2. **Dockerfile 작성**
    
    프로젝트 루트 디렉토리에 `Dockerfile` 생성:
    
    ```
    # (베이스 이미지)
    # python:3.9-slim이라는 이미지를 Docker hub에서 가져와 줘!
    FROM python:3.9-slim
    
    # (작업 디렉토리 설정)
    # 앞으로 돌아갈 컨테이너에는 app이라는 폴더를 만들어서, 거기에서 작업할 거야
    WORKDIR /app
    
    # (종속성 설치)
    # requirements.txt을 WORKDIR로 설정한 app이라는 폴더에 옮겨줘.
    COPY requirements.txt .
    
    # requirements.txt에 있는 거 전부 설치해줘.
    RUN pip install -r requirements.txt
    
    # (소스 코드 복사)
    # 지금 폴더를 컨테이너에 다 복사해줘.
    COPY . .
    
    # (포트 노출)
    # 8000번 포트만 외부에 노출(expose)시킬 거야.
    EXPOSE 8000
    
    # (명령 실행)
    # python manage.py runserver 0.0.0.0:8000 명령어를 컨테이너에서 실행해줘.
    # 0.0.0.0은 외부에 연결 가능한 것을 의미
    CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
    
    ```
    
    - **아나콘다가 베이스**이신 분들은 `requirements.txt`가 매우 많을 수 있습니다. 아래의 requirements.txt로 사용해주세요.
        - Windows
            
            ```
            asgiref==3.8.1
            DJANGO==4.2.1
            sqlparse==0.5.3
            ```
            
        - MacOS
            
            ```
            asgiref==3.8.1
            DJANGO==4.2.1
            sqlparse==0.5.3
            ```
            
3. **`requirements.txt` 생성**
    
    ```bash
    pip freeze > requirements.txt
    
    ```
    
    - **커맨드 설명**:
        - `pip freeze > requirements.txt`: 현재 가상 환경의 종속성을 `requirements.txt` 파일에 저장.
4. **Docker 이미지 빌드 및 실행**
    - 이미지 빌드:
        
        ```bash
        docker build -t DJANGO-app .
        
        ```
        
        - **커맨드 설명**:
            - `docker build -t DJANGO-app .` `docker`야, 지금 경로(`.`)를 `DJANGO-app`이라는 이름(`-t`)으로 빌드(`build`)해줘.
    - 컨테이너 실행:
        
        ```bash
        docker run -d -p 8000:8000 DJANGO-app
        
        ```
        
        - **커맨드 설명**:
            - `docker run -d -p 8000:8000 DJANGO-app` `docker`야, `DJANGO-app`이라는 컨테이너를 컨테이너로 실행(`run`)해줘. 내 컴퓨터에서 8000 포트로 접속하면, 컨테이너의 8000 포트로 연결해줘.(`-p 8000:8000`) 대신에, 너는 터미널에 붙어있지 말아줘. (`-d`)
    - 브라우저에서 `http://localhost:8000` 접속.

---

### **4. Docker와 DJANGO의 통합 이점**

1. **새로운 개발자 온보딩 간소화**
    - 개발 환경 설정이 쉽고 빠릅니다.
    - 백엔드 개발자나 다른 AI 개발자에게 `"깃헙에 있는 Dockerfile로 도커 빌드를 실행하세요"` 한 줄로 환경 구축 완료.
2. **서버 환경 간 호환성 문제 해결**
    - 운영 체제나 설정이 다른 서버에서도 **동일한 결과**를 **보장**.
3. **애플리케이션 격리**
    - **DJANGO 프로젝트**가 **다른 프로젝트와 독립적으로 실행**.
    - **동일 머신**에서 **여러 프로젝트 실행** 가능. ⇒ docker-compose랑 연결
4. **자동화된 배포**
    - Docker 이미지를 활용한 CI/CD(지속적 통합 및 배포) 프로세스 구축.

---

### **5. 추가 학습 리소스**

- [Docker 공식 문서](https://docs.docker.com/)
- [DJANGO와 Docker를 활용한 배포 가이드](https://www.DJANGOproject.com/)', 2),
('DOCKER', 'Docker Compose를 활용한 Django와 Postgres 연동 실습', 'Docker Compose 강의 자료
1. 강의 개요
목표
Docker Compose를 사용해 DJANGO 애플리케이션과 Postgres 데이터베이스 연결
로컬 환경(우리 컴퓨터)에서 컨테이너 간 네트워크 설정 및 데이터베이스 연동 실습
오늘 배우는 내용
Docker Compose란 무엇인가?
DJANGO와 Postgres 연동
docker-compose.yml 파일 작성과 실습
2. Docker Compose 기초
1) Docker Compose란?
컨테이너 오케스트라이제이션(Container Ochestrzation)
Docker Compose: 여러 컨테이너를 정의하고 실행할 수 있는 도구
주요 장점
복잡한 다중 컨테이너 애플리케이션을 쉽게 관리
코드 기반으로 환경 설정 (docker-compose.yml)
컨테이너 간 네트워크 자동 구성
2) Docker Compose 설치
Docker 설치 확인
docker --version
docker-compose --version

​
설치 방법
Windows / MacOS: Docker Desktop에 포함되어 있음
Linux:
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

​
3) Docker-Compose 기본 사용법
docker-compose.yml 파일 작성
서비스 정의 (예: DJANGO, Postgres)
services:
  db:
    image: postgres:13
    environment:
      POSTGRES_DB: mydb
      POSTGRES_USER: myuser
      POSTGRES_PASSWORD: mypassword
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

  web:
    build: .
    command: python manage.py runserver 0.0.0.0:8000
    volumes:
      - .:/app
    ports:
      - "8000:8000"
    depends_on:
      - db
volumes:
  postgres_data:

​
네트워크 및 볼륨 설정
volumes:
  postgres_data:
 
​
명령어
docker-compose up : 컨테이너들 실행
docker-compose down : 컨테이너들 종료 및 삭제
docker-compose logs : 로그 확인
3. DJANGO와 Postgres 연결 실습
1) 프로젝트 준비
DJANGO 프로젝트 생성
mkdir DJANGO-docker-postgres
cd DJANGO-docker-postgres
conda deactivate
python -m venv venv  # 가상환경 생성
venv\\Scripts\\activate.bat # MacOS: source venv/bin/activate
pip install DJANGO
DJANGO-admin startproject myproject .
​
2) Dockerfile 작성
프로젝트 루트에 Dockerfile 생성
# Dockerfile
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 복사
COPY . .

# 서버 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

​
requirements.txt 파일 작성
asgiref==3.8.1
DJANGO==4.1.2
sqlparse==0.5.3
psycopg2-binary
​
3) docker-compose.yml 작성
docker-compose.yml 파일 생성
version: ''3.9''  # 파이썬의 버전

services:  # 내가 띄울 컨테이너 목록
  db:  # db라는 이름을 가진 컨테이너
    image: postgres:13  # postgres 13 버전 이미지를 가져올 거야.
    environment:  # db 컨테이너의 환경변수
      POSTGRES_DB: mydb  # 데이터베이스 이름
      POSTGRES_USER: myuser  # 데이터베이스 소유자(만든 사람)의 ID
      POSTGRES_PASSWORD: mypassword  # 소유자의 비밀 번호
    ports:  # 포트포워딩할 거다. (들어온 포트랑 나가는 포트랑 연결)
      - "5432:5432"  # 5432 포트로 외부에서 접속하면, 컨테이너 안의 5432 포트로 연결해 줘.
    volumes: # 컨테이너의 볼륨(하드디스크) 경로를 설정해준다.
      - postgres_data:/var/lib/postgresql/data  # 이건 정해져있는 값
  # 다른 컨테이너
  web:  # web이라는 이름을 가진 컨테이너
    build: .  # 지금 docker-compose가 있는 경로를 docker build해서 이미지 만들어라.
    volumes:  # web 컨테이너의 볼륨 설정
      - .:/app  # 지금 docker-compose.yml이 있는 경로는 컨테이너의 app 폴더랑 같다.
    ports: # 포트포워딩할 거다. (들어온 포트랑 나가는 포트랑 연결)
      - "8000:8000" # 8000번 포트로 외부에서 들어오는 걸, 컨테이너 안에 있는 8000번 포트랑 연결해 줘.
    depends_on:  # web 컨테이너는 의존해야 해. 어디에?
      - db  # db 컨테이너에.

volumes:  # 볼륨 이름 짓기
  postgres_data:  # postgres_data라는 볼륨 이름

​
4) DJANGO 데이터베이스 설정 변경
myproject/settings.py 수정
DATABASES = {
    ''default'': {
        ''ENGINE'': ''DJANGO.db.backends.postgresql'',
        ''NAME'': ''mydb'',
        ''USER'': ''myuser'',
        ''PASSWORD'': ''mypassword'',
        ''HOST'': ''db'',  # Docker Compose에서 정의한 서비스 이름
        ''PORT'': ''5432'',
    },
},

​
5) 프로젝트 실행 및 확인
Docker Compose 실행
docker-compose build
docker-compose up

​
Postgres 데이터베이스 마이그레이션
docker-compose exec web python manage.py migrate

​
슈퍼유저 생성
docker-compose exec web python manage.py createsuperuser

​
브라우저에서 확인
http://localhost:8000
DJANGO 애플리케이션 실행 확인
Postgres 데이터베이스 접근 확인
DBeaver 설치
Postgres 클라이언트(Dbeaver, DataGrip, …)를 사용하거나 pgAdmin 등을 활용
4. Docker Compose 주요 명령어 정리
컨테이너 실행 및 로그 확인
docker-compose up
docker-compose logs

​
백그라운드로 실행 (터미널에 안 뜨게)
docker-compose up -d

​
컨테이너 중지 및 삭제
docker-compose down

​
개별 서비스 하나만 실행
docker-compose up web

​
볼륨(디스크) 삭제 포함해서 컨테이너 중지
docker-compose down -v
', 3),
('DOCKER', 'Docker와 GitHub Actions를 활용한 CI/CD 및 클라우드 자동 배포 실습', '# Docker와 CI/CD 강의 자료

## **1. 강의 목표 및 개요**

1. **목표**
    - **Dockerfile을 작성**하고 Docker 이미지로 애플리케이션을 **컨테이너화**
    - **GitHub Actions**를 사용하여 **CI/CD 파이프라인** 설정
    - **무료 클라우드 서버(CloudType)**로 **애플리케이션 자동 배포**
2. **개요**
    - **Docker**: 애플리케이션을 컨테이너화하여 확장성과 효율성 확보
    - **CI/CD**: **코드 변경 사항**을 **자동으로 테스트하고 배포**
    - **실습 흐름**:
        1. Docker 기초 설명
        2. CloudType 예시 코드 GitHub에 Push
        3. GitHub Actions로 CI/CD 설정
        4. 클라우드 서버(CloudType)로 배포 자동화

---

## **2. Docker 기초**

### **1) Docker 기초**

- **Docker란?**
    - **컨테이너 기술**을 활용해 애플리케이션을 효율적으로 **배포 및 실행**
    - **이미지(Image)**: 애플리케이션과 필요한 환경의 스냅샷(**붕어빵 기계**)
    - **컨테이너(Container)**: 이미지를 실행한 독립적인 환경(**붕어빵 그 자체**)
- **Docker 주요 명령어**
    
    
    | 명령어 | 설명 |
    | --- | --- |
    | `docker build` | 이미지를 생성 |
    | `docker run` | 컨테이너를 실행 |
    | `docker ps` | 실행 중인 컨테이너 목록 |
    | `docker stop` | 컨테이너 중지 |

---

## **3. 무료 클라우드 서버에 배포**

### 1) CloudType을 통한 배포

1. cloudtype 접속
    
    [모두의 플랫폼팀, 클라우드타입](https://cloudtype.io/)
    
    ![Screenshot 2024-12-24 at 10.09.16 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/7528f300-1c1f-4414-bc5d-6406a109a77d/Screenshot_2024-12-24_at_10.09.16_AM.png)
    
    ![Screenshot 2024-12-24 at 10.10.14 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/fbc479bf-3b89-465d-ae2d-93022073575f/Screenshot_2024-12-24_at_10.10.14_AM.png)
    
    ![Screenshot 2024-12-24 at 10.10.32 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/5eab9da2-ead2-4c13-9a6a-93ae49e5355e/Screenshot_2024-12-24_at_10.10.32_AM.png)
    
    ![Screenshot 2024-12-24 at 10.11.15 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/2fdb9d16-6f29-43ee-90af-62faa4bccb7c/Screenshot_2024-12-24_at_10.11.15_AM.png)
    
    ![Screenshot 2024-12-24 at 10.12.39 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/b3eeac87-7c7b-45ba-bc21-044f69bcc5c6/Screenshot_2024-12-24_at_10.12.39_AM.png)
    
    ![Screenshot 2024-12-24 at 10.13.09 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/50a4fc03-3a79-4c5f-a8a0-08e03e78a08d/Screenshot_2024-12-24_at_10.13.09_AM.png)
    
    ![Screenshot 2024-12-24 at 10.13.26 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/646da417-96c3-4d6c-bd7d-e7eaf8da0245/Screenshot_2024-12-24_at_10.13.26_AM.png)
    

## **4. GitHub Actions을 사용한 CI/CD 설정**

### **1) CI/CD란?**

- **CI (Continuous Integration)**: 코드 변경 사항을 자동으로 병합
    - **지속적 통합**: 코드 변경사항 등을 자동으로 합쳐준다. (commit / push)
- **CD (Continuous Deployment)**: 특정 작업 이후 자동으로 배포
    - **지속적인 배포:** 위에서 변경된 변경사항을 Git에서 읽어들여서, 자동으로 웹사이트에 배포한다.

### **2) GitHub Actions 설정**

- **GitHub Actions Workflow 예제**
    1. 프로젝트 루트에 `.github/workflows/deploy.yml` 파일 생성
    2. 아래 코드(**CloudType에서 제공**)를 추가:
        
        ```yaml
        name: Deploy to cloudtype
        on:
          push:
            branches:
              - main
        jobs:
          deploy:
            runs-on: ubuntu-latest
            steps:
              - name: Checkout
                uses: actions/checkout@v2
              - name: Connect deploy key
                uses: cloudtype-github-actions/connect@v1
                with:
                  token: ${{ secrets.CLOUDTYPE_TOKEN },},  # CLOUDTYPE_TOKEN 생성 필요
                  ghtoken: ${{ secrets.GHP_TOKEN },},  # GHP 토큰 생성 필요
              - name: Deploy
                uses: cloudtype-github-actions/deploy@v1
                with:
                  token: ${{ secrets.CLOUDTYPE_TOKEN },},  # CLOUDTYPE_TOKEN 생성 필요
                  project: 본인_github_id/python-DJANGO
                  stage: main
                  yaml: |
                    name: python-DJANGO
                    app: python@3.9
                    options:
                      env:
                        - name: DJANGO_SECRET
                          value: 5xeuu%71e@wu=#f@^xs6fp0d$adc@c7dvk@8-gfb%0r@ynpe*-
                      ports: 8000
                      start: python3 manage.py runserver 0:8000
                      buildenv: []
                    context:
                      git:
                        url: git@github.com:${{ github.repository },},.git
                        ref: ${{ github.ref },},
                      preset: python-DJANGO
        ```
        
    3. **GHP_TOKEN**과 **CLOUDTYPE_TOKEN** 추가 (실습)
    4. 메인 브랜치에 푸쉬할 때마다 자동으로 배포되는 모습
        
        ![Screenshot 2024-12-24 at 10.20.02 AM.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/83c75a39-3aba-4ba4-a792-7aefe4b07895/a7fd8789-639c-41bd-bad5-2ca445558cc6/Screenshot_2024-12-24_at_10.20.02_AM.png)', 4);