import QtQuick 2.0
import QtGraphicalEffects 1.13

Item {
    id: name
    Rectangle {
        id: brdrRect
        width: parent.width*1.15
        height: width
        radius: width/2
        border.width: parent.width*0.08
        color: "transparent"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
    RadialGradient {
        anchors.fill: brdrRect
        source: brdrRect
        gradient:Gradient{
            GradientStop {id:brdrpos0; position: 0.5; color: "#63667b" }
            GradientStop {id:brdrpos1; position: 0.4; color: "white" }
            GradientStop {id:brdrpos2; position: 0.2; color: "black" }
        }

    }

    Rectangle {
        id: rect2
        width: parent.width*1.03
        height: width
        radius: width/2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: pressedGrad.visible

    }
    LinearGradient
    {
        anchors.fill: rect2
        source: rect2
        start: Qt.point(rect2.width/8, rect2.width/8)
        end: Qt.point(rect2.width, rect2.width)
        gradient:Gradient{
            GradientStop {id:vbrdrpos0; position: 0.0; color: "white" }
            GradientStop {position: 0.2; color: "white" }

            GradientStop {id:vbrdrpos1; position: 0.8; color: "#000000" }
        }
    }
    Rectangle {
        id: rect1
        width: parent.width
        height: width
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        radius: width/2

    }



    RadialGradient
    {
        id:pressedGrad
        visible: !unPressedGrad.visible
        anchors.fill: rect1
        source: rect1
        gradient: Gradient {

            GradientStop {id:pos0; position: 1.0; color: "#f75d5d" }
            GradientStop {id:pos1; position: 0.5; color: "#ff4949" }
            GradientStop {id:pos2; position: 0.4; color: "#890000" }
            GradientStop {id:pos3; position: 0.2; color: "#890000" }
            GradientStop {id:pos4; position: 0.0; color: "#890000" }


        }
    }
    RadialGradient
    {
        id:unPressedGrad
        anchors.fill: rect1
        source: rect1
        verticalOffset:-40
        horizontalOffset: -50

        gradient: Gradient {
            GradientStop { position: 1.0; color: "#890000" }
            GradientStop { position: 0.5; color: "#c90e0e" }
            GradientStop { position: 0.0; color: "#f75d5d" }

        }
    }

    MouseArea
    {
        anchors.fill: parent
        onPressed: {
            unPressedGrad.visible = false
            pressedGrad.visible = true

        }
        onReleased: {
            unPressedGrad.visible = true
            pressedGrad.visible = false

        }
    }

}



