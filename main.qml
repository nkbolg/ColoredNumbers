import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

ApplicationWindow {
    visible: true
    width: 320
    height: 320
    property int currPlayer: 0
    id: gameboard

    GridView {
        id: view
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: anchors.leftMargin
        cellWidth: width / 4
        cellHeight: cellWidth
        model: gameBoardModel

        delegate: ColoredBtn {
                width: 50
                height: 50
                number: gbNumber
                Material.background: gbColor
                property int idx: index
            }
    }
}
