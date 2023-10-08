return {
	-- MASON --
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',

	-- NVIM TREESITTER --
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- NVIM LSPCONFIG --
	'neovim/nvim-lspconfig',

	-- NVIM CMP --
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'lukas-reineke/cmp-under-comparator',

	-- LUASNIP --
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',

	-- TELESCOPE --
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = { 'nvim-lua/plenary.nvim' } },
	-- Extensions --
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	-- LUALINE NVIM --
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', optional = true } },

	-- INDENT BLANKLINE --
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl' },

	-- COMMENT NVIM --
	{ 'numToStr/Comment.nvim', opts = {}, lazy = false },

	-- NVIM TREE --
	{ 'nvim-tree/nvim-tree.lua', version = '*', lazy = false, dependencies = 'nvim-tree/nvim-web-devicons' },

	-- COLORIZER --
	'NvChad/nvim-colorizer.lua',

	-- GRUVBOX NVIM --
	{ 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },

	-- DASHBOARD --
	{ 'nvimdev/dashboard-nvim', event = 'VimEnter', dependencies = 'nvim-tree/nvim-web-devicons' },

	-- SURROUND --
	{ 'kylechui/nvim-surround', version = '*', event = 'VeryLazy' },

	-- AUTOPAIRS --
	{ 'windwp/nvim-autopairs', event = 'InsertEnter' },

	-- TS-AUTOTAG --
	'windwp/nvim-ts-autotag',

	-- TROUBLE --
	{ 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } }
}
