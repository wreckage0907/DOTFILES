# DOTFILES
## DOT FILES FOR I3WM and NVIM

### Youtube Videos Watched
1. [How to Install i3](https://youtu.be/1TQCrj7_G0I)
2. [I3 Config](https://youtu.be/wXZgUudR41I)
3. [picom config](https://youtu.be/t6Klg7CvUxA)
4. [Nvim setup](https://www.youtube.com/watch?v=Mtgo-nP_r8Y&t=497s&pp=ygUGTlZDaGFk)

### Adding Copilot to NVChad
1. Go to this website: `https://github.com/github/copilot.vim`
2. Add this config to your `~/.config/nvim/lua/plugins/init.lua`:

```lua
{
 "github/copilot.vim",
 lazy = false,
 config = function() -- Mapping tab is already used by NvChad
   vim.g.copilot_no_tab_map = true;
   vim.g.copilot_assume_mapped = true;
   vim.g.copilot_tab_fallback = "";
   -- The mapping is set to another key, see custom/lua/mappings
   -- or run <leader>ch to see Copilot mapping section
 end
},
```
3. Add this for autocompletion to you `~/.config/nvim/lua/mappings.lua`
```lua
map('i', '<C-Tab>', 'copilot#Accept("\\<CR>")', {
          expr = true,
          replace_keycodes = false
        })
```