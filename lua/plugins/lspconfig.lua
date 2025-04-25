return {
	repo = 'neovim/nvim-lspconfig',
	call_setup = false,
	hooks = {
		post_load = function (lspconfig)
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.ts_ls.setup({})
		end,
	}
}
