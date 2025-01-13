from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager  # 드라이버 자동 설치
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from .youtube import extract_script
from bs4 import BeautifulSoup
from .models import UserDocs
import pdfplumber
import re
import requests

# Chrome 드라이버 설정
options = Options()
options.add_argument("--headless")  # 창을 띄우지 않음 (필요없으면 삭제 가능)
options.add_argument("--disable-gpu")  # GPU 비활성화
options.add_argument("--no-sandbox")  # 샌드박스 비활성화
options.add_argument("--disable-dev-shm-usage")  # /dev/shm 사용 비활성화
service = Service(ChromeDriverManager().install())


# 전처리 함수 정의
def preprocess_text(txt):
    txt = remove_html_tags_except_code(txt)  # HTML 태그 제거 (코드스니펫 태그 제외)
    txt = re.sub(r"\[?스파르타코딩클럽\]?", "", txt)  # 특정 텍스트 제거
    txt = re.sub(r"Copyright.*$", "", txt)  # 저작권 문구 제거
    txt = txt.replace("\xa0", " ")  # 비공백 문자를 공백으로 변환
    txt = re.sub(r"\\[a-zA-Z]+\{.*?\}", "", txt)  # LaTeX 명령어 제거
    txt = re.sub(r"\s+", " ", txt).strip()  # 여러 공백을 하나로 축소하고 양옆 공백 제거
    txt = re.sub(r"http[s]?://\S+", "", txt)  # URL 제거
    txt = re.sub(r"\S+@\S+", "", txt)  # 이메일 주소 제거
    return txt


def remove_html_tags_except_code(txt):
    soup = BeautifulSoup(txt, "html.parser")
    # <code_snipet> 태그를 유지하며 다른 HTML 태그 제거
    for code_snipet in soup.find_all("code_snipet"):
        code_snipet.replace_with(f"CODE_START{code_snipet.get_text()}CODE_END")
    plain_text = soup.get_text()
    # CODE_START와 CODE_END를 다시 <code_snipet>로 복원
    return plain_text.replace("CODE_START", "<code_snipet>").replace(
        "CODE_END", "</code_snipet>"
    )


# URL을 처리하고 텍스트를 반환하는 함수
def process_url(url):
    # Chrome 드라이버 설정
    options = Options()
    options.add_argument("--headless")
    options.add_argument("--disable-gpu")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    service = Service(ChromeDriverManager().install())
    driver = webdriver.Chrome(service=service, options=options)

    try:
        # URL 로드
        driver.get(url)
        WebDriverWait(driver, 20).until(
            EC.presence_of_element_located((By.CSS_SELECTOR, ".notion-page-content"))
        )

        # 토글 열기
        toggle_buttons = driver.find_elements(
            By.XPATH, "//div[@role='button' and (@aria-expanded='false')]"
        )
        if toggle_buttons:
            for button in toggle_buttons:
                button.click()

        # HTML 파싱 및 텍스트 추출
        html_content = driver.page_source
        soup = BeautifulSoup(html_content, "html.parser")
        raw_txt = soup.get_text()
        cleaned_txt = preprocess_text(raw_txt)
        return cleaned_txt
    except Exception as e:
        raise Exception(f"Error processing URL: {e}")
    finally:
        driver.quit()


def read_text_file(self, file):
    return file.read().decode("utf-8")


def read_pdf(self, file):
    with pdfplumber.open(file) as pdf:  # PDF 파일을 열어 pdfplumber.PDF 객체를 생성
        text = ""
        for page in pdf.pages:
            text += (
                page.extract_text()
            )  # 해당 페이지에서 텍스트를 추출하고, 각 페이지에서 추출한 텍스트를 문자열로 합침
        return text


def fetch_with_requests(self, url):
    try:
        response = requests.get(url)
        response.raise_for_status()  # HTTP 오류 발생 시 예외 발생
        soup = BeautifulSoup(response.text, "html.parser")

        # 원하는 데이터 추출
        return soup.prettify()  # 예시로, prettify된 HTML 반환

    except requests.exceptions.RequestException as e:
        print(f"요청 중 오류 발생: {e}")
        return None  # 오류가 발생하면 None 반환


def read_url(self, url):
    try:
        if "notion" in url.lower():
            # Notion URL인 경우, pre_processing.py의 process_url 호출
            return process_url(url)
        elif "youtube" in url.lower():
            # Youtube URL인 경우, youtube.py의 extract_script 호출
            subtitle = extract_script(url)
            return subtitle
        else:
            # Notion이 아닌 URL은 BeautifulSoup와 Requests로 처리
            return self.fetch_with_requests(url)
    except Exception as e:
        raise Exception(f"Error reading URL: {e}")


def create_json_entry(self, content):
    file = UserDocs.objects.last()
    return {
        "id": file.id,
        "content": content,
    }
