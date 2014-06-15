/****************************************************************************************
**                                                                                     **
**  Author:                                                                            **
**      Bérenger ARNAUD                                                                **
**                                                                                     **
**  Project:                                                                           **
**      Pathfinder                                                                     **
**                                                                                     **
****************************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: homePage

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        contentWidth: parent.width

        VerticalScrollDecorator {}
        Column {
            id: column
            spacing: Theme.paddingLarge
            width: parent.width

            PageHeader { }

            Image {
                source: "../images/Pathfinder-logo.png"
                width: parent.width - 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Separator { }

            Row {
                spacing: Theme.paddingLarge
                anchors.horizontalCenter: parent.horizontalCenter
                Button {
                    id: routeButton
                    text: "Liste des sorts"
                    onClicked: pageStack.push(Qt.resolvedUrl("Spells.qml"))
                }
            }
        }
    }
}
