# chillthm.nvim

![image](https://github.com/hiszd/chillthm.nvim/assets/9100034/cda63b36-5ea4-436f-8bd4-2afa6e72f1f4)

## Installation

```vim
" With Vim-Plug
Plug 'hiszd/chillthm.nvim'

" Enable the color scheme
colorscheme chillthm
```

```lua
-- With packer
use 'hiszd/chillthm.nvim'
```

```lua
--  in your lua config
require('chillthm')
```

## Switching between theme versions

```lua
function ThemeToggle()
    if vim.g.background == 'dark' then
        vim.g.background = 'light'
    else
        vim.g.background = 'dark'
    end
    require('chillthm').reload()
end

--- ... map this function to any keybinding
```
