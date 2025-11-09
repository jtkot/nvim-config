return {
		underline = true,
		virtual_lines = false,
		update_in_insert = false,
		severity_sort = true,
		signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = "●",
				[vim.diagnostic.severity.WARN] = "●",
				[vim.diagnostic.severity.HINT] = "●",
				[vim.diagnostic.severity.INFO] = "●",
			},
		},
	}
