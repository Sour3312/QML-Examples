import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6

Window {
    id:winn
    width: Qt.platform.os == "android" ? Screen.width : 512
    height: Qt.platform.os == "android" ? Screen.height : 512
    visible: true
    title: qsTr("Polyline with qml")


    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {

        MapPolyline {
            line.width: 5
            line.color: '#753a88'
            path: [
                { latitude: 23.435470311037555, longitude: 85.3942966081213},
                { latitude: 22.710973565206416,longitude:85.65565675898335  },
                { latitude: 23.30888774481525,   longitude:78.4474701714428},
//                { latitude:23.470528041478406,  longitude: 77.31408368391027 },
//                { latitude: 65.83289470383973, longitude: 77.5685640095053},
//                { latitude: 22.710973565206416,longitude:85.65565675898335  }
            ]
        }
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(23.435470311037555, 85.39429660812134) // Oslo
        zoomLevel: 8
    }
}
