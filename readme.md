# ugly.nvim

WIP.

Just like the name says, my taste can be weird so it might not look pretty to everyone.

## Installation
Install using your favourite nvim package manager.

## Usage
Simply add this to your config file.
```lua
vim.cmd("colorscheme ugly")
```

To overwrite default configurations, call the setup function before setting your colorscheme.
```lua
require("ugly").setup({
    -- default options that you can overwrite
    transparent: false,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
    },
})
```
