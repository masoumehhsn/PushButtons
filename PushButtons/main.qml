import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0
Window {
    visible: true
    width: 350
    height: 400
    title: qsTr("Push Button")
    ColumnLayout
    {
        anchors.centerIn: parent
        spacing: 50
        SquarePushButton{
            id:squareBtn
            implicitWidth: 80
            implicitHeight: 80
            Layout.alignment: Qt.AlignCenter
        }
        RoundPushButton{
            id:roundBtn
            implicitWidth: 100
            implicitHeight: 100
            Layout.alignment: Qt.AlignCenter
        }
        RectanglePushButton{
            implicitWidth: 100
            implicitHeight: 50
            Layout.alignment: Qt.AlignCenter

        }

    }

}
