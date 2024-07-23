import QtQuick

Rectangle {
    id: bg
    width: 200
    height: 100
    color: "lightblue"

    Rectangle {
        color: "green"
        width: 50
        height: 50
        y:25
        anchors.left: bg.left
        anchors.top: bg.top

    }
}

