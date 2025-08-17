return {
	repo = 'nvim-treesitter/nvim-treesitter',
	branch = 'master',
	module_name = 'nvim-treesitter.configs',
	hooks = {
		pre_load = function()
			local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
			parser_config.hexpat = {
				install_info = {
					url = "https://github.com/NathanSnail/tree-sitter-hexpat.git",
					files = { "src/parser.c" },
					generate_requires_npm = false,
					requires_generate_from_grammar = true,
				}
			}
		end
	},
	config = {
		ensure_installed = 'all',
		auto_install = true,
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
	}
}
