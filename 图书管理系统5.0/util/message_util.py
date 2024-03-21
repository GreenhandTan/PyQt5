import requests
import re

url = 'http://localhost:8080/Python_service/'


def get_recommend_news():
    res = requests.get(url=url)
    if res.status_code == 200:
        return res.text
    else:
        return False


def parse_news(news):
    news_titles = re.findall("<a .*?>(.*?)</a>", news, re.S)
    return news_titles


def getMessage():
    news = get_recommend_news()
    content = parse_news(news)
    return content


if __name__ == '__main__':
    news = get_recommend_news()
    content = parse_news(news)
    print(content)
