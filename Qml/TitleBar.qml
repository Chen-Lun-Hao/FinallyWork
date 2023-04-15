import QtQuick 2.7
import QtQuick.Controls 2.13
import QtQuick.Window 2.2
 
Item{
    z:1;
    height: 100*hr;
    property bool  isMaximized: false;
 
    MouseArea{
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton //只处理鼠标左键
        property bool   isDoubleClicked:false
        property point clickPos: "0,0"
         onPressed:
         {
             isDoubleClicked = false;
             clickPos = Qt.point(mouse.x,mouse.y)
         }
         onPositionChanged: {
             if(!isDoubleClicked && pressed && mainWindow.visibility !== Window.Maximized && mainWindow.visibility !== Window.FullScreen) {
                 var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                 mainWindow.x += delta.x
                 mainWindow.y += delta.y
             }
             if(mainWindow.visibility === Window.Maximized && pressed && !isDoubleClicked)
             {
                 isMaximized = false;
                 mainWindow.showNormal();
                 normBtn.maxImg="qrc:/res/max.png";
                 normBtn.maxImg_pressed="qrc:/res/max_pressed.png";
                 normBtn.maxImg_hover="qrc:/res/max_hover.png";
             }
         }
         onDoubleClicked :
         {
             isDoubleClicked = true; // 这个时候一定不能响应onPositionChanged不然会一直置顶。
             if(isMaximized){
                 isMaximized = false;
                 mainWindow.showNormal();
                 normBtn.maxImg="qrc:/res/max.png";
                 normBtn.maxImg_pressed="qrc:/res/max_pressed.png";
                 normBtn.maxImg_hover="qrc:/res/max_hover.png";
             }else{
                 isMaximized = true;
                 mainWindow.showMaximized();
                 normBtn.maxImg="qrc:/res/restore.png";
                 normBtn.maxImg_pressed="qrc:/res/restore_pressed.png";
                 normBtn.maxImg_hover="qrc:/res/restore_hover.png";
             }
         }
     }
 
    Button{
        id:closeBtn
        anchors{right: parent.right; rightMargin: 51*wr; top: parent.top;
                topMargin: 23*wr;}
        width: 65*wr; height:65*wr;
        hoverEnabled : true;
 
        background: Rectangle{
            color: Qt.rgba(0,0,0,0);
            Image {
                anchors.fill: parent;
                source: closeBtn.hovered ? (closeBtn.pressed ? "qrc:/res/close_pressed.png" :
                       "qrc:/res/close_hover.png") : "qrc:/res/close.png";
            }
        }
 
        onClicked: {
            mainWindow.close()
        }
    }
    Button{
        id: normBtn;
        property string maxImg: "qrc:/res/max.png";
        property string maxImg_hover: "qrc:/res/max_hover.png";
        property string maxImg_pressed: "qrc:/res/max_pressed.png";
 
        anchors{right: closeBtn.left; rightMargin: 10*wr; top: parent.top;
                topMargin: 23*wr;}
        width: 65*wr; height:65*wr;
        hoverEnabled : true
        background: Rectangle{
            color: Qt.rgba(0,0,0,0);
            Image {
                id:normBtnBg;
                anchors.fill: parent;
                source: normBtn.hovered ? (normBtn.pressed ? normBtn.maxImg_pressed:
                       normBtn.maxImg_hover) : normBtn.maxImg;
            }
        }
        onClicked:{
            if(isMaximized){
                isMaximized = false;
                mainWindow.showNormal();
                normBtn.maxImg="qrc:/res/max.png";
                normBtn.maxImg_pressed="qrc:/res/max_pressed.png";
                normBtn.maxImg_hover="qrc:/res/max_hover.png";
            }else{
                isMaximized = true;
                mainWindow.showMaximized();
                normBtn.maxImg="qrc:/res/restore.png";
                normBtn.maxImg_pressed="qrc:/res/restore_pressed.png";
                normBtn.maxImg_hover="qrc:/res/restore_hover.png";
            }
        }
    }
    Button{
        id: minBtn
        anchors{right: normBtn.left; rightMargin: 10*wr; top: parent.top;
                topMargin: 23*wr;}
        width: 65*wr; height:65*wr;
        hoverEnabled : true
        background: Rectangle{
            color: Qt.rgba(0,0,0,0);
            Image{
                anchors.fill: parent;
                source: minBtn.hovered ? (minBtn.pressed ? "qrc:/res/min_pressed.png" :
                        "qrc:/res/min_hover.png") : "qrc:/res/min.png";
            }
        }
        onClicked:{
            mainWindow.showMinimized();
        }
    }
}