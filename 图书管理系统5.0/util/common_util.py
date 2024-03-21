import datetime
from PyQt5.QtCore import QRegExp
from PyQt5.QtGui import QRegExpValidator
from PyQt5.QtWidgets import QMessageBox

# 项目绝对地址
ABS_DIR = r"C:\Users\25974\PycharmProjects\图书管理系统5.0"
# 身份映射
ROLE_MAP = {'0': '管理员', '1': '普通用户'}
# 软件图标
APP_ICON = ABS_DIR + r'/res/img/app-icon.ico'
DELETE_ICON = ABS_DIR + r'/res/img/delete.png'
EDIT_ICON = ABS_DIR + r'/res/img/edit.png'
BORROW_BOOK = ABS_DIR + r'/res/img/borrow_book.png'
HOME_PAGE = ABS_DIR + r'res/img/background.jpg'
DELAY_TIME = ABS_DIR + r'/res/img/delay_time.ico'
RETURN = ABS_DIR + r'/res/img/return.ico'
DEL_RECORD = ABS_DIR + r'/res/img/delete.ico'
PUSH_RETURN = ABS_DIR + r'/res/img/push.ico'
# 图书状态映射
BORROW_STATUS_MAP = {'0': '未还', '1': '已还'}
SEARCH_CONTENT_MAP = {'书名': 'book_name', '出版社': 'publish_company', '作者': 'author', '用户': 'borrow_user'}
PATTERS = ['^[0-9]{1,2}$']


# 消息提示框
def msg_box(widget, title, msg):
    QMessageBox.warning(widget, title, msg, QMessageBox.Yes)


# 选择框（归还图书和删除记录时）
def accept_box(widget, title, msg):
    return QMessageBox.warning(widget, title, msg, QMessageBox.Yes | QMessageBox.No, QMessageBox.No)


# 获取当前时间
def get_current_time():
    dt = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return dt


# 读取样式文件
def read_qss(qss_file):
    with open(qss_file, 'r', encoding='utf-8') as f:
        return f.read()


# 计算归还时间
def get_return_day(day):
    return (datetime.datetime.now() + datetime.timedelta(days=day)).strftime('%Y-%m-%d %H:%M:%S')


def set_le_reg(widget, le, pattern):
    rx = QRegExp()
    rx.setPattern(pattern)
    qrx = QRegExpValidator(rx, widget)
    le.setValidator(qrx)


SYS_STYLE = read_qss(ABS_DIR + r'/res/style/style.qss')
