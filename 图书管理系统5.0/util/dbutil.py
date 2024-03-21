"""
对数据库操作的工具模块
"""
import pymysql


class DBHelp:
    instance = None

    # 连接数据库
    def __init__(self, host='127.0.0.1', port=3306, user='root', pwd='123456', db='py_books', charset='utf8'):
        self._conn = pymysql.connect(host=host, port=port, user=user, passwd=pwd, db=db, charset=charset)
        self._cur = self._conn.cursor()

    # 获得连接
    @classmethod
    def get_instance(cls):
        if cls.instance:
            return cls.instance
        else:
            cls.instance = DBHelp()
            return cls.instance

    # 查询图书列表和图书借阅记录
    def query_all(self, table_name):
        sql = 'select * from {}'.format(table_name)
        count = self._cur.execute(sql)
        res = self._cur.fetchall()
        return count, res

    # 查询
    def query_super(self, table_name, column_name, condition):
        sql = "select * from {} where {}='{}'".format(table_name, column_name, condition)
        # 执行sql
        count = self._cur.execute(sql)
        # 使用fetchall函数，将结果集(多维元组)存入rows里面
        res = self._cur.fetchall()
        return count, res

    # 注册用户
    def add_user(self, data):
        sql = "insert into user (username, password, role, create_time, delete_flag, current_login_time) " \
              "values (%s, %s, %s, %s, %s, %s)"
        self._cur.execute(sql, data)

    # 增加图书
    def add_book(self, data):
        sql = "insert into book (book_name,author,publish_company,store_number,borrow_number,create_time," \
              "publish_date) values (%s, %s, %s, %s, %s, %s, %s)"
        self._cur.execute(sql, data)

    # 更新图书信息
    def update_super(self, table_name, column_name, condition, data):
        sql = "update {} set book_name='{}', author='{}', publish_company='{}',  publish_date='{}', store_number={}" \
              " where {}='{}'".format(table_name, data[0], data[1], data[2], data[3], data[4], column_name, condition)
        self._cur.execute(sql)

    # 删除数据库数据
    def delete(self, table_name, column_name, condition):
        sql = "delete from {} where {}='{}'".format(table_name, column_name, condition)
        self._cur.execute(sql)

    # 借阅图书
    def update_borrow(self, book_id):
        sql = "update book set store_number=store_number-1 where id='{}'".format(book_id)
        self._cur.execute(sql)
        sql = "update book set borrow_number=borrow_number+1 where id='{}'".format(book_id)
        self._cur.execute(sql)

    # 归还图书
    def update_borrow_return(self, book_id):
        sql = "update book set store_number=store_number+1 where id='{}'".format(book_id)
        self._cur.execute(sql)
        sql = "update book set borrow_number=borrow_number-1 where id='{}'".format(book_id)
        self._cur.execute(sql)

    # 设置图书借阅记录的归还状态=已还
    def update_borrow_statue(self, book_id):
        sql = "update borrow_info set return_flag=1 where id='{}'".format(book_id)
        self._cur.execute(sql)

    # 增加图书借阅记录
    def insert_borrow_info(self, data):
        sql = "insert into borrow_info (book_id, book_name, borrow_user, borrow_num, borrow_days, borrow_time," \
              "return_time, return_flag) values (%s, %s, %s, %s, %s, %s, %s, %s)"
        self._cur.execute(sql, data)

    # 更新归还时间
    def update_renew(self, data):
        sql = "update borrow_info set borrow_days=borrow_days+{}, return_time='{}' where id='{}'".format(data[0],
                                                                                                         data[1],
                                                                                                         data[2])
        self._cur.execute(sql)

    # 插入归还记录
    def insert_all_return_info(self, data):
        sql = "insert into all_return (user_name, borrow_id, is_read, time) values(%s, %s, %s, %s)"
        self._cur.execute(sql, data)

    # 数据库提交
    def db_commit(self):
        self._conn.commit()

    # 数据库回滚
    def db_rollback(self):
        self._conn.rollback()
