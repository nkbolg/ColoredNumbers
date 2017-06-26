import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 320
    height: 240
    property int currPlayer: 0
    id: gameboard
    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top
        Repeater {
            model: 4
            id: repCols
            RowLayout {
                id: row
                property int index: index
                Repeater {
                    model: 4
                    id: repRows
                    ColoredBtn{
                        property int idx: index
                        property int idy: 0
                    }
                }
            }
        }

    }
}
