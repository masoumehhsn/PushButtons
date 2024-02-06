import QtQuick 2.0
import QtGraphicalEffects 1.13

Item {
    id: name
    //    width: parent.width
    //    height: parent.height
    //    anchors.verticalCenter: parent.verticalCenter
    //    anchors.horizontalCenter: parent.horizontalCenter
    z:100

    Rectangle {
        id: brdrRect
        width: parent.width*1.15
        height: parent.height*1.15
        border.color: "grey"
        border.width: parent.width*0.08

        color: "transparent"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
    LinearGradient {
        id:unPressedBrdGrad
        anchors.fill: brdrRect
        source: brdrRect
        gradient:Gradient{
            GradientStop {id:brdrpos0; position: 1.0; color: "#323335" }
            GradientStop {id:brdrpos1; position: 0.5; color: "#63667b" }
            GradientStop {id:brdrpos2; position: 0.0; color: "#b7b9c9" }
        }

    }
    LinearGradient {
        id:pressedBrdGrad
        anchors.fill: brdrRect
        source: brdrRect
        visible:!unPressedBrdGrad.visible
        gradient:Gradient{
            GradientStop {position: 1.0; color: "#464849" }
            GradientStop {position: 0.5; color: "#63667b" }
            GradientStop {position: 0.0; color: "#d6d6d6" }
        }

    }
    LinearGradient {
        anchors.fill: brdrRect
        source: brdrRect
        gradient:Gradient{
            GradientStop { position: 1.0; color: "#323335" }
            GradientStop {position: 0.5; color: "#63667b" }
            GradientStop {position: 0.0; color: "#b7b9c9" }
        }

    }
    Rectangle {
        id: rect1
        width: parent.width
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter




    }
    Rectangle {
        id: rect2
        width: parent.width
        height: parent.height
        color: "transparent"
        border.color: "#000000"
        border.width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z:90

        visible: false




    }
    LinearGradient{
        anchors.fill: rect2
        source: rect2
        gradient:Gradient{
            GradientStop {id:vbrdrpos0; position: 0.0; color: "#000000" }
            GradientStop {id:vbrdrpos1; position: 1.0; color: "#000000" }
        }
    }


    LinearGradient {
        id:unPressedGrad

        anchors.fill: rect1
        source: rect1
        gradient: Gradient {
            GradientStop {id:pos0; position: 0.0; color: "#9A9A9A" }
            GradientStop {id:pos1;position: 0.1; color: "#707070" }
            GradientStop {id:pos2; position: 0.2; color: "#454545" }
            GradientStop {id:pos3; position: 0.5; color: "#2d2d2d" }
            GradientStop {id:pos4; position: 0.8; color: "#161616" }
            GradientStop {id:pos5; position: 0.9; color: "#141313" }
            GradientStop {id:pos6; position: 1.0; color: "#000000" }

        }
    }
    LinearGradient {
        id:pressedGrad
        anchors.fill: rect1
        source: rect1
        visible:!unPressedGrad.visible
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#000000" }
            GradientStop {position: 0.1; color: "#3f3f3f" }
            GradientStop {position: 0.2; color: "#3f3f3f" }
            GradientStop {position: 0.5; color: "#3f3f3f" }
            GradientStop {position: 0.8; color: "#3f3f3f" }
            GradientStop {position: 0.9; color: "#3f3f3f" }
            GradientStop {position: 1.0; color: "#000000" }

        }
    }
    MouseArea{
        anchors.fill: parent
        onPressed: {
            unPressedGrad.visible = false
            unPressedBrdGrad.visible = false
            rect2.visible = true

        }
        onReleased: {
            rect2.visible = false
            unPressedGrad.visible = true
            unPressedBrdGrad.visible = true


        }
    }

}
