import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

ApplicationWindow {
    visible: true
    width: 320
    height: 240
    property int currPlayer: 0
    id: gameboard
    property int rows: 4
    property int cols: 4

    GridView {
        id: view
        anchors.fill: parent
        model: gameBoardModel

        delegate: Button {
                width: 50
                height: 50
                text: gbNumber
                Material.background: gbColor
            }
    }
}
