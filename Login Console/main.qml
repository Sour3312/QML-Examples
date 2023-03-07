import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import com.examples.login 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Console Login Details")

    Login{
        id: login
        username: usernameField.text
        password: passwordField.text

    }

    Rectangle {
        anchors.fill: parent

        ColumnLayout {
            id: layoutLogin
            anchors.centerIn: parent
            anchors.margins: 3
            spacing: 3

            TextField {
                id: usernameField
                color: "red"
                Layout.fillWidth: true
                placeholderText: "Username"
            }

            TextField {
                id: passwordField
                Layout.fillWidth: true
                placeholderText: "Password"
                echoMode: TextInput.Password
                color: "green"
            }

            Button {
                id: proccessButton
                text: "Login"
                Layout.fillWidth: true
                onClicked: login.test()

            }
        }
    }
}
