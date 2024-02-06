import QtQuick 2.0
import QtGraphicalEffects 1.13

Item {
    id: name
    Rectangle {
        id: outerBrdrRect
        width: brdrRect.width*1.02
        height: brdrRect.height*1.02
//        border.color: "#2d2d2d"
//        border.width: 1
        radius: width/2
        color: "#2d2d2d"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }
    Rectangle {
        id: brdrRect
        width: rect1.width*1.08
        height: rect1.height*1.15
        border.color: "#2d2d2d"
        border.width: 1
        radius: width/2
        color: "white"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }
    LinearGradient {
        id:unPressedBrdGrad
        anchors.fill: brdrRect
        source: brdrRect

        gradient:Gradient{
            GradientStop {position: 0.0; color: "white" }
            GradientStop {position: 0.2; color: "#63667b" }
            GradientStop {position: 0.4; color: "white" }
            GradientStop {position: 0.5; color: "black" }
            GradientStop {position: 0.8; color: "white" }

            GradientStop {position: 1.0; color: "black" }

        }

    }

    LinearGradient {
        id:pressedBrdGrad
        anchors.fill: brdrRect
        source: brdrRect
        visible:!unPressedBrdGrad.visible
        gradient:Gradient{
            GradientStop {position: 0.0; color: "white" }
            GradientStop {position: 0.2; color: "#63667b" }
            GradientStop {position: 0.4; color: "white" }
            GradientStop {position: 0.5; color: "#63667b" }
            GradientStop {position: 0.8; color: "white" }

            GradientStop {position: 1.0; color: "black" }
        }

    }
    //    LinearGradient {
    //        anchors.fill: brdrRect
    //        source: brdrRect
    //        gradient:Gradient{
    //            GradientStop { position: 1.0; color: "#323335" }
    //            GradientStop {position: 0.5; color: "#63667b" }
    //            GradientStop {position: 0.0; color: "#b7b9c9" }
    //        }

    //    }
    Rectangle {
        id: rect1
        width: parent.width
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        radius: width/2

    }
    LinearGradient {
        id:unPressedGrad
        anchors.fill: rect1
        source: rect1
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#454545" }
            GradientStop {position: 0.5; color: "#161616" }
            GradientStop {position: 1.0; color: "#3f3f3f" }

        }
    }
    LinearGradient {
        id:pressedGrad
        anchors.fill: rect1
        source: rect1
        visible:!unPressedGrad.visible
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#161616" }
            GradientStop {position: 0.7; color: "#3f3f3f" }
            GradientStop {position: 0.8; color: "#565454" }
            GradientStop {position: 1.0; color: "#9e9c9c" }

        }
    }
    Rectangle {
        id: innerRect
        width: parent.width*0.8
        height: parent.height*0.4
        anchors.top: rect1.top
        anchors.topMargin:  parent.height*0.1
        anchors.horizontalCenter: parent.horizontalCenter
        radius: width/2
        border.width: 1
        border.color: "#2d2d2d"
        visible:unPressedGrad.visible


    }
    LinearGradient {
        id:innerRectUnPressedGrad
        anchors.fill: innerRect
        source: innerRect
        visible:unPressedGrad.visible
        gradient: Gradient {

            GradientStop {position: 0.0; color: "#707070" }
            GradientStop {position: 0.5; color: "#454545" }
            GradientStop {position: 1.0; color: "#141313" }

        }
    }




    MouseArea{
        anchors.fill: parent
        onPressed: {
            unPressedGrad.visible = false
            unPressedBrdGrad.visible = false

        }
        onReleased: {
            unPressedGrad.visible = true
            unPressedBrdGrad.visible = true


        }
    }

}
