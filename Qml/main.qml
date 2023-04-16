import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
 
Window {
    id:mainWindow;
    width: 1500;
    height: 846;
    visible: true
    flags: Qt.Window | Qt.FramelessWindowHint;
 
    title: qsTr("RX-Box");
 
    ResizeItem {
        enableSize: 8
        anchors.fill: parent
        focus: true
 
        Image {
            id: bgImg;
            z:1;
            anchors.fill: parent;
            source: "qrc:/res/bg.png";
        }
        
        TitleBar{
            id:titleBar
            z:mystackview.z+1;
            anchors{left: parent.left;right: parent.right; top: parent.top;}
        }
 
    }
    // Component.onCompleted: {
    //     mainWindow.show();
    // }
}