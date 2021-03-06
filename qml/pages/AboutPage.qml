import QtQuick 2.0
import Sailfish.Silica 1.0
Page {

    CreditsModel {id: credits}

    SilicaFlickable {
        id: flick
        width:parent.width
        height: parent.height - Theme.paddingLarge * 3
        anchors.top: parent.top
        anchors.topMargin: Theme.paddingLarge * 3
        contentHeight: column1.height

        Column{
            id: column1
            width: parent.width
            spacing: 15

            Image{
                source: appicon
                height: Theme.iconSizeLarge
                width: Theme.iconSizeLarge
                fillMode: Image.PreserveAspectFit
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
            Label {
                font.pixelSize: Theme.fontSizeMedium
                text: appname+" v"+version
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Label {
                text: "License: GPLv3"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle{
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#333333" }
                    GradientStop { position: 1.0; color: "#777777" }
                }
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                height: 3
                width: parent.width-64
            }

            Label {
                width: parent.width
                font.pixelSize: Theme.fontSizeMedium
                text: "Created by llelectronics"
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignHCenter
            }
            Repeater{
                anchors.horizontalCenter: parent.horizontalCenter
                model: credits
                Label  {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: title
                    font.pixelSize: Theme.fontSizeSmall
                }
            }
            Rectangle{
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#333333" }
                    GradientStop { position: 1.0; color: "#777777" }
                }
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                height: 3
                width: parent.width-64
            }

            Button {
                id: homepage
                anchors.horizontalCenter: parent.horizontalCenter
                text: "<a href=\"https://github.com/llelectronics/mimer\">Sourcecode on Github</a>"
                onClicked: {
                    Qt.openUrlExternally("https://github.com/llelectronics/mimer");
                }
            }

            Label {
                width: parent.width-70
                font.pixelSize: Theme.fontSizeSmall
                text: qsTr("A simple app to set default applications.")
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignHCenter
                height: Theme.itemSizeLarge
                wrapMode: Text.WordWrap
            }
        }
    }
}
