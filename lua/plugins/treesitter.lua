return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	opts = {
		ensure_installed = 'all',
		sync_install = false,
		auto_install = false,
		ignore_install = {"ipkg"},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false
		},
		indent = {
			enable = true
		},
		incremental_selection = {
			enable = true
		}
	},
	config = function(_, opts)
		local parsers = require'nvim-treesitter.parsers'.get_parser_configs()
		parsers.hexpat = {
			install_info = {
				url = 'https://github.com/jtkot/tree-sitter-hexpat.git',
				branch = 'main',
				files = { 'src/parser.c' },
				generate_requires_npm = false,
				requires_generate_from_grammar = true,
			}
		}
		require'nvim-treesitter.configs'.setup(opts)
	end
}
