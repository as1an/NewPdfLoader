import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0

Page {
    id: pageOne



    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill:parent

        // Добавить заголовок с названием приложения


        //Добавить объект типа Label с текстом "Last file name:"


        // Добавить объект типа Label с названием последнего файла. Использовать свойство selectedFile элемента file.


        // Добавить объект типа FilePickerPage для загрузки страницы выбора файлов с расширением .pdf. При выборе файла в стек страниц загружается SecondPage.qml


        //Добавить объект типа Button. При нажатии на кнопку в стек страниц загружается FilePickerPage


    }
}
