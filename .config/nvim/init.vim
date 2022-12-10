set number
let g:tex_flavor = 'latex'
set termguicolors
set conceallevel=2
call plug#begin("~/.vim/plugged")
Plug 'SirVer/ultisnips' " More Snippets 
Plug 'honza/vim-snippets' " Functionality to add snippets  
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' } " Embark theme 
Plug 'dracula/vim' " dracula theme 
Plug 'feline-nvim/feline.nvim' " Adds feline status bar 
Plug 'lewis6991/gitsigns.nvim' " Adds git-signes to status bar as well as VIM 
Plug 'nvim-lualine/lualine.nvim' " Adds lua-based status bar 
Plug 'kyazdani42/nvim-web-devicons' " Devicons for status bar theme 
Plug 'rebelot/kanagawa.nvim' " Kanagawa theme 
Plug 'lervag/vimtex' " Latex compiling support 
Plug 'Rigellute/shades-of-purple.vim' " Shades-of-purple theme 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " VSCode-esque code completion 
Plug 'jnurmine/Zenburn' " Zenburn theme 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Golang compiling functionality
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Adds multi-supported syntax-highlighting 
Plug 'ellisonleao/gruvbox.nvim' " Gruvbox theme 
Plug 'ayu-theme/ayu-vim' " Ayu theme 
Plug 'sainnhe/everforest' " Everforest theme 
Plug 'jsit/disco.vim' " Adds GUI-Compatible VIM colors 
Plug 'cocopon/iceberg.vim' " Iceberg theme 
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-pencil' " Adds prose-esque text wrapping 
Plug 'voldikss/vim-floaterm' " Adds floating terminal function
call plug#end()

lua << END 
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
-- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
require'nvim-web-devicons'.get_icons()
END 

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'horizon',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

if (has("termguicolors"))
	set termguicolors
endif
syntax enable
let ayucolor="light"
colorscheme iceberg 




" Emoji shortcuts  
ab :white_check_mark: ✅ 
ab :crossed_out_circle: 🚫
ab :warning: ⚠️
ab :bulb: 💡
ab :pushpin: 📌
ab :bomb: 💣
ab :pill: 💊
ab :construction: 🚧
ab :pencil: 📝
ab :point_right: 👉 
ab :thumb: 👍 
ab :book: 📖 
ab :link: 🔗 
ab :wrench: 🔧 
ab :info: 🛈
ab :telephone: 📞
ab :email: 📧
ab :computer: 💻
ab :sandclock: ⏳ 
ab :stopwatch: ⏱ 
ab :arrow_right: ➡️
ab :arrow_left: ⬅️
ab :arrow_up: ⬆️
ab :arrow_down: ⬇️
ab :arrow_sides: ↔️
ab :arrow_updown: ↕️
ab :arrow_upleft: ↖️
ab :arrow_upright: ↗️
ab :arrow_downleft: ↘️
ab :arrow_downright: ↙️
ab :arrow_returnup: ⤴️
ab :arrow_returndown: ⤵️
ab :arrow_returnright: ↪️
ab :arrow_returnleft: ↩️
ab :section_separator: ==========
