// config/Colors.qml — Centralized color palette
// Edit here or let pywal override via colors-wal.qml

pragma Singleton
import QtQuick

QtObject {
    // ─── Base ───────────────────────────────────────────────
    readonly property color colBg:      "#282c38"   // Background
    readonly property color colBgAlt:   "#1e2030"   // Darker bg (bars, inputs)
    readonly property color colSurface: "#363a4f"   // Card / widget surface
    readonly property color colBorder:  "#494d64"   // Borders

    // ─── Foreground ─────────────────────────────────────────
    readonly property color colFg:      "#cad3f5"   // Primary text
    readonly property color colFgMuted: "#8087a2"   // Subdued text

    // ─── Accent ─────────────────────────────────────────────
    readonly property color colAccent:  "#8aadf4"   // Primary accent (blue)
    readonly property color colBlue:    "#8aadf4"
    readonly property color colGreen:   "#a6da95"
    readonly property color colYellow:  "#eed49f"
    readonly property color colRed:     "#ed8796"
    readonly property color colError:   "#5b3344"   // Critical notif bg

    // ─── Opacity helpers ────────────────────────────────────
    function withAlpha(c, a) { return Qt.rgba(c.r, c.g, c.b, a) }
}
