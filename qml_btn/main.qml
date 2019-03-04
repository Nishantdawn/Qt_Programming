import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.12

Window {
    id: window
    visible: true
    width: 200
    height: 500
    title: qsTr("Light Control")

    Button {
        id: button
        x: 52
        y: 400
        width: 96
        height: 48
        text: qsTr("Exit")
        spacing: 2
        display: AbstractButton.TextBesideIcon
        opacity: 0.7
        Material.elevation: button.pressed ? 1 : 10

        onClicked: {

            console.log("exiting the app")
            Qt.quit()
        }
    }

    Dial {
        id: dial
        x: 31
        y: 151
        width: 138
        height: 129
        stepSize: 1
        to: 100
        from: 0
        value: 0
        onValueChanged: console.log(dial.value)
    }

    SwitchDelegate {
        id: switchDelegate
        x: 33
        y: 51
        text: qsTr("Light")
        clip: true
        focusPolicy: Qt.TabFocus
        onCheckedChanged: {
            console.log("Value Changed")
            Driver_qml.btn_test()
        }

    }
    Label {
        id: label
        x: 52
        y: 335
        width: 96
        height: 24
    }
// Slot in qml
    Connections{
        target: Driver_qml
        onCurrentStatus:{
            console.log(Dev_St + " Signal from C++"); // Do whatever in qml side
            label.text = Dev_St

        }
    }


}
