import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    XmlListModel {
        id: exchangeRatesModel
        source: "http://www.cbr.ru/scripts/XML_daily.asp"

        query: "/ValCurs/Valute"
        XmlRole { name: "name"; query: "Name/string()" }
        XmlRole { name: "charCode"; query: "CharCode/string()" }
        XmlRole { name: "nominal"; query: "Nominal/string()" }
        XmlRole { name: "value"; query: "Value/string()" }

        onStatusChanged: {
            if (status === XmlListModel.Ready) {
                console.log("Got", count, "exchange rates");
            } else if (status === XmlListModel.Error) {
                console.error("Error loading exchange rates: ", errorString());
            }
        }
    }

        ListView {
            anchors.fill: parent
            model: exchangeRatesModel
            spacing: 160
            delegate: Item {
                width: parent.width
                height: 60
                Column {
                    Text { text: "Name: " + name }
                    Text { text: "Code: " + charCode }
                    Text { text: "Nominal: " + nominal }
                    Text { text: "Value: " + value }
                }
            }
        }
    }
