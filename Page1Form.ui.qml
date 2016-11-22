import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    property alias button1: button1
    property alias button2: button2

    ColumnLayout {
        id: columnLayout1
        x: 259
        y: 135
        width: 239
        height: 144
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Button {
            id: button1
            width: 113
            text: qsTr("Create Group")
            Layout.fillWidth: true
        }

        Button {
            id: button2
            text: qsTr("Display Groups")
            Layout.fillWidth: true
        }
    }

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
            text: qsTr("BillChill")
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
            anchors.topMargin: 30
            font.pixelSize: 30
        }
    }
}
