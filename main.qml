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
            property string textInUserName
            property string user1
            property string user2
            property string user3
            property string user4
            property string user5
            property string idu



            function saveGroupName(groupText) {
                var db = LocalStorage.openDatabaseSync("BillChill", "1.0", "Chill mal", 1000000)

                var a = groupText

                var gid = 0

                gid++

                db.transaction(
                    function(tx) {
                        // Create the database if it doesn't already exist
                        tx.executeSql('CREATE TABLE IF NOT EXISTS Greeting(gid TEXT, groupname TEXT)');

                        // Add (another) greeting row
                        tx.executeSql('INSERT INTO Greeting VALUES(?, ?)', [gid, a])

                    }
                )
            }

            function saveUserName(userText) {
                var db = LocalStorage.openDatabaseSync("BillChill", "1.0", "Chill mal", 1000000)

                var a = userText
                var U1 = user1
                var U2 = user2
                var U3 = user3
                var U4 = user4
                var U5 = user5

                var id = 0
                id++


                idu = id


                if(id == 1) {
                    user1 = userText

                    db.transaction(
                        function(tx) {
                            // Create the database if it doesn't already exist
                            tx.executeSql('CREATE TABLE IF NOT EXISTS Users(gid TEXT, uid TEXT, username1 TEXT, username2 TEXT, username3 TEXT, username4 TEXT, username5 TEXT)');

                            // Add (another) greeting row
                            tx.executeSql('INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)', [ 'b', 'b', a, 'b', 'b', 'b', 'b'])

                        }
                    )
                }

                if(id == 2) {
                    user2 = userText
                    db.transaction(
                        function(tx) {
                            // Create the database if it doesn't already exist
                            tx.executeSql('CREATE TABLE IF NOT EXISTS Users(gid TEXT, uid TEXT, username1 TEXT, username2 TEXT, username3 TEXT, username4 TEXT, username5 TEXT)');

                            // Add (another) greeting row
                            tx.executeSql('INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)', [ 'b', 'b', U1, a, 'b', 'b', 'b'])

                        }
                    )
                }

                if(id == 3) {
                    user3 = userText
                    db.transaction(
                        function(tx) {
                            // Create the database if it doesn't already exist
                            tx.executeSql('CREATE TABLE IF NOT EXISTS Users(gid TEXT, uid TEXT, username1 TEXT, username2 TEXT, username3 TEXT, username4 TEXT, username5 TEXT)');

                            // Add (another) greeting row
                            tx.executeSql('INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)', [ 'b', 'b', U1, U2, a, 'b', 'b'])

                        }
                    )
                }

                if(id == 4) {
                    user4 = userText
                    db.transaction(
                        function(tx) {
                            // Create the database if it doesn't already exist
                            tx.executeSql('CREATE TABLE IF NOT EXISTS Users(gid TEXT, uid TEXT, username1 TEXT, username2 TEXT, username3 TEXT, username4 TEXT, username5 TEXT)');

                            // Add (another) greeting row
                            tx.executeSql('INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)', [ 'b', 'b', U1, U2, U3, a, 'b'])

                        }
                    )
                }

                if(id == 5) {
                    user5 = userText
                    db.transaction(
                        function(tx) {
                            // Create the database if it doesn't already exist
                            tx.executeSql('CREATE TABLE IF NOT EXISTS Users(gid TEXT, uid TEXT, username1 TEXT, username2 TEXT, username3 TEXT, username4 TEXT, username5 TEXT)');

                            // Add (another) greeting row
                            tx.executeSql('INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)', [ 'b', 'b', U1, U2, U3, U4, a])

                        }
                    )
                }
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

            Rectangle {
                id: userNames
                width: 200
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100

                visible: false




                Text {
                    id: userDisplayText
                    text: "?"
                    anchors.horizontalCenter: parent.horizontalCenter

                    function findUserNames() {
                        var db = LocalStorage.openDatabaseSync("BillChill", "1.0", "Chill mal", 1000000);


                        db.transaction(
                            function(tx) {
                                var rs = tx.executeSql('SELECT * FROM Users');

                                var r = ""

                                var idu = 0
                                idu++


                                if (idu == 1){
                                for(var i = 0; i < rs.rows.length; i++) {
                                    r += rs.rows.item(i).username1 + "\n " //+ rs.rows.item(i).username2 + "\n" + rs.rows.item(i).username3 + "\n" + rs.rows.item(i).username4 + "\n" + rs.rows.item(i).username5 + "\n"
                                }
                                text = r
                                }
                                if (idu == 2){
                                for(var c = 0; c < rs.rows.length; c++) {
                                    r += rs.rows.item(c).username2 + "\n " //+ rs.rows.item(i).username2 + "\n" + rs.rows.item(i).username3 + "\n" + rs.rows.item(i).username4 + "\n" + rs.rows.item(i).username5 + "\n"
                                }
                                text = r
                                }
                                if (idu == 3){
                                for(var x = 0; x < rs.rows.length; x++) {
                                    r += rs.rows.item(x).username3 + "\n " //+ rs.rows.item(i).username2 + "\n" + rs.rows.item(i).username3 + "\n" + rs.rows.item(i).username4 + "\n" + rs.rows.item(i).username5 + "\n"
                                }
                                text = r
                                }
                                if (idu == 4){
                                for(var y = 0; y < rs.rows.length; y++) {
                                    r += rs.rows.item(y).username4 + "\n " //+ rs.rows.item(i).username2 + "\n" + rs.rows.item(i).username3 + "\n" + rs.rows.item(i).username4 + "\n" + rs.rows.item(i).username5 + "\n"
                                }
                                text = r
                                }
                                if (idu == 5){
                                for(var z = 0; z < rs.rows.length; z++) {
                                    r += rs.rows.item(z).username5 + "\n " //+ rs.rows.item(i).username2 + "\n" + rs.rows.item(i).username3 + "\n" + rs.rows.item(i).username4 + "\n" + rs.rows.item(i).username5 + "\n"
                                }
                                text = r
                                }
                            }
                        )
                    }


                    Component.onCompleted: findUserNames()
                }

                states: [
                        State {
                            name: "visible"
                            PropertyChanges { target: userNames; visible: true}

                        },
                        State {
                            name: "nonvisible"
                            PropertyChanges { target: userNames; visible: false}

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
                userNames.state = "nonvisible"

            }

            confirmgroup.onClicked: {
                item1.state = "GroupAddUser"
                textInGroupName = textInput1.text.toString()
                console.log(saveGroupName (textInGroupName))
                groupDisplayText.findNames()
                userNames.state = "visible"
            }

            textInput1.onAccepted: {
                textInGroupName = textInput1.text.toString()
                console.log(saveGroupName (textInGroupName))
                item1.state = "GroupAddUser"
                groupDisplayText.findNames()
                userNames.state = "visible"
            }

            textInputUser.onAccepted: {
                textInUserName = textInputUser.text.toString()
                console.log(saveUserName (textInUserName))
                userDisplayText.findUserNames()
                console.log(textInUserName)
                userNames.state = "nonvisible"
                userNames.state = "visible"
            }

            confirmuser.onClicked: {
                textInUserName = textInputUser.text.toString()
                console.log(saveUserName (textInUserName))
                userDisplayText.findUserNames()
                console.log(textInUserName)
            }

            back.onClicked: {
                if(item1.state == "CrtGroup") {
                    item1.state = "Start"
                }
                if(item1.state == "GroupAddUser") {
                    item1.state = "CrtGroup"
                    userNames.state = "nonvisible"
                }
                if(item1.state == "DisplayGroups") {
                    item1.state = "Start"
                    groupNames.state = "nonvisible"
                }

            }
        }
    }
}

