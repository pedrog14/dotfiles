require('dashboard').setup({
	theme = 'hyper',
	config = {
		header = {
			[[]],
			[[   █                                      ]],
			[[  ███   ██                ██ █         ]],
			[[ █████ █████ █████  ██    █ █ ]],
			[[██ ███████  █  ████ ████████]],
			[[██   ███ ███  █  █ ███ ██ █ ██]],
			[[     █  ████ ████   █ ██     █]],
			[[]],
		},
		shortcut = {
			{
				desc = '󰈔 New File',
				group = 'GruvboxPurple',
				action = 'ene',
				key = 'n'
			}, {
				desc = '󰒲 Lazy',
				group = 'GruvboxBlue',
				action = 'Lazy',
				key = 'l'
			},
			{
				desc = '󰔱 Tree',
				group = 'GruvboxAqua',
				action = 'NvimTreeToggle',
				key = 'o'
			},
			{
				desc = '󰏓 Mason',
				group = 'GruvboxGreen',
				action = 'Mason',
				key = 'm'
			},
			{
				desc = '󰭎 Telescope',
				group = 'GruvboxYellow',
				action = 'Telescope',
				key = 't'
			},
			{
				desc = '󰿅 Exit Neovim',
				group = 'GruvboxRed',
				action = 'quit',
				key = 'q'
			}
		},
		packages = { enable = true },
		project = { enable = false },
		mru = { limit = 12 },
		footer = {
			[[]],
			[["I think we can put our differences behind us.]],
			[[For science. You monster." - GLaDOS]]
		}
	}
})

vim.api.nvim_command([[
	augroup ChangeHeaderColor
		autocmd colorscheme gruvbox :hi link DashboardHeader GruvboxOrange
	augroup END
]])
