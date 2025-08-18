return {
	'folke/which-key.nvim',
	branch = 'main',
	event = 'VeryLazy',
	dependencies = {
	'nvim-tree/nvim-web-devicons',
	'echasnovski/mini.icons',
	},
	opts = {
		preset = 'helix',
		delay = 0,
		show_help = false,
		icons = {
			mappings = false
		}
	}
}
