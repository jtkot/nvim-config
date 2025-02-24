return {
	repo = 'neovim/nvim-lspconfig',
	call_setup = false,
	hooks = {
		post_load = function (lspconfig)
			lspconfig.lua_ls.setup({})
		end,
	}
}
