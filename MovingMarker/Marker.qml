import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12

MapQuickItem
{
    id: marker
    anchorPoint.x: marker.width / 4
    anchorPoint.y: marker.height
    sourceItem: Image{
        id: icon
        source: "https://png.pngtree.com/png-vector/20190903/ourmid/pngtree-map-location-marker-icon-in-red-png-image_1722078.jpg"
        sourceSize.width: 50
        sourceSize.height: 50
    }
}
