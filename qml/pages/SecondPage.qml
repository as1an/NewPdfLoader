import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0
import harbour.MyPdfReader.pdf 1.0

Page {
    id: pageTwo
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PDFLoader {
            id: pdfLoader
            anchors.fill: parent

            onSendErrorTextToQml: {
                console.log(errorMessage)
            }
            onCurrentPageChanged: {
                file.currentPage = pdfLoader.currentPage
            }
        }

        VerticalScrollDecorator {}

        Row {
            id: row
            spacing: Theme.paddingLarge

            anchors.horizontalCenter: parent.Center
            anchors.bottom: parent.bottom

            Button {
                text: "Previous"

                onClicked: pdfLoader.drawPreviousPage()
            }

            Label { text: pdfLoader.currentPage }

            Button {
                text: "Next"

                onClicked: pdfLoader.drawNextPage()
            }
        }

         Component.onCompleted: {
             pdfLoader.loadPDF(file.selectedFile)
         }
    }
}
