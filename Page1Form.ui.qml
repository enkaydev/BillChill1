import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Item {
    id: item1
    property alias cmd_Create_Group: cmd_Create_Group
    property alias cmd_Display_Groups: cmd_Display_Groups
    property alias mousearea1: mousearea1
    property alias back: back
    property alias confirmgroup: confirmgroup
    property alias textInput1: textInput1
    property alias textInputUser: textInputUser
    property alias confirmuser: confirmuser
    state: "Start"


    Button{
        id: back
        width: 65
        height:35
        text: "Back"
        z: 3
        visible: false
        anchors.top: parent.top
        anchors.topMargin: 75
        anchors.left: parent.left

    }

    Item {
        id:startsite
        width: 640
        height: 480
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        visible: false
        ColumnLayout {
            id: columnLayout1
            x: 259
            y: 135
            width: 239
            height: 144
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Button {
                id: cmd_Create_Group
                width: 113
                text: qsTr("Create Group")
                Layout.fillWidth: true
            }

            Button {
                id: cmd_Display_Groups
                text: qsTr("Display Groups")
                Layout.fillWidth: true
            }
        }
    }


    Item {
        id: displaygroups
        width: 640
        height: 480
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        visible: false
        Rectangle {
            id: rectangle10
            height: 50
            color: "white"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: text10
                x: 120
                text: qsTr("Your Groups")
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
            id: columnLayout10
            x: 206
            y: 107
            width: 234
            height: 320
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    Item {
        id: addusergroups
        width: 640
        height: 480
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        Rectangle {
            id: rectangle4
            height: 50
            color: "white"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: text5
                x: 120
                text: qsTr("Add Users to Group")
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
                font.pixelSize: 20
            }
        }

        ColumnLayout {
            id: columnLayoutUser
            x: 206
            y: 107
            width: 100
            height: 150
            anchors.top: parent.top
            anchors.topMargin: 125

            Text {
                id: textUser
                text: qsTr("User Name")
                font.italic: true
                font.pixelSize: 24
            }

            TextField {
                id: textInputUser
                width: 200
                height: 40
                placeholderText: qsTr("Enter name")
                font.pixelSize: 18
            }

            Button {
                id: confirmuser
                text: qsTr("Confirm")
            }
        }

    }

    Item {
        id: creategsite
        width: 640
        height: 480
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Rectangle {
            id: rectangle2
            height: 50
            color: "white"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: text2
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
            id: columnLayout2
            x: 206
            y: 107
            width: 234
            height: 320
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: text3
                text: qsTr("Group Name")
                font.italic: true
                font.pixelSize: 24
            }

            TextField {
                id: textInput1
                width: 200
                height: 40
                placeholderText: qsTr("Enter name")
                font.pixelSize: 18
            }

            Button {
                id: confirmgroup
                text: qsTr("Confirm")
            }
        }
    }

    Item {
        id: headeritem
        width: 640
        height: 480
        anchors.horizontalCenter: parent.horizontalCenter


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

            MouseArea {
                id:mousearea1
                anchors.fill: parent
            }

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
                anchors.topMargin: 25
                font.pixelSize: 30
            }
        }

        Image {
            id: image1
            y: 9
            width: 69
            height: 57
            anchors.left: rectangle1.left
            anchors.leftMargin: 10
            sourceSize.height: 100
            sourceSize.width: 100
            source: "money.png"
        }

        Image {
            id: image2
            x: 7
            y: 9
            width: 69
            height: 57
            anchors.right: rectangle1.right
            anchors.rightMargin: 10
            source: "money.png"
            sourceSize.width: 100
            sourceSize.height: 100
        }
    }

    states: [
        State {
            name: "Start"
            PropertyChanges {
                target:startsite
                visible: true
            }
            PropertyChanges {
                target:creategsite
                visible: false
            }
            PropertyChanges {
                target:displaygroups
                visible: false
            }
            PropertyChanges {
                target:addusergroups
                visible: false
            }
            PropertyChanges {
                target:back
                z: 4
                visible: false
            }
        },
        State {
            name: "DisplayGroups"
            PropertyChanges {
                target:startsite
                visible: false
            }
            PropertyChanges {
                target:creategsite
                visible: false
            }
            PropertyChanges {
                target:displaygroups
                visible: true
            }
            PropertyChanges {
                target:back
                visible: true
            }
            PropertyChanges {
                target:addusergroups
                visible: false
            }
        },
        State {
            name: "CrtGroup"
            PropertyChanges {
                target:startsite
                visible: false
            }
            PropertyChanges {
                target:creategsite
                visible: true
            }
            PropertyChanges {
                target:displaygroups
                visible: false
            }
            PropertyChanges {
                target:addusergroups
                visible: false
            }
            PropertyChanges {
                target:back
                z: 4
                visible: true
            }
        },
        State {
            name: "GroupAddUser"
            PropertyChanges {
                target:startsite
                visible: false
            }
            PropertyChanges {
                target:creategsite
                visible: false
            }
            PropertyChanges {
                target:displaygroups
                visible: false
            }
            PropertyChanges {
                target:addusergroups
                visible: true
            }
            PropertyChanges {
                target:back
                visible: true
            }
        }
    ]
}
