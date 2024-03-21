from PyQt5.QtWidgets import QWidget
from ui.home_window import Ui_Form
from util.message_util import getMessage


class HomeWindow(Ui_Form, QWidget):

    def __init__(self):
        super(HomeWindow, self).__init__()
        self.setupUi(self)
        content = getMessage()
        for message in content:
            print(message)
            self.listWidget.addItem(message)
