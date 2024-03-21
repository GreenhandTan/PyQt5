import requests
import re
import os
import random

# 如果目录不存在，则创建目录
from util.common_util import get_current_time

url = "https://item.kongfz.com/Cxiaoshuo/tag_k34k33k30k30k33/"
# 设置消息头
header = {"User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36 Edg/102.0.1245.33"}


def get_recommend_books():
    res = requests.get(url=url, headers=header)
    if res.status_code == 200:
        return res.text
    else:
        return False


def parse_books(books):
    # 先抓div标签列表
    div_list = re.findall(
        '<div class="item clearfix">(.*?</div>.*?</div>.*?</div>.*?</div>.*?)</div>', books, re.S)
    # 在抓书名div
    books = []
    for div in div_list:
        book_name = re.findall('class="link">(.*?)</a>', div, re.S)
        books.append(book_name[0])
    # print(books)
    # 在抓图书信息
    # 作者
    authors = []
    # 其他信息（出版社，出版日期,无用信息，无用信息）
    other_books = []
    for div in div_list:
        min_div_list = re.findall('class="zl-isbn-info">(.*?)</div>', div, re.S)
        auther = re.findall('<span class="text">(.*?)</span>', str(min_div_list), re.S)
        # 字符串处理
        auther[0] = auther[0].split(' ', 5)
        authors.append(auther[0][0])
        other_book_info = re.findall(">/ (.*?)</span>", str(min_div_list), re.S)
        other_books.append(other_book_info)
    # print(other_books)
    # print(authors)
    end_books = []
    # 归纳信息（图书名，作者，出版社，数量，是否借阅，创建日期，出版日期）
    for i in range(len(div_list)):
        # 出版日期格式转换
        publish_data = other_books[i][1] + "-{}".format(random.randint(10, 29))
        data = [books[i], authors[i], other_books[i][0], random.randint(1, 100), 0, get_current_time(), publish_data]
        # print(data)
        end_books.append(data)
    # print(end_books)
    return end_books


def getBooksMessage():
    books = get_recommend_books()
    books_list = parse_books(books)
    return books_list


if __name__ == '__main__':
    books = get_recommend_books()
    books_list = parse_books(books)
    print(books_list)
