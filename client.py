'''
Description: 
Author: Xiao
Date: 2023-03-01 09:38:20
LastEditTime: 2023-04-16 19:42:45
LastEditors: Xiao
'''
#项目主入口
import sys

from PyQt6.QtWidgets import QApplication
from PyQt6.QtQuick import QQuickView
from PyQt6.QtCore import QUrl
from PyQt6 import QtCore



if __name__ == "__main__":
    # 适配2k等高分辨率屏幕,低分辨率屏幕可以缺省
    app = QApplication([])
    view = QQuickView()
    url = QUrl("Qml\main.qml")#view.qml")

    view.setSource(url)
    #开发桌面应用
    # view.setResizeMode(QQuickView.SizeRootObjectToView)
    view.show()
    app.exec()

    # QtCore.QCoreApplication.setAttribute(QtCore.Qt.AA_EnableHighDpiScaling)
    # app = QApplication(sys.argv)
    # myWin = TitleWindow(widget_2_sub=MyMian())#主窗口控件，图标路径，标题
    # myWin.show()
    # sys.exit(app.exec_())