import QtQuick 2.0
import QtQuick.Window 2.0
//import QtGraphicalEffects 2.0
Window {
    id: win
    width: 325 // Initial window width
    height: 650 // Initial window height
    visible: true

    Rectangle {
        id: display
        width: win.width
        height: win.height/*/4 - 20*/
        color: "white"
        radius: 60
        border.color: black
        border.width: 20
        Image {
            id: netw
            source: "file:///C:/Users/GGSIT/Downloads/network.png" // Adjust the path accordingly
            width: 13 // Set a specific width for the image
            height: 13 // Set a specific height for the image
            fillMode: Image.PreserveAspectFit
            x: display.width - 80 // Adjust the position as needed
            y: 26
        }
        Image {
            id: battery
            source: "file:///C:/Users/GGSIT/Downloads/battery.png" // Adjust the path accordingly
            width: 18 // Set a specific width for the image
            height: 20 // Set a specific height for the image
            fillMode: Image.PreserveAspectFit
            x: display.width - 60 // Adjust the position as needed
            y: 23
        }
        Rectangle{
            id:knotch
            x:display.x + 77
            y:display.y - 5
            width: display.width /2
            height: display.height - 602
            color: "black"
            radius: 60
            onWidthChanged: {
                x = display.width / 2 - width / 2;
            }
            onHeightChanged: {
                y = display.height / 2 - height / 2;
            }

        }

        Rectangle {
            id: innerRect
            x:display.x+30
            y:display.y+60
            width: display.width - 60
            height: display.height - 530
            color: "lightblue"
            //anchors.centerIn: parent
            gradient: Gradient{
                GradientStop{
                    position: 0.0
                    color: "pink"
                }
                GradientStop{
                    position: 1.0
                    color: "purple"
                }
            }
            Image {
                id: img
                source: "file:///C:/Users/GGSIT/Downloads/android.png" // Adjust the path accordingly
                width: 100 // Set a specific width for the image
                height: 100 // Set a specific height for the image
                fillMode: Image.PreserveAspectFit
                x: 20 // Adjust the position as needed
                y: innerRect.height - img.height - 10
            }
            Image {
                id: img2
                source: "file:///C:/Users/GGSIT/Downloads/apple.png" // Adjust the path accordingly
                width: 90 // Set a specific width for the image
                height: 90 // Set a specific height for the image
                fillMode: Image.PreserveAspectFit
                x: 150 // Adjust the position as needed
                y: innerRect.height - img2.height- 20
            }
        }
        Rectangle{
            id:b1
            x:innerRect.x
            y:innerRect.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30

            Rectangle{
                id:general
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b1.x
                y:b1.x - 10
                color: "blue"
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#86c4eb"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#4faae3"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b1.color = "#c0c2c0"
                    onReleased: b1.color = "#f0f2f0"
                }
                Image {
                    id: generallogo
                    source: "file:///C:/Users/GGSIT/Downloads/general.png" // Adjust the path accordingly
                    width: 30 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: general.width / 2 - width / 2
                    y: general.height / 2 - height / 2
                }

            }
            Text {
                id: generaltxt
                text: qsTr("General")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b1.x + 4
                y:b1.x + 50
                font.pixelSize: 14
            }
        }
        Rectangle{
            id:b2
            x:innerRect.x + 135
            y:innerRect.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30
            Rectangle{
                id:transportLogo
                width: b2.width/2 - 5
                height: b2.height/2 -5
                x:b1.x
                y:b1.x - 10
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#ad9beb"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#7e40e3"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b2.color = "#c0c2c0"
                    onReleased: b2.color = "#f0f2f0"
                }
                Image {
                    id: truckLogo
                    source: "file:///C:/Users/GGSIT/Downloads/truck3.png" // Adjust the path accordingly
                    width: 30 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: transportLogo.width / 2 - width / 2
                    y: transportLogo.height / 2 - height / 2
                }

            }
            Text {
                id: transport
                text: qsTr("Transport")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b1.x + 4
                y:b1.x + 50
                font.pixelSize: 14
            }
        }
        Rectangle{
            id:b3
            x:innerRect.x
            y:b1.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30

            Rectangle{
                id: shopBag
                width: b3.width/2 - 5
                height: b3.height/2 -5
                x:b3.x
                y:b3.x - 10
                color: "blue"
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#d49dd1"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#ba349d"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b3.color = "#c0c2c0"
                    onReleased: b3.color = "#f0f2f0"
                }
                Image {
                    id: baglogo
                    source: "file:///C:/Users/GGSIT/Downloads/shoping bag.png" // Adjust the path accordingly
                    width: 30 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: shopBag.width / 2 - width / 2
                    y: shopBag.height / 2 - height / 2
                }
            }
            Text {
                id: shopping
                text: qsTr("Shopping")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b3.x
                y:b3.x + 50
                font.pixelSize: 14
            }
        }
        Rectangle{
            id:b4
            x:innerRect.x + 135
            y:b2.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30

            Rectangle{
                id:billLogo
                width: b5.width/2 - 5
                height: b5.height/2 -5
                x:b3.x
                y:b3.x - 10
                color: "blue"
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#f7ad6d"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#eb7442"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b4.color = "#c0c2c0"
                    onReleased: b4.color = "#f0f2f0"
                }
                Image {
                    id: bill
                    source: "file:///C:/Users/GGSIT/Downloads/bill.png" // Adjust the path accordingly
                    width: 30 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: billLogo.width / 2 - width / 2
                    y: billLogo.height / 2 - height / 2
                }
            }
            Text {
                id: bills
                text: qsTr("Bills")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b3.x + 17
                y:b3.x + 50
                font.pixelSize: 14
            }
        }
        Rectangle{
            id:b5
            x:innerRect.x
            y:b3.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30

            Rectangle{
                id: entertainment
                width: b5.width/2 - 5
                height: b5.height/2 -5
                x:b5.x
                y:b5.x - 10
                color: "blue"
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#86c4eb"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#4faae3"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b5.color = "#c0c2c0"
                    onReleased: b5.color = "#f0f2f0"
                }
                Image {
                    id: entertainmentlogo
                    source: "file:///C:/Users/GGSIT/Downloads/entertain.png" // Adjust the path accordingly
                    width: 30 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: entertainment.width / 2 - width / 2
                    y: entertainment.height / 2 - height / 2
                }
            }
            Text {
                id: entertainmentTxt
                text: qsTr("Entertainment")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b5.x - 10
                y:b5.x + 50
                font.pixelSize: 14
            }
        }
        Rectangle{
            id:b6
            x:innerRect.x + 135
            y:b4.y + 135
            width: display.width / 2 - 40
            height: display.width / 2 - 45
            color: "#f0f2f0"
            radius: 30

            Rectangle{
                id: grocery
                width: b6.width/2 - 5
                height: b6.height/2 -5
                x:b5.x
                y:b5.x - 10
                color: "blue"
                radius: 60
                border.color: "#cdd1d4"
                border.width: 1
                gradient: Gradient{
                    GradientStop{
                        position: 0.0
                        color: "#a6f7a6"
                    }
                    GradientStop{
                        position: 1.0
                        color: "#2bcc46"
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: b6.color = "#c0c2c0"
                    onReleased: b6.color = "#f0f2f0"
                }
                Image {
                    id: grocerylogo
                    source: "file:///C:/Users/GGSIT/Downloads/grocery.png" // Adjust the path accordingly
                    width: 40 // Set a specific width for the image
                    height: 40 // Set a specific height for the image
                    fillMode: Image.PreserveAspectFit

                    // Center the image relative to the parent (assuming transportLogo is the parent)
                    x: grocery.width / 2 - width / 2
                    y: grocery.height / 2 - height / 2
                }
            }
            Text {
                id:grocerytxt
                text: qsTr("Grocery")
                width: b1.width/2 - 5
                height: b1.height/2 -5
                x:b5.x + 4
                y:b5.x + 50
                font.pixelSize: 14
            }
        }

    }
}
