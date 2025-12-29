return {
	["efm-langserver"] = {
		cmd = { 'efm-langserver' },
		filetypes = { 'meson', 'javascript', 'typescript', 'hexpat' }
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
}
