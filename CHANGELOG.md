# Changelog

All notable changes to this project will be documented here.

Format: [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)  
Versioning: [Semantic Versioning](https://semver.org/)

---

## [Unreleased]

### Planned

- ControlCenter (WiFi, Bluetooth, audio, brightness sliders)
- MediaControl widget (MPRIS — Spotify / mpv)
- pywal dynamic color integration
- Custom shaders for blur/glow effects

---

## [0.1.0] — 2026-06-10

### Added

- Initial repository structure
- `shell.qml` — entry point (Bar, OSD, Notifications)
- `modules/Bar` — status bar with Workspaces, Clock, SystemStats
- `modules/OSD` — volume & brightness on-screen display
- `modules/Notifications` — DBus notification toasts
- `config/Colors.qml` — centralized color palette (Catppuccin Macchiato defaults)
- `config/Sizes.qml` — dimensions, spacing, animation durations
- `scripts/setup.sh` — automated install for Arch & Debian
- `scripts/reload.sh` — IPC-first QuickShell reload
- `scripts/wal-gen.sh` — pywal color generation helper
- `scripts/backup.sh` — config backup utility
- `hyprland-layer-config.conf` — layer rules & blur config
- GitHub Actions CI (ShellCheck, markdownlint, qmllint)
- Bilingual README (EN/FR)
