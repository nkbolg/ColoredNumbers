import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2
import QtGraphicalEffects 1.0

Button {
    id: control

    Material.theme: Material.Light

    background: Rectangle {
        implicitWidth: 48
        implicitHeight: 48
        color: gbColor
        radius: 10

        layer.enabled: control.enabled
        layer.effect: DropShadow {
            verticalOffset: 1
            color: Material.dropShadowColor
            samples: control.pressed ? 20 : 10
            spread: 0.5
        }
    }
    property int number: 1
    text:  parseInt(number)

    onClicked: {
        number++
        gameBoardModel.onButtonClicked(index)
    }
}

//Button {
//    property int number: 1
//    text:  parseInt(number)
////    Material.background: gameboard.currPlayer == 0 ? Material.Indigo : Material.Teal
//    onClicked: {
//        number++
//        gameBoardModel.onButtonClicked(index)
//        console.log(index)
//    }
//}


//Rectangle {
//    id: button
//    property int number: 1

//    property bool checked: false
//    property alias text : buttonText.text
//    Accessible.name: text
//    Accessible.description: parseInt(button.number)
//    Accessible.role: Accessible.Button
//    Accessible.onPressAction: {
//        button.clicked()
//    }

//    signal clicked

//    width: buttonText.width + 20
//    height: 30
//    gradient: Gradient {
//        GradientStop { position: 0.0; color: "lightsteelblue" }
//        GradientStop { position: 1.0;
//            color: button.focus ? "red" : "blue" }
//    }

//    radius: 5
//    antialiasing: true

//    Text {
//        id: buttonText
//        text: parent.number
//        anchors.centerIn: parent
//        font.pixelSize: parent.height * .5
//        style: Text.Sunken
//        color: "white"
//        styleColor: "black"
//    }

//    MouseArea {
//        id: mouseArea
//        anchors.fill: parent
//        onClicked: parent.clicked()
//    }

//    Keys.onSpacePressed: clicked()

//    onClicked: {
//        number++
//        gameBoardModel.onButtonClicked(index)
//    }
//}

//Rectangle {
//    property int number: 1

//    Text {
//        text: parseInt(parent.number)
//        anchors.centerIn: parent
//    }
//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            number++
//            gameBoardModel.onButtonClicked(index)
//        }
//    }
//    color: "blue"
//    border.color: "black"
//}

