'''
Description: 
Author: Xiao
Date: 2023-03-26 09:44:01
LastEditTime: 2023-03-26 09:44:10
LastEditors: Xiao
'''

from PyQt5.QtWidgets import *
#自定义显示控件
class MyQGraphicsview(QGraphicsView):
    def __init__(self):
        super().__init__(self)