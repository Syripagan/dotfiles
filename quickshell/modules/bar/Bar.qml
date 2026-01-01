import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Services.Pipewire

Item {
    property real currentVolume: Pipewire.defaultAudioSink?.audio?.volume ?? 0
    Connections {
        target: Pipewire.defaultAudioSink?.audio
        function onVolumeChanged() {
            currentVolume = Pipewire.defaultAudioSink.audio.volume
        }
    }
    PanelWindow {
        id: startMenu1
        color: "transparent"
        width: Screen.width
        height: 0.9965 * Screen.height
        anchors {
            left: parent
            right: parent
            top: parent
            bottom: parent
        }
        property bool expanded: false
        visible: startMenu1.expanded
        Item {
            id: menuContainer
            property var rebootProcess: Process {
                command: ["sh", "-c", "reboot"]
            }
            property var logoutProcess: Process {
                command: ["sh", "-c", "hyprctl dispatch exit"]
            }
            property var poweroffProcess: Process {
                command: ["sh", "-c", "poweroff"]
            }
            property var hyprlockProcess: Process {
                command: ["sh", "-c", "hyprlock"]
            }
            width: parent.width
            height: parent.height
            Rectangle {
                id: blg
                width: Screen.width
                height:  0.9826 * Screen.height
		        y: 0 
                color: "#000000"
                opacity: 0.2
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        startMenu1.expanded = false
                    }
                }
            }
            Rectangle {
                id: menuRect
                height: 0.912 * Screen.height
                width: 0.1171875 * Screen.width
                property var formr: (-0.125)*Screen.width
                x: startMenu1.expanded ? 10 : formr
                y: 0.00694 * Screen.height
                radius: 20
                color: "#682929"
                opacity: startMenu1.expanded ? 1 : 0

                Behavior on x {
                    NumberAnimation { duration: 400; easing.type: Easing.OutCubic }
                }
                Behavior on opacity {
                    NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
                }

                Column {
                    anchors.fill: parent
                    anchors.margins: 20
                    spacing: 2

                    Text {
                        text: "<syriOS>"
                        font.family: "URW Gothic"
                        font.pixelSize: 0.01667 * Screen.height
                        color: "#ffffff"
                    }

                    Rectangle {
                        id: pob
                        height: 0.02777 * Screen.height
                        width: parent.width
                        radius: 20
                        color: "#922b2b"
                        Behavior on color {
                            ColorAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on radius {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on height {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "󰤆   Вимикаємся     "
                            font.family: "Symbols Nerd Font"
                            color: "#ffffff"
                            font.pixelSize: 0.0125 * Screen.height
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                menuContainer.poweroffProcess.startDetached()
                                Qt.quit()
                            }
                            hoverEnabled: true
                            onEntered: {
                                pob.color = "#bb3030"
                                pob.radius = 5
                                pob.height = 0.037777 * Screen.height
                            }
                            onExited: {
                                pob.color = "#922b2b"
                                pob.radius = 20
                                pob.height = 0.027777 * Screen.height
                            }
                        }
                    }
                    Rectangle {
                        id: rebb
                        height: 0.027777 * Screen.height
                        width: parent.width
                        radius: 20
                        color: "#922b2b"
                        Behavior on color {
                            ColorAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on radius {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on height {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "     Ребутаєм       "
                            font.family: "Symbols Nerd Font"
                            color: "#ffffff"
                            font.pixelSize: 0.0125 * Screen.height
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                menuContainer.rebootProcess.startDetached()
                                Qt.quit()
                            }
                            hoverEnabled: true
                            onEntered: {
                                rebb.color = "#bb3030"
                                rebb.radius = 5
                                rebb.height = 0.037777 * Screen.height
                            }
                            onExited: {
                                rebb.color = "#922b2b" 
                                rebb.radius = 20
                                rebb.height = 0.027777 * Screen.height
                            }
                        }
                    }
                    Rectangle {
                        id: lob
                        height: 0.027777 * Screen.height
                        width: parent.width
                        radius: 20
                        color: "#922b2b"
                        Behavior on color {
                            ColorAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on radius {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on height {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "󰍃  Виходім із сесії"
                            font.family: "Symbols Nerd Font"
                            color: "#ffffff"
                            font.pixelSize: 0.0125 * Screen.height
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                menuContainer.logoutProcess.startDetached()
                                Qt.quit()
                            }
                            hoverEnabled: true
                            onEntered: {
                                lob.color = "#bb3030"
                                lob.radius = 5
                                lob.height = 0.037777 * Screen.height
                            }
                            onExited: {
                                lob.color = "#922b2b" 
                                lob.radius = 20
                                lob.height = 0.027777 * Screen.height
                            }
                        }
                    }
                    Rectangle {
                        id: hlb
                        height: 0.027777 * Screen.height
                        width: parent.width
                        radius: 20
                        color: "#922b2b"
                        Behavior on color {
                            ColorAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on radius {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }
                        Behavior on height {
                            NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "       Локаєм        "
                            font.family: "Symbols Nerd Font"
                            color: "#ffffff"
                            font.pixelSize: 0.0125 * Screen.height
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                menuContainer.hyprlockProcess.startDetached()
                                startMenu1.expanded = 0
                            }
                            hoverEnabled: true
                            onEntered: {
                                hlb.color = "#bb3030"
                                hlb.radius = 5
                                hlb.height = 0.037777 * Screen.height
                            }
                            onExited: {
                                hlb.color = "#922b2b" 
                                hlb.radius = 20
                                hlb.height = 0.027777 * Screen.height
                            }
                        }
                    }
                }
            }
        }
    }
    PanelWindow {
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        id: panel
        anchors {
            top: true
            left: true
            right: true
        }
        implicitHeight: 0.03125 * Screen.height

        Rectangle {
            id: background
            anchors.fill: parent
            color: "#2c2c2c"

            Rectangle {
                id: rightDock
                color: "#3c3c3c"
                anchors.topMargin: 0.00486 * Screen.height
                anchors.rightMargin: 0.00781 * Screen.width
                radius: 15
                height: 0.0229 * Screen.height
                width: 0.4350 * Screen.width
                anchors.right: parent.right
                anchors.top: parent.top
            }
            Rectangle {
                id: leftDock
                color: "#3c3c3c"
                anchors.topMargin: 0.00486 * Screen.height
                anchors.leftMargin: 0.00781 * Screen.width
                radius: 15
                height: 0.0229 * Screen.height
                width: 0.4350 * Screen.width
                anchors.left: parent.left
                anchors.top: parent.top
            }
            Rectangle {
                id: wsbg
                color: "#922b2b"
                height: 0.0236 * Screen.height
                radius: 15
                anchors.verticalCenter: workspaces.verticalCenter
                anchors.left: workspaces.left
                anchors.leftMargin: (-0.005125) * Screen.width
                width: workspaces.width + 0.01025 * Screen.width
                Behavior on width {
                    NumberAnimation { duration: 50; }
                }
                // Behavior on width {
                //     NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
                // }
            }
            Rectangle {
                id: startMenu
                color: "#922b2b"
                height: 0.027777 * Screen.height
                radius: 20
                anchors.verticalCenter: distroIcon.verticalCenter
                anchors.left: distroIcon.left
                anchors.leftMargin: (-0.0046875) * Screen.width
                width: distroIcon.width + 20
                Behavior on color {
                    ColorAnimation { duration: 150 }
                }
                Behavior on radius {
                    NumberAnimation { duration: 150 }
                }
                
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: {
                        startMenu1.expanded = !startMenu1.expanded
                    }
                    onEntered: {
                        startMenu.color = "#bb3030" 
                        startMenu.radius = 5
                    }
                    onExited: {
                        startMenu.color = "#922b2b" 
                        startMenu.radius = 20
                    }
                }
            }
            Rectangle {
                id: audioDock
                color: "#922b2b"
                anchors.topMargin: 0.004861 * Screen.height
                anchors.rightMargin: 0.0078125 * Screen.width
                radius: 15
                height: 0.022916 * Screen.height
                width: 0.078125 * Screen.width
                anchors.right: parent.right
                anchors.top: parent.top
                property real currentVolume: Pipewire.defaultAudioSink?.audio?.volume ?? 0
                Behavior on color {
                    ColorAnimation { duration: 200; easing.type: Easing.InOutQuad }
                }
                Behavior on radius {
                    NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
                }
                Connections {
                    target: Pipewire.defaultAudioSink?.audio
                    function onVolumeChanged() {
                        if (Pipewire.defaultAudioSink?.audio?.volume !== undefined) {
                            audioDock.currentVolume = Pipewire.defaultAudioSink.audio.volume
                        } else {
                            audioDock.currentVolume = 0
                        }
                    }
                }

                MouseArea {
                    onEntered: {
                        audioDock.color = "#bb3030"
                        audioDock.radius = 5
                    }
                    onExited: {
                        audioDock.color = "#922b2b" 
                        audioDock.radius = 20
                    }
                    anchors.fill: parent
                    hoverEnabled: true
                    onWheel: {
                        if (wheel.angleDelta.y > 0)
                            Pipewire.defaultAudioSink.audio.volume = Math.min(1.0, audioDock.currentVolume + 0.05)
                        else
                            Pipewire.defaultAudioSink.audio.volume = Math.max(0.0, audioDock.currentVolume - 0.05)
                    }
                    onClicked: {
                        if (Pipewire.defaultAudioSink && Pipewire.defaultAudioSink.audio) {
                            let audio = Pipewire.defaultAudioSink.audio
                            audio.muted = !audio.muted
                        }
                    }
                }

                Text {
                    anchors.top: parent
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.left: parent
                    anchors.right: parent
                    color: "white"
                    font.pixelSize: 0.01111 * Screen.height
                    font.family: "Symbols Nerd Font"
                    text: Pipewire.defaultAudioSink?.audio?.muted ? "󰖁 мутік" : "󰕾 " + Math.round(audioDock.currentVolume * 100) + "%"
                }

                Rectangle {
                    id: volumeBar
                    anchors {
                        left: parent.left
                        bottom: parent.bottom
                        leftMargin: 0.003906 * Screen.width
                        bottomMargin: 0.004166 * Screen.height
                    }
                    height: 0.004166 * Screen.height
                    width: parent.width - (0.0078125 * Screen.width)
                    radius: 3
                    color: "#682929"

                    Rectangle {
                        anchors {
                            left: parent.left
                            top: parent.top
                            bottom: parent.bottom
                        }
                        width: parent.width * audioDock.currentVolume
                        radius: 3
                        color: "#ffffff"
                        Behavior on width {
                            NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
                        }
                    }
                }
            }

            Rectangle {
                id: tmbg
                color: "#922b2b"
                height: 0.023611 * Screen.height
                radius: 14
                anchors.verticalCenter: timeDisplay.verticalCenter
                anchors.left: timeDisplay.left
                anchors.leftMargin: (-0.0125) * Screen.width
                width: timeDisplay.width + (0.025 * Screen.width)

                Behavior on width {
                    NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
                }
                Behavior on x {
                    NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
                }
            }
            Row {
                id: workspaces
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 0.03125 * Screen.width
                }
                spacing: 0.00078125 * Screen.width

                Repeater {
                    model: Hyprland.workspaces

                    Rectangle {
                        id: wsrect
                        property bool hovered: false
                        width: modelData.active ? 0.0304375 * Screen.width : 0.008084375 * Screen.width
                        height: 0.0129722 * Screen.height
                        radius: hovered ? 5 : 40
                        color: hovered ? "#bb3030" :
                        modelData.active ? "#cc0000" : "#682929"

                        Behavior on color {
                            ColorAnimation { duration: 200; easing.type: Easing.InOutQuad }
                        }
                        Behavior on width {
                            NumberAnimation { duration: 300; easing.type: Easing.OutCubic }
                        }
                        Behavior on radius {
                            NumberAnimation { duration: 100; easing.type: Easing.OutCubic }
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                Hyprland.dispatch("workspace " + modelData.id)
                            }
                            onEntered: wsrect.hovered = true
                            onExited: wsrect.hovered = false
                            hoverEnabled: true
                        }

                        Text {
                            text: modelData.active ? modelData.id : modelData.id
                            anchors.centerIn: parent
                            color: modelData.active ? "#ffffff" : "transparent"
                            font.pixelSize: 0.0104166 * Screen.height
                            font.family: "Symbols Nerd Font"

                            Behavior on color {
                                ColorAnimation { duration: 200; easing.type: Easing.InOutQuad }
                            }
                        }
                    }
                }
            }
            Text {
                id: timeDisplay
                anchors {
                    verticalCenter: parent.verticalCenter
                    centerIn: parent
                }

                property string currentTime: ""

                text: currentTime
                color: "#ffffff"
                font.pixelSize: 0.0138888 * Screen.height
                font.family: "URW Gothic"
                
                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: {
                        var now = new Date()
                        timeDisplay.currentTime = Qt.formatDate(now, "MMMM dd") + " " + Qt.formatTime(now, "hh:mm:ss")  
                    }
                }
                
                Component.onCompleted: {
                    var now = new Date()
                    currentTime = Qt.formatDate(now, "MMMM dd") + " " + Qt.formatTime(now, "hh:mm:ss")
                }
            }
            Text {
                id: distroIcon
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: Screen.width * 0.01172
                }
                color: "#ffffff"
                font.family: "Symbols Nerd Font"
                text: ""
                font.pixelSize: Screen.height * 0.01389
            }
        }
    }
}
