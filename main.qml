import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

ApplicationWindow {
    visible: true
    width: 480
    height: 620
    property int currPlayer: 0
    id: gameboard

    GridView {
        id: view
        anchors.fill: parent
//        anchors.leftMargin: 10
//        anchors.rightMargin: anchors.leftMargin
        interactive: false
//        rowSpacing: 20
//        columnSpacing: 20
        cellWidth: width/10
        cellHeight: height/10
        model: gameBoardModel

        delegate: ColoredBtn {
                width: parent.cellWidth
                height: parent.cellHeight
                number: gbNumber
                property int idx: index
            }
    }
}
