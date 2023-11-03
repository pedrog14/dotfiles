return {
	-- MASON --
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',

	-- TREESITTER --
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- LSPCONFIG --
	'neovim/nvim-lspconfig',

	-- CMP --
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'lukas-reineke/cmp-under-comparator',

	-- LUASNIP --
	{ 'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets' } },
	'saadparwaiz1/cmp_luasnip',

	-- TELESCOPE --
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
	-- Extensions --
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	-- LUALINE --
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', optional = true } },

	-- INDENT BLANKLINE --
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl' },

	-- COMMENT --
	{ 'numToStr/Comment.nvim', lazy = false },

	-- TREE --
	{ 'nvim-tree/nvim-tree.lua', version = '*', lazy = false, dependencies = 'nvim-tree/nvim-web-devicons' },

	-- COLORIZER --
	'NvChad/nvim-colorizer.lua',

	-- GRUVBOX --
	{ 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },

	-- ALPHA --
	{ 'goolord/alpha-nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

	-- SURROUND --
	{ 'kylechui/nvim-surround', version = '*', event = 'VeryLazy' },

	-- AUTOPAIRS --
	{ 'windwp/nvim-autopairs', event = 'InsertEnter' },

	-- TS-AUTOTAG --
	'windwp/nvim-ts-autotag',

	-- TROUBLE --
	{ 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

	-- NOICE --
	{ 'folke/noice.nvim', event = 'VeryLazy', dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' } },
}
