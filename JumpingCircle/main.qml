import QtQuick 2.9
import QtQuick.Window 2.2
import QtPositioning 5.15
import QtLocation 5.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Jumping MArker")


    Plugin {
        id: osmMapPlugin
        name: "osm"
    }
    Map {
        anchors.fill: parent
        plugin: osmMapPlugin
        center: QtPositioning.coordinate(23.347530885220138, 85.29940322351509)
        zoomLevel: 11

        MapCircle {
            center: circleController.center
            radius: circleController.radius
            color: '#90EE90'
            border.width: 2
        }
    }
}
