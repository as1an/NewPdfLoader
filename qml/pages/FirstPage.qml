import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0

Page {
    id: pageOne
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill:parent
        contentHeight: column.height

        Column {
            id: column
            width: parent.width
            spacing: 20

            PageHeader { title: "NewPdfLoader"}

            Label { text: "Last file name:" }

            Label {
                width: parent.width - 2 * x
                x : Theme.horizontalPageMargin
                wrapMode: Text.WordWrap
                text: file.selectedFile ? file.selectedFile : "No file name"
            }

            FilePickerPage {
                id: filePickerPage
                nameFilters: [ '*.pdf' ]

                onSelectedContentPropertiesChanged: {
                    file.selectedFile = selectedContentProperties.filePath
                    pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
                }
            }

            Button {
                text: "Load pdf"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: pageStack.push(filePickerPage)
            }
        }
    }
}
