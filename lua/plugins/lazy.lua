local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		'iamcco/markdown-preview.nvim',
		build = 'cd app && yarn install',
		ft = {'markdown'},
	},

	{'kazhala/close-buffers.nvim'},
	{
		'terrortylor/nvim-comment',
		keys = {"v"},
		event = {'BufReadPre', 'BufNewFile'},
		config = function ()
			require('plugins.comment')
		end
	},

    {
        'nvim-treesitter/nvim-treesitter',
		event = {"BufRead"},
		config = function()
			require('lsp.treesitter')
		end,
		build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },

	{
		'nvim-tree/nvim-tree.lua',
		ft = "alpha",
		cmd = { "NvimTreeToggle", "NvimTreeFocus"},
		config = function()
			require('plugins.nvim_tree')
		end
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			require('lsp.lsp_config')
		end
	},

	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require('plugins.lualine')
		end
	},

	{
		'lewis6991/gitsigns.nvim',
		event = {'BufReadPre', 'BufWritePre'},
		config = function()
			require('plugins.gitsigns')
		end
	},
	{'sheerun/vim-polyglot'},
	{
		'akinsho/bufferline.nvim',
		version = 'v3.*',
		event = {'BufReadPre'},
		config = function()
			require('plugins.buffer')
		end
	},
	{
		'akinsho/toggleterm.nvim',
		version = '*',
		event = {"UIEnter"},
		config = function()
			require('plugins.toggleterm')
		end
	},
	{
		'nvim-telescope/telescope.nvim',
		version = '0.1.0',
		config = function()
			require('plugins.telescope')
		end
	},

	{'nvim-tree/nvim-web-devicons'},
	{
		'goolord/alpha-nvim',
		config = function()
			require('plugins.alpha')
		end
	},

	{'nvim-lua/plenary.nvim'},
	{
		'lukas-reineke/indent-blankline.nvim',
		event = {'BufReadPre', 'BufNewFile'},
		config = function()
			require('plugins.indent_line')
		end
	},

	{'ryanoasis/vim-devicons'},

	{'honza/vim-snippets'},
	{
		'mg979/vim-visual-multi',
		event = {'BufReadPre', 'BufNewFile'},
		config = function ()
			require('plugins.vim_multi')
		end
	},

	{
		'norcalli/nvim-colorizer.lua',
		config = function ()
			require('plugins.colorizer')
		end
	},
	{
		'folke/which-key.nvim',
		keys = "<leader>",
		dependencies = {"toggleterm.nvim"},
		config = function()
			require('plugins.which_key')
		end
	},
	{
	'hrsh7th/nvim-cmp',
	dependencies =  {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'windwp/nvim-autopairs',

		'SirVer/ultisnips',
		'quangnguyen30192/cmp-nvim-ultisnips',
		'rafamadriz/friendly-snippets',
		},
	config = function ()
		require('lsp.cmp')
	end
	},
	{'catppuccin/nvim', name = 'catppuccin', build = ":colorscheme catppuccin-mocha"},
	'projekt0n/github-nvim-theme',
	'navarasu/onedark.nvim',
	'tiagovla/tokyodark.nvim',
	'folke/tokyonight.nvim',
	'ellisonleao/gruvbox.nvim',
	'luisiacc/gruvbox-baby',
	'rafamadriz/neon',
	'shaunsingh/nord.nvim',
    'rmehri01/onenord.nvim',
})
