require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"python",
		"lua",
	},
	syrc_install = false,
	hirhlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
		max_file_lines = nil,
	},
}
