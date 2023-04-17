// 使用qml实现可滑动侧边栏控件  

import QtQuick 2.12
import QtQuick.Window 2.12 
import QtQuick.Controls 2.2

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Sliding Sidebar Example"

    Sidebar {
        id: sidebar
        width: mainWindow.width * 0.8
        height: mainWindow.height
        contentItem: Rectangle {
            color: "lightgray"
            Label {
                text: "This is the sidebar content"
            }
        }
        background: Rectangle {
            color: "white"
            opacity: 0.8
        }
        behavior: Sidebar.ExpandOnClick
        anchors.left: mainWindow.left
        anchors.top: mainWindow.top
        anchors.bottom: mainWindow.bottom
    }

    Button {
        text: "Open Sidebar"
        anchors.centerIn: parent
        onClicked: sidebar.open()
    }
}

