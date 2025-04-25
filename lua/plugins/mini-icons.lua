return {
	managed = false,
	module_name = 'mini.icons',
	hooks = {
		post_load = function (icons)
			icons.tweak_lsp_kind()
		end
	}
}
