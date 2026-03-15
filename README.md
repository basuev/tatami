# tatami

minimal tiling window manager for macOS. emulates workspaces by moving windows offscreen - no private API, no SIP modifications. inspired by [dwm](https://dwm.suckless.org/) and [AeroSpace](https://github.com/nikitabobko/AeroSpace).

swift, zero dependencies.

## features

- **workspaces** - 9 virtual workspaces via offscreen window hiding
- **master-stack tiling** - new windows auto-tile in dwm-style layout
- **menubar indicator** - badge widgets show active workspace and occupied ones
- **crash safety** - all windows restore on exit

## keybindings

| key | action |
|-----|--------|
| `Option + 1-9` | switch workspace |
| `Option + Shift + 1-9` | move focused window to workspace |

## configuration

all settings live in `Sources/Config.swift` - edit and rebuild, like dwm's `config.h`.

```swift
enum Config {
    static let workspaceCount = 9
    static let masterRatio: CGFloat = 0.55
    static let modifier: CGEventFlags = .maskAlternate
}
```

## requirements

- macOS 14+, Apple Silicon
- accessibility permission
- input monitoring permission

## install

```bash
make install
open /Applications/tatami.app
```

grant permissions in system settings -> privacy & security when prompted, then relaunch.

## update

```bash
make install
```

replaces only the binary - permissions persist.

## uninstall

```bash
make uninstall
```

## comparison

|  | tatami | [AeroSpace](https://github.com/nikitabobko/AeroSpace) | [yabai](https://github.com/koekeishiya/yabai) | [Amethyst](https://github.com/ianyh/Amethyst) |
|--|--------|-----------|-------|----------|
| language | swift | swift | c / obj-c | swift |
| dependencies | 0 | 4 | 1 (skhd) | 1+ |
| private API | no | yes (1) | yes (many) | no |
| SIP disabled | no | no | optional | no |
| auto-tiling | yes | yes | yes | yes |
| virtual workspaces | yes | yes | yes | yes |
| config | compile-time | toml | cli | gui + yaml |
| layouts | master-stack | tree (i3) | bsp | 14+ |
| lines of code | ~500 | ~15k | ~20k | ~15k |

tatami is not trying to compete with these projects. it exists for those who want the absolute minimum: a single layout, a few keybindings, zero config files, zero dependencies, and code small enough to read in one sitting.

## license

MIT
