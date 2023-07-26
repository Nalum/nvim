local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
end

-- Setup auto compile if this file changes
-- Run PackerSync
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerCompile
	augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Self manage Packer
	use 'wbthomason/packer.nvim'

	-- Themes
	use {
		'overcache/NeoSolarized',
		config = function()
			vim.cmd('colorscheme NeoSolarized')
		end
	}

	-- Language plugins
	use 'fatih/vim-go'
	use 'uarun/vim-protobuf'
	use 'hashivim/vim-terraform'
	use 'habamax/vim-godot'
	use 'tpope/vim-markdown'
	use 'jjo/vim-cue'
	use 'rust-lang/rust.vim'

	-- LSP Related
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use({
		'petertriho/cmp-git',
		requires = "nvim-lua/plenary.nvim"
	})

	-- UI Plugins
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	}
	use 'majutsushi/tagbar'
	use 'airblade/vim-gitgutter'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/nvim-treesitter-context'
	use 'nvim-treesitter/playground'
	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}
	use 'theprimeagen/harpoon'
	use 'tpope/vim-fugitive'
	use {
		"folke/todo-comments.nvim",
		require = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {}
		end
	}

	-- Git plugins
	use 'nvim-tree/nvim-tree.lua'
	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}

	-- General
	use 'tpope/vim-surround'
	use 'mbbill/undotree'
	use 'github/copilot.vim'

	if packer_bootstrap then
		require('packer').sync()
	end
end)

