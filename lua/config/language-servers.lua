return {
	["efm-langserver"] = {
		cmd = { 'efm-langserver' },
		filetypes = { 'meson', 'javascript', 'typescript', 'hexpat' }
	},
	["pyrefly"] = {
		cmd = { 'pyrefly', 'lsp' },
		filetypes = { 'python' },
		root_markers = { "pyrefly.toml", "pyproject.toml", ".git" }
	},
	["nixd"] = {
		cmd = { 'nixd' },
		filetypes = { 'nix' },
		settings = {
			formatting = {
				command = { "nixfmt" }
			}
		}
	},
	["pylsp"] = {
		cmd = { 'pylsp' },
		filetypes = { 'python' },
		settings = {
			pylsp = {
				plugins = {
					pylsp_mypy = {
						enabled = false
					}
				}
			}
		}
	}
}
