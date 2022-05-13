A kwin script to mimic macOS's Rectangle tiling options in Plasma.

It allows manual tiling with the following shortcuts (configurable in settings):

- Quarter: Top Left: `Ctrl+Alt+U`
- Quarter: Top Right: `Ctrl+Alt+I`
- Quarter: Bottom Left: `Ctrl+Alt+J`
- Quarter: Bottom Right: `Ctrl+Alt+K`
- Fourths: First: `Ctrl+Alt+V`
- Fourths: Second: `Ctrl+Alt+B`
- Fourths: Third: `Ctrl+Alt+N`
- Fourths: Fourth: `Ctrl+Alt+M`
- Thirds: First: `Ctrl+Alt+D`
- Thirds: Second: `Ctrl+Alt+F`
- Thirds: Third: `Ctrl+Alt+G`
- Two Thirds: First: `Ctrl+Alt+E`
- Two Thirds: Second: `Ctrl+Alt+T`
- Sixth: Top Left: `Ctrl+Alt+Shift+U`
- Sixth: Top Center: `Ctrl+Alt+Shift+I`
- Sixth: Top Right: `Ctrl+Alt+Shift+O`
- Sixth: Bottom Left: `Ctrl+Alt+Shift+J`
- Sixth: Bottom Center: `Ctrl+Alt+Shift+K`
- Sixth: Bottom Right: `Ctrl+Alt+Shift+L`
- Halves: Left: `Ctrl+Alt+Left`
- Halves: Center: `Ctrl+Alt+Shift+C`
- Halves: Right: `Ctrl+Alt+Right`
- Halves: Top: `Ctrl+Alt+Up`
- Halves: Bottom: `Ctrl+Alt+Down`
- Move: Left: `Ctrl+Alt+Meta+Left`
- Move: Right: `Ctrl+Alt+Meta+Right`
- Move: Top: `Ctrl+Alt+Meta+Up`
- Move: Bottom: `Ctrl+Alt+Meta+Down`
- Maximize Height: `Ctrl+Alt+Shift+Meta+Up`
- Maximize Width: `Ctrl+Alt+Shift+Meta+Right`
- Center: `Ctrl+Alt+C`
- Maximized: `Ctrl+Alt+Return`
- Almost Maximized: `Ctrl+Alt+Shift+Return`
- Centered Quarter: `Ctrl+Alt+Meta+C`

# Installation

Run `./install.sh`

Activate the plugin from "System Settings" -> "Window management" -> "KWin Scripts".

Check if there were no shortcut conflict by going to "System Settings" ->
"Shortcuts" -> "Global Keyboard Shortcuts" -> "KWin" and searching for
"Rectangle".

Installing with this script is preferred, as it will create the necessary
symlink. If you install with the kwinscript file, you may not see the settings
button to change inner and outer padding.

# Uninstallation

Run `./uninstall.sh`
