return {
	{
		-- Select all
		modes = 'n',
		keys = '+',
		action = '<C-[>ggVG',
	},
	{
		-- LSP rename
		modes = 'n',
		keys = '<leader>r',
		action = vim.lsp.buf.rename,
	},
	{
		-- LSP hover
		modes = 'n',
		keys = '<leader>k',
		action = vim.lsp.buf.hover,
	},
	{
		-- LSP code action
		modes = 'n',
		keys = '<leader>a',
		action = vim.lsp.buf.code_action,
	},
	{
		-- LSP go to definition
		modes = 'n',
		keys = 'gd',
		action = vim.lsp.buf.definition,
	}
}
