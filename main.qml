import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.LocalStorage 2.0



ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("BillChill")


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex


        Page1Form {

            property string textInGroupName

            function saveGroupName(groupText) {
                var db = LocalStorage.openDatabaseSync("BillChill", "1.0", "Chill mal", 1000000)

                var a = groupText
                var id = 0

                id++

                db.transaction(
                    function(tx) {
                        // Create the database if it doesn't already exist
                        tx.executeSql('CREATE TABLE IF NOT EXISTS Greeting(gid TEXT, groupname TEXT)');

                        // Add (another) greeting row
                        tx.executeSql('INSERT INTO Greeting VALUES(?, ?)', [id, a])

                    }
                )
            }




            Rectangle {
                id: groupNames
                width: 200
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                visible: false




                Text {
                    id: groupDisplayText
                    text: "?"
                    anchors.horizontalCenter: parent.horizontalCenter

                    function findNames() {
                        var db = LocalStorage.openDatabaseSync("BillChill", "1.0", "Chill mal", 1000000);

                        db.transaction(
                            function(tx) {
                                var rs = tx.executeSql('SELECT * FROM Greeting');

                                var r = ""
                                for(var i = 0; i < rs.rows.length; i++) {
                                    r += rs.rows.item(i).groupname + "\n"
                                }
                                text = r
                            }
                        )
                    }


                    Component.onCompleted: findNames()
                }

                states: [
                        State {
                            name: "visible"
                            PropertyChanges { target: groupNames; visible: true}

                        },
                        State {
                            name: "nonvisible"
                            PropertyChanges { target: groupNames; visible: false}

                        }
                    ]
            }

            id:item1

            cmd_Create_Group.onClicked: {
                item1.state = "CrtGroup"
            }

            cmd_Display_Groups.onClicked: {
                item1.state = "DisplayGroups"
                groupNames.state = "visible"
                console.log(textInGroupName)
            }

            mousearea1.onClicked: {
                item1.state = "Start"
                groupNames.state = "nonvisible"

            }

            confirmgroup.onClicked: {
                item1.state = "GroupAddUser"
                textInGroupName = textInput1.text.toString()
                console.log(saveGroupName (textInGroupName))
                groupDisplayText.findNames()
            }

            textInput1.onAccepted: {
                textInGroupName = textInput1.text.toString()
                console.log(saveGroupName (textInGroupName))
                item1.state = "GroupAddUser"
                groupDisplayText.findNames()


            }

            back.onClicked: {
                if(item1.state == "CrtGroup") {
                    item1.state = "Start"
                }
                if(item1.state == "GroupAddUser") {
                    item1.state = "CrtGroup"
                }
                if(item1.state == "DisplayGroups") {
                    item1.state = "Start"
                    groupNames.state = "nonvisible"
                }

            }
        }
    }
}

