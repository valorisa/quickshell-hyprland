// modules/Bar/Bar.qml — Main status bar

import Quickshell
import Quickshell.Hyprland
import QtQuick
import "../../config"
import "."

PanelWindow {
    id: root

    // ─── Layer Shell positioning ────────────────────────────
    anchors {
        top:   true
        left:  true
        right: true
    }
    height:    Sizes.barHeight
    exclusiveZone: height

    // ─── Background ─────────────────────────────────────────
    color: Colors.colBg

    // ─── Layout ─────────────────────────────────────────────
    Row {
        anchors.fill: parent
        anchors.leftMargin:  Sizes.barSpacing
        anchors.rightMargin: Sizes.barSpacing

        // Left — Workspaces
        Workspaces {
            anchors.verticalCenter: parent.verticalCenter
        }

        // Center — Clock (flexible spacer trick)
        Item { Layout.fillWidth: true }

        Clock {
            anchors.centerIn: parent
        }

        Item { Layout.fillWidth: true }

        // Right — System stats
        SystemStats {
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
