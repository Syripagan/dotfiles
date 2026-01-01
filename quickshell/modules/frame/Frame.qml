pragma ComponentBehavior: Bound
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import QtQuick
import QtQuick.Effects


Item {
    PanelWindow {
        exclusiveZone: 0
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        mask: Region {}
        width: Screen.width
        height: 0.9280 * Screen.height
        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            border.color: "#682929"
            radius: 30
            border.width: 0.001953125 * Screen.width
        }
    }
    PanelWindow {
        exclusiveZone: 0
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        mask: Region {}
        width: 1.0039 * Screen.width
        height: 0.9280 * Screen.height
        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            border.color: "#2c2c2c"
            radius: 30
            border.width: 0.001953125 * Screen.width
        }
    }
    PanelWindow {
        exclusiveZone: 0
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        mask: Region {}
        width: 1.0078 * Screen.width
        height: 0.9280 * Screen.height
        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            border.color: "#2c2c2c"
            radius: 30
            border.width: 0.001953125 * Screen.width
        }
    }
    PanelWindow {
        exclusiveZone: 0
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        mask: Region {}
        width: Screen.width
        height: 0.9280 * Screen.height
        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            border.color: "#2c2c2c"
            radius: 0
            border.width: 0.001953125 * Screen.width
        }
    }
    PanelWindow {
        exclusiveZone: 0
        WlrLayershell.layer: WlrLayer.Bottom
        color: "transparent"
        mask: Region {}
        width: 1.0078 * Screen.width
        height: 0.9280 * Screen.height
        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            border.color: "#2c2c2c"
            radius: 22
            border.width: 0.001953125 * Screen.width
        }
    }
}
