require('lualine').setup({
	options = {
		theme = 'gruvbox',
		section_separators = '',
		component_separators = ''
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff'},
		lualine_c = {'filename'},
		lualine_x = {'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
})

