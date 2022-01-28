local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]])

require('packer').init {
	display = {
	open_fn = function()
		return require("packer.util").float { border = "rounded" }
	end,
	},
}

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-lua/popup.nvim'

	-- appearance
	use 'morhetz/gruvbox'
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
	use 'lukas-reineke/indent-blankline.nvim'

	-- useful tools
	use 'tpope/vim-surround'
	use 'itchyny/vim-cursorword'
	use 'easymotion/vim-easymotion'
	use 'terrortylor/nvim-comment'
	use 'akinsho/toggleterm.nvim'
	use 'windwp/nvim-autopairs'

	-- nvim-tree
	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'

	-- telescope
	use	'nvim-telescope/telescope.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- cmp
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'

	use 'onsails/lspkind-nvim'

	-- snippet
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'p00f/nvim-ts-rainbow'

	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end

end)
