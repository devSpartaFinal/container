# youtube-transcript-api==0.6.3
from youtube_transcript_api import YouTubeTranscriptApi
import re


def get_video_id(url):
    # ?:v= 기본 구조
    # \/ 축소형
    # {11} 11자 구조
    video_id_pattern = r"(?:v=|\/)([0-9A-Za-z_-]{11})"
    match = re.search(video_id_pattern, url)
    if match:
        return match.group(1)
    return None


def get_script(video_id):
    # 텍스트, 시작 시점, 자막 지속시간 딕셔너리 구조
    subtitle = ''
    transcription = YouTubeTranscriptApi.get_transcript(video_id, languages=['ko', 'en', 'en-US'])
    for content in transcription:
        subtitle += f"{content['text']} \n"
    return subtitle

def extract_script(url):
    id = get_video_id(url)
    subtitle = get_script(id)
    return subtitle