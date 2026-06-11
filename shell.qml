// shell.qml — QuickShell entry point
// Loads all top-level modules: Bar, OSD, Notifications

import Quickshell
import "modules/Bar"
import "modules/OSD"
import "modules/Notifications"

ShellRoot {
    // ─── Bar ───────────────────────────────────────────────
    Bar {}

    // ─── On-Screen Display ─────────────────────────────────
    OSD {}

    // ─── Notification Center ───────────────────────────────
    NotificationCenter {}
}
