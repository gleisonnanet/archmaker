import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.2

Dialog {
    property alias thisdialog : thisdialog
    property alias backbtn : backbtn
    property alias savebtn : savebtn
    property alias runbtn : runbtn
    property alias closebtn : closebtn

    property alias savefolderdialog : savefolderdialog

    id: thisdialog

    implicitWidth: parent.width
    implicitHeight: parent.height

    contentItem: Rectangle {
        color: "#2d2d2d"
        ColumnLayout {
            spacing: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            Layout.fillWidth: true
            Label {
                Layout.alignment: Qt.AlignCenter
                text: qsTr("O script foi gerado com sucesso! :)")
                wrapMode: Text.WordWrap
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.wordSpacing: 4
                font.pointSize: 22
                font.family: "Verdana"
                horizontalAlignment: Text.AlignHCenter
            }

            Label {
                width: 357
                Layout.alignment: Qt.AlignCenter
                text: qsTr("O script de geração para sua distribuição foi gerado com sucesso.
                 Agora você pode salvá-lo para executá-lo mais tarde em um terminal ou pode executá-lo agora. ")
                Layout.fillWidth: true
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.pointSize: 11
                font.family: "Verdana"
                wrapMode: Text.WordWrap
            }

            Button {
                id: backbtn
                text: qsTr("Back")
                font.pointSize: 11
                Layout.minimumWidth: 80
                Layout.maximumWidth: 80
                Layout.minimumHeight: 50
                Layout.maximumHeight: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }

            RowLayout{
                spacing: 40
                anchors.horizontalCenter: parent.horizontalCenter
                Button {
                    id: savebtn
                    text: qsTr("Save")
                    font.pointSize: 11
                    Layout.minimumWidth: 80
                    Layout.maximumWidth: 80
                    Layout.minimumHeight: 50
                    Layout.maximumHeight: 50
                }

                Button {
                    id: runbtn
                    text: qsTr("Run")
                    font.pointSize: 11
                    Layout.minimumWidth: 80
                    Layout.maximumWidth: 80
                    Layout.minimumHeight: 50
                    Layout.maximumHeight: 50
                    enabled: false
                }

                Button {
                    id: closebtn
                    text: qsTr("Close")
                    font.pointSize: 11
                    Layout.minimumWidth: 80
                    Layout.maximumWidth: 80
                    Layout.minimumHeight: 50
                    Layout.maximumHeight: 50
                }
            }
        }
    }
    FileDialog {
        selectFolder: true
        id: savefolderdialog
        title: qsTr("Selecione uma pasta de compilação para sua distribuição ")
        folder: shortcuts.home
    }
}
