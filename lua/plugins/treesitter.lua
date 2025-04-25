return {
	repo = 'nvim-treesitter/nvim-treesitter',
	branch = 'master',
	module_name = 'nvim-treesitter.configs',
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
