<h1 align="center">
    Takara
</h1>

<h4 align="center">宝 - A (Neo)vim colorscheme inspired by the colours of the anime K-On!</h4>

<p align="center">
<a href="https://github.com/nathanhlouie/takara.nvim/stargazers"><img src="https://img.shields.io/github/stars/nathanhlouie/takara.nvim?style=for-the-badge&labelColor=120f0c&color=aa74e6" alt="stars"></a>
<a href="https://github.com/nathanhlouie/takara.nvim/issues"><img src="https://img.shields.io/github/issues/nathanhlouie/takara.nvim?style=for-the-badge&labelColor=120f0c&color=ea7839" alt="issues"></a>
<a href="https://www.w3.org/WAI/standards-guidelines/wcag/"><img src="https://img.shields.io/badge/AA-a?style=for-the-badge&label=WCAG%202.1&labelColor=120f0c&color=53a67f" alt="wcag"></a>
</p>

## Features
- Supports both Vim and Neovim
- Integrations for LSP, Treesitter, and many other plugins

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "nathanhlouie/takara.nvim", priority = 1000 }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use { "nathanhlouie/takara.nvim" }
```

[vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'nathanhlouie/takara.nvim',
```

## Usage

```vim
colorscheme takara " takara_dark, takara_light
```

```lua
vim.cmd.colorscheme "takara"
```

## Integrations

### lightline
```vim
let g:lightline = {'colorscheme': 'takara'}
```

### airline
```vim
let g:airline_theme = 'takara'
```

## Accessibility
The colours maintain a `4.5:1` contrast ratio, complying with [WCAG 2.1 | Level AA](https://www.w3.org/TR/WCAG21/#contrast-minimum) and with Level AAA for larger texts.

## Extras
- [WezTerm](https://github.com/nathanhlouie/takara.nvim/blob/main/extras/wezterm)
