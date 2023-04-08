from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *

class GraphicItem(QGraphicsPixmapItem):

    def __init__(self, parent=None):#初始化
        super().__init__(parent)
        self.pix = QPixmap("Model.png")
        self.width = self.pix.width()
        self.height = self.pix.height()
        self.setPixmap(self.pix)
        # self.setFlag(QGraphicsItem.ItemIsSelectable)
        # self.setFlag(QGraphicsItem.ItemIsMovable)
        self.pen = QPainter()
        self._pen = QPen(QColor("#000"))  # 画线条的
        self._pen.setWidthF(4)
        self.pen.setPen(self._pen)
        self.point = QPoint(0,0)
        # self.setTabletTracking(True)
        self.left_click = False


    def mouseMoveEvent(self, event):#鼠標移動
        super().mouseMoveEvent(event)
        # update selected node and its edge
        if self.isSelected():
            for gr_edge in self.scene().edges:
                gr_edge.edge_wrap.update_positions()
        if self.left_click:
            pix = self.pixmap()#获取对应pixmap,在pixmap上绘制
            # _pen = QPainter()
            self.lastpoint = self.startpoint
            self.startpoint = event.pos()
            self.pen.begin(pix)
            self.pen.drawLine(self.lastpoint, self.startpoint)
            self.pen.end()
            self.setPixmap(pix)
            # self.update()
        


    def mousePressEvent(self, event):#鼠標點擊
        # super().mousePressEvent(event)
        # print(event.pos())
        # print(self.width)
        
        self.left_click = True
        self.startpoint = event.pos()#开始位置
    
    def mouseReleaseEvent(self, event):#鼠標釋放
        super().mouseReleaseEvent(event)
        self.left_click = False