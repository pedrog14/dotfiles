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
				group = 'GruvboxBlue',
				action = 'ene',
				key = 'n'
			}, {
				desc = '󰒲 Lazy',
				group = 'GruvboxAqua',
				action = 'Lazy',
				key = 'l'
			},
			{
				desc = '󰔱 Tree',
				group = 'GruvboxGreen',
				action = 'NvimTreeToggle',
				key = 'o'
			},
			{
				desc = '󰏓 Mason',
				group = 'GruvboxYellow',
				action = 'Mason',
				key = 'm'
			},
			{
				desc = '󰭎 Telescope',
				group = 'GruvboxOrange',
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
		footer = {
			[[]],
			[["I think we can put our differences behind us.]],
			[[For science. You monster." - GLaDOS]],
			[[]]
		}
	}
})

vim.api.nvim_command([[
	augroup ChangeHeaderColor
		autocmd colorscheme gruvbox :hi link DashboardHeader GruvboxGreen
	augroup END
]])
