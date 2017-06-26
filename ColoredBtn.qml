import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Button {
    property int number: 1
    text:  parseInt(number)
    onClicked: {
        number++
        background.color = gameboard.currPlayer == 0 ? "red" : "blue"
        gameboard.currPlayer ^= 1
        console.log(idx, idy)
    }
}
