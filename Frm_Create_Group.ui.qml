import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 640
    height: 480

    Rectangle {
        id: rectangle1
        height: 74
        color: "#f2ab20"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: text1
            x: 120
            text: qsTr("Create Group")
            verticalAlignment: Text.AlignVCenter
            style: Text.Raised
            font.strikeout: false
            font.underline: false
            font.italic: true
            font.family: "Verdana"
            font.bold: true
            textFormat: Text.RichText
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 25
            font.pixelSize: 30
        }
    }

    ColumnLayout {
        id: columnLayout1
        x: 206
        y: 107
        width: 234
        height: 320
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: text2
            text: qsTr("Group Name")
            font.italic: true
            font.pixelSize: 17
        }

        TextInput {
            id: textInput1
            width: 80
            height: 20
            text: qsTr("Text Input")
            font.pixelSize: 12
        }

        Button {
            id: button1
            text: qsTr("Confirm")
        }
    }


}
