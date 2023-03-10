import QtQuick 2.0
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Window 2.0
import QtQuick.Controls 2.5

Rectangle {
    width: 600
    height: 600
    visible: true

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: mapview
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(23.373715604583754, 85.33661835432272)
        zoomLevel: 11

        MapItemView{
            model: markerModel
            delegate: mapcomponent
        }
    }

    Component {
        id: mapcomponent
        MapQuickItem {
            id: marker
            anchorPoint.x: image.width/4
            anchorPoint.y: image.height
            coordinate: position

            sourceItem: Image {
                id: image
                source: "http://maps.gstatic.com/mapfiles/ridefinder-images/mm_20_red.png"
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressAndHold:  {
            var coordinate = mapview.toCoordinate(Qt.point(mouse.x,mouse.y))
            markerModel.addMarker(coordinate)
        }
    }
}


