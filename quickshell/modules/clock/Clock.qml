import Quickshell
import Quickshell.Wayland
import QtQuick

PanelWindow {
    exclusiveZone: 0
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
    color: "transparent"
    height: Screen.height /2
    anchors {
        top: true
        left: true
        right: true
    }
    FontLoader {
        id: sfFont
        source: "/home/syrik2000/.local/share/fonts/SFUIText-Semibold.otf"
    }
    Text {
        text: Qt.formatDateTime(clock.date, "hh:mm")
        font.family: sfFont.name
        font.pixelSize: 0.18 * Screen.height
        anchors.centerIn: parent
        color: "#30000000"
        width: implicitWidth
        height: 0.18 * Screen.height
    }
    Text {
        text: Qt.formatDateTime(clock.date, "hh:mm")
        font.family: sfFont.name
        font.pixelSize: 0.175 * Screen.height
        anchors.centerIn: parent
        color: "#ffffff"
        width: implicitWidth
        height: 0.18 * Screen.height
    }
    WlrLayershell.layer: WlrLayer.Bottom
    // aboveWindows: false
    mask: Region {}
}
