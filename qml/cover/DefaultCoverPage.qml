import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    objectName: "defaultCover"

    CoverTemplate {
        objectName: "applicationCover"
        primaryText: "App"
        secondaryText: qsTr("Exchange_rate")
        icon {
            source: Qt.resolvedUrl("../icons/Exchange_rate.svg")
            sourceSize { width: icon.width; height: icon.height }
        }
    }
}
