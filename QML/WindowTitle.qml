import QtQuick 2.14

Rectangle
{
    id: content

    property string title: ""

    color: "#000"
    height: 32

    signal close()
    signal maximize()
    signal minimize()

    Text
    {
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter

        text: title
        color: "#FFF"
        font.pixelSize: 12
    }

    // Exit button.
    WindowControl
    {
        id: exitButton
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        onBclicked: close()

        btn_text: "\uE8BB"
        width: 45
        height: parent.height
        color_hover: "#F33"
    }

    // Maximize button.
    WindowControl
    {
        id: maximizeButton
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: exitButton.left
        onBclicked: maximize()

        btn_text: "\uE922"
        width: 45
        height: parent.height
    }

    // Minimize button.
    WindowControl
    {
        id: minimizeButton
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: maximizeButton.left
        onBclicked: minimize()

        btn_text: "\uE921"
        width: 45
        height: parent.height
    }
}
