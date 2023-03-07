import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Controls 2.5



Window {
    width: Qt.platform.os == "android" ? Screen.width : 512
    height: Qt.platform.os == "android" ? Screen.height : 512
    visible: true

    Plugin {
        id: mapPlugin
        name: "osm"

//        PluginParameter {
//                   name: "osm.mapping.providersrepository.disabled"
//                   value: "true"
//               }
//               PluginParameter {
//                   name: "osm.mapping.providersrepository.address"
//                   value: "http://maps-redirect.qt.io/osm/5.6/"
//               }
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(23.332675899673813, 85.3094067156434)
        zoomLevel: 7
//        gesture.enabled: true
//            gesture.acceptedGestures: MapGestureArea.PinchGesture | MapGestureArea.PanGesture


        MapPolygon {
            color: 'transparent'
            path: [
                { latitude: 23.332675899673813, longitude: 85.3094067156434 },
                { latitude: 22.190137190937506,longitude:82.42617301397138  },
//                { latitude: 25.78276407568304, longitude: 85.11782301491988},
                { latitude: 24.90841085466845, longitude: 82.48855744281482}
            ]
        }
    }
}
