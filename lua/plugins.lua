-- All crazy amazing Nvim plugins

vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Manage yourself, packer!
	use 'wbthomason/packer.nvim'

	-- Dear gruvbox
	use 'ellisonleao/gruvbox.nvim'

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		}
	}

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	-- Match those brackets
	use 'windwp/nvim-autopairs'

  -- Let's handle whitespace
  use "lukas-reineke/indent-blankline.nvim"

  -- Git Blame
  use 'f-person/git-blame.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'

  -- Mason
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  }

  -- Co-Pilot
  use 'github/copilot.vim'

  -- Comment
  use {
    'numToStr/Comment.nvim'
  }

  -- Git Stuff
  use {
    'tpope/vim-fugitive'
  }

  -- Harpoon
  use 'ThePrimeagen/harpoon'
end)
