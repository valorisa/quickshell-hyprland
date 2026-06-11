// modules/Bar/SystemStats.qml — CPU, RAM, Battery

import Quickshell
import QtQuick
import "../../config"

Row {
    id: root
    spacing: Sizes.barSpacing

    // ─── CPU ────────────────────────────────────────────────
    Row {
        spacing: 4
        anchors.verticalCenter: parent.verticalCenter

        Text { text: "󰻠"; color: Colors.colAccent; font.pixelSize: Sizes.fontMd }
        Text {
            text: cpuProc.stdout.trim() + "%"
            color: Colors.colFg
            font.pixelSize: Sizes.fontSm
        }
    }

    // ─── RAM ────────────────────────────────────────────────
    Row {
        spacing: 4
        anchors.verticalCenter: parent.verticalCenter

        Text { text: "󰍛"; color: Colors.colBlue; font.pixelSize: Sizes.fontMd }
        Text {
            text: ramProc.stdout.trim()
            color: Colors.colFg
            font.pixelSize: Sizes.fontSm
        }
    }

    // ─── Battery (hidden if desktop) ────────────────────────
    Row {
        spacing: 4
        visible: battProc.stdout.trim() !== ""
        anchors.verticalCenter: parent.verticalCenter

        Text { text: "󰁹"; color: Colors.colGreen; font.pixelSize: Sizes.fontMd }
        Text {
            text: battProc.stdout.trim() + "%"
            color: Colors.colFg
            font.pixelSize: Sizes.fontSm
        }
    }

    // ─── Processes ─────────────────────────────────────────
    Process {
        id: cpuProc
        command: ["bash", "-c",
            "top -bn1 | grep 'Cpu(s)' | awk '{print int($2+$4)}'"]
        running: true
        // Refresh every 3 s
        Timer { interval: 3000; repeat: true; running: true; onTriggered: cpuProc.start() }
    }

    Process {
        id: ramProc
        command: ["bash", "-c",
            "free -h | awk '/^Mem:/{print $3\"/\"$2}'"]
        running: true
        Timer { interval: 5000; repeat: true; running: true; onTriggered: ramProc.start() }
    }

    Process {
        id: battProc
        command: ["bash", "-c",
            "cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo ''"]
        running: true
        Timer { interval: 30000; repeat: true; running: true; onTriggered: battProc.start() }
    }
}
