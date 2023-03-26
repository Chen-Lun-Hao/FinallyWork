'''
Description: 
Author: Xiao
Date: 2023-03-26 09:42:59
LastEditTime: 2023-03-26 09:53:01
LastEditors: Xiao
'''
from PyQt5.QtWidgets import *

#自定义管理控件
class MyQGraphicsscene(QGraphicsScene):
    def __init__(self):
        super().__init__(self)