<h1 align="center">
    Takara for <a href="https://github.com/wez/wezterm">WezTerm</a>
</h1>

<div align="center">
    <h3>Takara Dark</h3><img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/57b2021c-3c7c-4d10-8ddd-b132e30ccca4" alt="Takara Dark" style="border-radius:1%" />
    <h3>Takara Light</h3><img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/844988cb-1cac-4e27-b373-c1b3abbd3303" alt="Takara Light" style="border-radius:1%" />
</div>

## Installation

For X11/Wayland:
```shell
wget -P $XDG_CONFIG_HOME/wezterm/colors/ \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_dark.toml
wget -P $XDG_CONFIG_HOME/wezterm/colors/ \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_light.toml 
```

For all other systems:
```shell
wget -P $HOME/.config/wezterm/colors/ \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_dark.toml
wget -P $HOME/.config/wezterm/colors/ \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_light.toml 
```

## Usage

Set `color_scheme` to your preferred theme in your `wezterm.lua`.

```lua
return {
    -- ... other config
    color_scheme = "Takara Dark", -- or "Takara Light"
    -- ...
}
```

An example of how to sync your WezTerm theme with your OS theme:

```lua
local wezterm = require("wezterm")

-- ... other config

return {
    -- ...
    config.color_scheme = wezterm.gui.get_appearance():find "Dark" and "Takara Dark" or "Takara Dark"
    -- ...
}
```
