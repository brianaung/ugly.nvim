# ugly.nvim

Inspired by this [palette](https://lospec.com/palette-list/lost-century).

WIP. There maybe occasional changes to the highlights.

> Note: This is not a colorscheme for you if you are looking for something very accessible and feature rich. This **suboptimal** colorscheme is what works for me through trial and errors. If that works for you too, great! Otherwise you may want to look elsewhere for many other **actually good** colorschemes.

## Installation
Install using your favourite nvim package manager.

For example, using [lazy](https://github.com/folke/lazy.nvim)
```
{
  "brianaung/ugly.nvim",
}
```

## Usage
Simply add this line to your config.
```lua
vim.cmd("colorscheme ugly")
```

To override default configurations, call the setup function before setting your colorscheme.
```lua
require("ugly").setup({
    -- defaults
    variant = "dark", -- or "light"
    transparent = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    },
})
```

## Screenshots
Light Variant
![Light Theme](https://github.com/brianaung/ugly.nvim/blob/main/screenshots/ugly-light.png?raw=true)

Dark Variant
![Dark Theme](https://github.com/brianaung/ugly.nvim/blob/main/screenshots/ugly-dark.png?raw=true)

## Acknowledgements
- [Tokyonight](https://github.com/folke/tokyonight.nvim)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
- <https://github.com/neovim/neovim/pull/26334>
- [Lost Century Palette](https://lospec.com/palette-list/lost-century)
