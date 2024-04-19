<h2 align="center">
    Takara for <a href="https://github.com/wez/wezterm">WezTerm</a>
</h2>

<div align="center">
    <h3>Takara Light</h3>
    <img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/844988cb-1cac-4e27-b373-c1b3abbd3303" alt="Takara Light" style="border-radius:1%" />
    <h3>Takara Dark</h3>
    <img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/57b2021c-3c7c-4d10-8ddd-b132e30ccca4" alt="Takara Dark" style="border-radius:1%" />
</div>

### Installation

For X11/Wayland:
```shell
wget https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_dark.toml -P $HOME/.config/wezterm/colors/
wget https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_light.toml -P $HOME/.config/wezterm/colors/
```

For all other systems:
```shell
wget https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_dark.toml -P $HOME/.config/wezterm/colors/
wget https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/wezterm/takara_light.toml -P $HOME/.config/wezterm/colors/
```

### Usage

Set `color_scheme` to your preferred theme in your `wezterm.lua`.

```lua
return {
    -- ... other config
    color_scheme = "Takara Light", -- or "Takara Dark"
    -- ...
}
```
