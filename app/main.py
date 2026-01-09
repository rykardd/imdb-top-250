import sys
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from login import LoginApp


def main():
    app=QApplication(sys.argv)
    win=LoginApp()
    win.show()
    sys.exit(app.exec_())


main()