import QtQuick 2.4

Page7Form {

    function displaysummary(settings) {
        summarytext.text = qsTr("Pacotes que precisam ser instalados: pacotes selecionados
Pacotes da AUR: \n") + settings.aur.join("\n") + qsTr("
/etc/skel-folder: ") + settings.skelfolder.summary + qsTr("
Name of the distribution: ") + settings.lsbrelease.name + qsTr("
Descrição da distribuição:  ") + settings.lsbrelease.description + qsTr("
Primeira versão da distribuição : ") + settings.lsbrelease.version + qsTr("
Primeiro codinome da distribuição : ") + settings.lsbrelease.codename + qsTr("
Slideshow-folder: ") + settings.slideshow.summary;
        scriptdialog.generatescript(settings);
    }

    generatebtn {
        onClicked: {
            scriptdialog.open();
        }
    }
}
