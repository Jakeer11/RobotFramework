import pymysql

class DBKeywords:
    def __init__(self):
        self.conn = None

    def connect_mysql(self, host, user, password, db, port=3306):
        self.conn = pymysql.connect(
            host=host,
            user=user,
            password=password,
            database=db,
            port=int(port)
        )

    def fetch_one_value(self, query):
        with self.conn.cursor() as cursor:
            cursor.execute(query)
            result = cursor.fetchone()
            return result[0] if result else None

    def close_connection(self):
        if self.conn:
            self.conn.close()
