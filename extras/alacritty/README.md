<h1 align="center">
    Takara for <a href="https://github.com/alacritty/alacritty">Alacritty</a>
</h1>

<div align="center">
    <h3>Takara Dark</h3><img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/1ab18ef4-5972-429f-8f83-b5328b785ec8" alt="Takara Dark" style="border-radius:1%" />
    <h3>Takara Light</h3><img src="https://github.com/nathanhlouie/takara.nvim/assets/53024905/8590c270-a6a0-418e-824a-0a99710cf887" alt="Takara Light" style="border-radius:1%" />
</div>

## Usage

1. Download the `.toml` or `.yml` file(s)

For example:
### .toml
```shell
wget -P <insert-destination-directory-here> \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/alacritty/toml/takara_<light/dark>.toml
```

### .yml
```shell
wget -P <insert-destination-directory-here> \
    https://raw.githubusercontent.com/nathanhlouie/takara.nvim/main/extras/alacritty/yaml/takara_<light/dark>.yml
```

2. Import the desired variant into your `alacritty.<toml/yml>` configuration file, see [Alacritty's README](https://github.com/alacritty/alacritty#configuration) for more information about configuration.
### .toml
```toml
import = [
    # ...
    "<insert-destination-directory-here>/takara_dark.toml"
    # "<insert-destination-directory-here>/takara_light.toml"
    # ...
]
```

### .yml
```yaml
import:
    # ...
    - <insert-destination-directory-here>/takara_dark.yml
    # - <insert-destination-directory-here>/takara_light.yml
    # ...
```

Make sure you have the following set in your `alacritty.<toml/yml>` configuration file to display the colours correctly:
```toml
[env]
TERM = "xterm-256color"
```
```yaml
env:
    TERM: xterm-256color
```

And, if there are issues while using Tmux, make sure that the following is in your `tmux.conf`:
```
set -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"
```
