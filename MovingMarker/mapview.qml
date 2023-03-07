import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12

Item {
    id: window
    Plugin{
        id: mapPlugin
        name:"osm"
    }
    Map{
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(23.346791522318075, 85.14625715635891);
        zoomLevel: 14
        Marker{
            coordinate: marker_model.current
        }
        MapItemView{
            model: marker_model
            delegate: Marker{
                coordinate: model.position
            }
        }
    }
}
