local Plug = vim.fn['plug#']
vim.opt.number = true

vim.call('plug#begin')

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'vivien/vim-linux-coding-style'
Plug 'kdheepak/lazygit.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do']= 'make' })
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {['branch']='0.1.x'})
Plug('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/colorizer'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'
vim.call('plug#end')

vim.opt.background= 'dark'

--SYNTASTIC

vim.g.syntastic_always_populate_loc_list = 1
vim.g.syntastic_auto_loc_list = 1
vim.g.syntastic_check_on_open = 1
vim.g.syntastic_check_on_wq = 0
vim.g.syntastic_c_checkers = {'syntastic-checkers-c'}
vim.g.syntastic_h_checkers = {'syntastic-checkers-c'}
vim.g.syntastic_cpp_checkers = {'syntastic-checkers-cpp'}
vim.g.colorizer_auto_filetype='css,html,xml,sh,h,c'
vim.opt.syntax = 'on'
vim.cmd([[
	colorscheme onedark
	]])

-- NeoTree

vim.cmd[[autocmd VimEnter * Neotree]]


-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- LazyGit
vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
vim.g.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'} -- customize lazygit popup window border characters
vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

vim.g.lazygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
vim.g.lazygit_config_file_path = '' -- custom config file path
-- OR
vim.g.lazygit_config_file_path = {} -- table of custom config file paths

vim.g.lazygit_on_exit_callback = nil -- optional function callback when exiting lazygit (useful for example to refresh some UI elements after lazy git has made some changes)
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', {noremap = true})
