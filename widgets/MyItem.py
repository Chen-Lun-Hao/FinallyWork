from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *

class GraphicItem(QGraphicsPixmapItem):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.pix = QPixmap("Model.png")
        self.width = self.pix.width()
        self.height = self.pix.height()
        self.setPixmap(self.pix)
        # self.setFlag(QGraphicsItem.ItemIsSelectable)
        # self.setFlag(QGraphicsItem.ItemIsMovable)
        self.pen = QPainter()
        self._pen = QPen(QColor("#000"))  # 画线条的
        self._pen.setWidthF(2)
        self.pen.setPen(self._pen)
        self.point = QPoint(0,0)