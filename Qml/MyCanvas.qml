import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: "Painting Board"

    GridLayout {
        width: parent.width
        height: parent.height

        RowLayout {
            Button {
                text: "Clear"
                onClicked: {
                    canvas.clear()
                }
            }
            Button {
                text: "Save"
                onClicked: {
                    canvas.save()
                }
            }
            ComboBox {
                id: colorCombo
                model: ["Black", "Red", "Green", "Blue"]
                currentIndex: 0
            }
            ComboBox {
                id: widthCombo
                model: ["1", "2", "4", "8", "16"]
                currentIndex: 0
            }
        }

        Canvas {
            id: canvas
            anchors.fill: parent
            onPaint: {
                ctx.clearRect(0, 0, canvas.width, canvas.height)
                ctx.drawImage(canvasImage, 0, 0)
            }
            property var canvasImage: null
            property var ctx: getContext('2d')
            function save() {
                canvasImage = canvas.toImage()
            }
            function clear() {
                ctx.clearRect(0, 0, canvas.width, canvas.height)
                canvasImage = null
            }
            Component.onCompleted: {
                ctx.lineCap = 'round'
                ctx.lineJoin = 'round'
            }
        }

        MouseArea {
            id: painter
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                // 记录上一次的位置
                lastPoint.x = mouseX
                lastPoint.y = mouseY
            }
            onPositionChanged: {
                if (mouse.buttons === Qt.LeftButton) {
                    // 绘制直线
                    ctx.strokeStyle = colorCombo.currentText
                    ctx.lineWidth = widthCombo.currentText
                    ctx.beginPath()
                    ctx.moveTo(lastPoint.x, lastPoint.y);
                    ctx.lineTo(mouseX, mouseY);
                    ctx.stroke();
                    lastPoint.x = mouseX
                    lastPoint.y = mouseY
                }
            }
        }
    }
}

