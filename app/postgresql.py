from dotenv import load_dotenv
import os
import psycopg2
import psycopg2.extras

load_dotenv()

class PostgresqlDb:
    def __init__(self,database):
        self.__host=os.getenv("DB_HOST")
        self.__user=os.getenv("DB_USER")
        self.__password=os.getenv("DB_PASSWORD")
        self.__port=os.getenv("DB_PORT")
        self.__db=database
        self.__conn=None
        self.__cursor=None

    


    def connection(self):
        try:
            self.__conn = psycopg2.connect(
                dbname=self.__db,
                user=self.__user,
                password=self.__password,
                host=self.__host,
                port=self.__port
            )
            self.__cursor = self.__conn.cursor(
                cursor_factory=psycopg2.extras.DictCursor
            )
        except psycopg2.Error as e:
            raise ConnectionError(f"Database connection failed: {e}")


    def getRows(self,query,params=None):
        self.connection()
        self.__cursor.execute(query, params or ())
        rows = self.__cursor.fetchall()
        columns = [desc[0] for desc in self.__cursor.description]
        self.disconnect()
        return rows, columns
    
    
    def getRow(self,query,params=None):
        self.connection()
        try:
            self.__cursor.execute(query,params or ())
            result=self.__cursor.fetchone()
            
        finally:
            self.disconnect()
        return result
        

    
    def disconnect(self):
        if self.__cursor:
            try:
                self.__cursor.close()
            finally:
                self.__cursor = None

        if self.__conn:
            try:
                self.__conn.close()
            finally:
                self.__conn= None


    
