import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1

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
            text: qsTr("Bem-vindo ao ArchMaker! ")
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
            text: qsTr("Este assistente irá guiá-lo passo a passo através da criação de sua distribuição GNU / Linux baseada em arquitectura personalizada. 

Você só precisa completar as 7 etapas a seguir:
1. Programas que precisam ser instalados (repositórios normais)
2. Programas que precisam ser instalados (AUR)
3. Conteúdo da pasta padrão para novos usuários (/etc/skel)
4. Informações de liberação de lsb
5. Apresentação de slides para calamares (o instalador)
6. Resumo 
7. Salvando o script final ")
            Layout.fillWidth: true
            font.capitalization: Font.MixedCase
            font.weight: Font.Medium
            font.wordSpacing: 2
            font.pointSize: 11
            font.family: "Verdana"
            wrapMode: Text.WordWrap
        }
    }
}
