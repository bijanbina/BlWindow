import QtQuick 2.14


Rectangle
{
	id: windowControl

    property string btn_text: ""
    property color  color_hover: "#222"
    property string btn_state: ""

    signal bclicked()

    color:
    {
        if( btn_state==="hover" )
        {
            color_hover
        }
        else
        {
            "transparent"
        }
    }

    Text
    {
        anchors.centerIn: parent

        text: btn_text
        color: "#FFF"
        font.pixelSize: 10
        font.family: fontSegoe.name
    }

	MouseArea
	{
		id: mouseArea
		anchors.fill: parent
        onEntered: btn_state = "hover"
        onExited: btn_state = ""
		hoverEnabled: true
        onClicked: bclicked()
        z: 10
	}
}
