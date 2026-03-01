return {
	'saghen/blink.cmp',
	event = 'BufEnter',
	version = '*',
	enabled = false,

	dependencies = {
		'rafamadriz/friendly-snippets',
		'nvim-tree/nvim-web-devicons',
	},

	opts = {
		keymap = {
			preset = 'default',
			['<CR>'] = { 'accept', 'fallback' },
			['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = 'mono'
		},

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		completion = {
			menu = {
				draw = {
					columns = { { "kind_icon", gap = 1 }, { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
			},
			ghost_text = {
				enabled = true,
			},
		},

	},
}
