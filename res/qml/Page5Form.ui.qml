import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: item1

    property alias distroname : distroname
    property alias distrodescription : distrodescription
    property alias distroversion : distroversion
    property alias distrocodename : distrocodename

    ColumnLayout {
        id: columnLayout
        anchors.horizontalCenterOffset: -2
        anchors.top: parent.top
        anchors.topMargin: 17
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        spacing: 20
        Label {
            Layout.alignment: Qt.AlignCenter
            text: "/etc/lsb-release"
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
            text: qsTr("O arquivo \"/etc/lsb-release\" contém informações sobre a distribuição. O nome selecionado também será usado para entradas de inicialização dupla. ")
            Layout.fillWidth: true
            font.capitalization: Font.MixedCase
            font.weight: Font.Medium
            font.wordSpacing: 2
            font.pointSize: 11
            font.family: "Verdana"
            wrapMode: Text.WordWrap
        }

        Grid {
            columns: 2
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalItemAlignment: Grid.AlignHCenter
            verticalItemAlignment: Grid.AlignVCenter
            spacing: 15

            Label {
                text: qsTr("Nome da distribuição :")
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.pointSize: 11
                font.family: "Verdana"
            }

            TextField {
                id: distroname
                text: qsTr("Mandra")
                width: 250
                placeholderText: qsTr("Mandra")
            }

            Label {
                text: qsTr("Descrição :")
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.pointSize: 11
                font.family: "Verdana"
            }

            TextField {
                id: distrodescription
                text: qsTr("A melhor distro de todas !")
                width: 250
                placeholderText: qsTr("A melhor distro de todas !")
            }

            Label {
                text: qsTr("Primeira versão:")
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.pointSize: 11
                font.family: "Verdana"
            }

            TextField {
                id: distroversion
                text: "1.0.0"
                width: 250
                placeholderText: "1.0.0"
            }

            Label {
                text: qsTr("Primeiro codinome :")
                font.capitalization: Font.MixedCase
                font.weight: Font.Medium
                font.pointSize: 11
                font.family: "Verdana"
            }

            TextField {
                id: distrocodename
                text: "Tente"
                width: 250
                placeholderText: "Tente"
            }
        }
    }
}
