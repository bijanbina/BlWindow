import QtQuick 2.14
import QtQuick.Controls 2.14
import Laventh.Window 1.0

Rectangle
{
    id: root

    property string win_title: "This PC"
    color: "#444"
    border.color: "#555"
    border.width: 1

    FontLoader
    {
        id: fontSegoe
        source: "qrc:/Fonts/segoe-mdl2-assets.ttf"
    }

    // Window content.
    WindowTitle
    {
        id: content
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 1

        onClose:    Win.close()
        onMaximize: Win.toggle_maximize()
        onMinimize:  Win.minimize()

        title: win_title
    }

    Text
    {
        anchors.centerIn: parent
        text: "Sample Window"
        font.pixelSize: 27
        color: "#AAAAAA"
    }
}
