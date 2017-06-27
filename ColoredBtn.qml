import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Button {
    property int number: 1
    text:  parseInt(number)
//    Material.background: gameboard.currPlayer == 0 ? Material.Indigo : Material.Teal
    onClicked: {
        number++
        gameBoardModel.onButtonClicked(index)
        console.log(index)
    }
}
