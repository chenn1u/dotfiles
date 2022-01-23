vim.g.nvim_tree_quit_on_open = 1

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

require('nvim-tree').setup({
	filters = {
		dotfiles = true,
		custom = {},
	},
	view = {
		width = 25,
	}
})
