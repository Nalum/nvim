-- Markdown
vim.g.markdown_fenced_languages = {'html', 'go', 'bash', 'json', 'javascript', 'python', 'yaml', 'hcl'}
vim.g.markdown_minlines = 100
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- General config
vim.opt.mouse = "" -- Ignore the mouse
vim.opt.clipboard:append({I = "unnamedplus"}) -- Enable copy and paste with the desktop clipboard
vim.opt.nu = true -- Show lines numbers
vim.opt.relativenumber = true -- Show relative line numbers to the current line
vim.opt.shell = "zsh" -- Use ZSH for shell commands
vim.opt.undofile = true -- Maintain undo history
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Maintain undo history
vim.opt.colorcolumn = "80,120" -- Highlight these columns
vim.opt.encoding = "utf8" -- Set default file encodings
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = false -- Highlight search results
vim.opt.wrap = false -- Don't wrap lines that extend past the end of the screen
vim.opt.wildmenu = true -- Display command line autocomplete as a menu
vim.opt.showcmd = true -- Show incomplete commands at the bottom
vim.opt.cmdheight = 2 -- Show more space for messages
vim.opt.showmode = false -- Don't show the mode as we have it elsewhere
vim.opt.hidden = true -- Better management of buffers
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.smartcase = true -- Unless we type an Upper case
vim.opt.smartindent = true
--vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.completeopt = "menuone,noselect"
vim.opt.termguicolors = true

-- Set tabs to 2 spaces in size
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.autoindent = true
vim.opt.autowrite = true
vim.opt.autoread = true

-- White space characters
vim.opt.list = true
vim.opt.lcs = 'nbsp:⎵,eol:$,tab:▸ ,trail:•,extends:»,precedes:«,conceal:*' -- Set characters for whitespaces

vim.opt.signcolumn = "yes" -- Always show the sign column so that the file doesn't jump around when there are signs
vim.opt.scrolloff = 6 -- Scroll files at an offset
vim.opt.sidescrolloff = 15 -- Scroll files at an offset

vim.api.nvim_exec([[
highlight clear signcolumn
hi NonText ctermfg=Red ctermbg=Blue
hi SpecialKey ctermfg=Magenta ctermbg=Cyan
]], false)
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Swap settings
vim.opt.swapfile = false -- Don't use swap files
vim.opt.updatetime = 300 -- write swap to disk

-- Backup files
vim.opt.backup = false -- Don't use backup files

-- tagbar
vim.api.nvim_exec([[
augroup tagbar_aug
	autocmd!
	autocmd VimEnter * nested :call tagbar#autoopen(1)
	autocmd FileType * nested :call tagbar#autoopen(0)
	autocmd BufEnter * nested :call tagbar#autoopen(0)
augroup END
]], false)

-- vim-go
vim.g.go_test_show_name = 1
vim.g.go_auto_type_info = 1
vim.g.go_fmt_command = "goimports"
--vim.g.go_list_type = "quickfix"
--vim.g.go_list_type = "locationlist"
vim.g.go_addtags_transform = "camelcase"
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_metalinter_autosave = 0

vim.g.mapleader = " "
