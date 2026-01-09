from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from ui.login_ui import Ui_Login_Window
from postgresql import PostgresqlDb
from home import MoviesApp

class LoginApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.loginui=Ui_Login_Window()
        self.loginui.setupUi(self)

        self.db=PostgresqlDb("movie-250")

        self.loginui.btn_Login.clicked.connect(self.loginApp)
        self.loginui.btn_Exit.clicked.connect(self.close)


    def loginApp(self):
        username=self.loginui.lineEdit_username.text()
        password=self.loginui.lineEdit_password.text()

        if username and password:
            lgn_result=self.db.getRow("Select * From masters WHERE master_name=%s and master_password=%s",
                                      (username,password))
            if lgn_result:
                self.hide()
                self.movies_win=MoviesApp()
                self.movies_win.show()
                
            else:
                QMessageBox.warning(self,"Warning!","Username or password incorrect")

        else:
            QMessageBox.warning(self,"INFO","Username or password not empty")



