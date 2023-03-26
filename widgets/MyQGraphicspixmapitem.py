'''
Description: 
Author: Xiao
Date: 2023-03-26 09:26:18
LastEditTime: 2023-03-26 09:30:35
LastEditors: Xiao
'''

import sys

from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
import utils.ResizeImage as ri#缩放图片
import utils.Image_conversion as iv
from PIL import Image
 
class MyQGraphicspixmapitem(QGraphicsPixmapItem):
    def __init__(self, parent=None, img=None):
        super(MyQGraphicspixmapitem).__init__(parent)
        self.parent = parent
        self.pix = img#QPixmap("此处为你的图元的图片路径")
        self.width = 50    # 图元宽
        self.height = 50   # 图元高
        self.setPixmap(self.pix)  # 设置图元
        
        # self.setFlag(QGraphicsItem.ItemIsSelectable)  # ***设置图元是可以被选择的
        # self.setFlag(QGraphicsItem.ItemIsMovable)     # ***设置图元是可以被移动的

    #鼠标点击事件
    def mousePressEvent(self, e):
        if e.button == Qt.LeftButton:#按下左键
            self.left_click = True
            return 0
    
    #鼠标移动事件
    def mouseMoveEvent(self, e):
        if self.left_click:#按下左键

            return 0
    


    #绘图方法
    def paint(self, painter, graphics_item, widget=None):
        self.setPath(self.calc_path()) # 设置路径
        path = self.path()
        if self.edge.end_item is None: 
        	# 包装类中存储了线条开始和结束位置的图元
        	# 刚开始拖拽线条时，并没有结束位置的图元，所以是None
        	# 这个线条画的是拖拽路径，点线
            painter.setPen(self._pen_dragging)
            painter.drawPath(path)
        else:
        	# 这画的才是连接后的线
            painter.setPen(self._pen)
            painter.drawPath(path)
    
    