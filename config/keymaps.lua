local telescope = require('telescope.builtin')

return {
	{
		keys = 'gd',
		action = vim.lsp.buf.definition,
		desc = 'Goto definition'
	},
	{
		keys = 'gr',
		action = telescope.lsp_references,
		desc = 'Goto references'
	},
	-- {
	-- 	keys = '<leader>f',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open file picker',
	-- },
	{
		keys = '<leader>F',
		action = telescope.fd,
		desc = 'Open file picker at current working directory',
	},
	-- {
	-- 	keys = '<leader>e',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open file explorer in workspace root',
	-- },
	-- {
	-- 	keys = '<leader>E',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open file explorer at current buffer\'s directory',
	-- },
	{
		keys = '<leader>b',
		action = telescope.buffers,
		desc = 'Open buffer picker',
	},
	{
		keys = '<leader>j',
		action = telescope.jumplist,
		desc = 'Open jumplist picker',
	},
	{
		keys = '<leader>s',
		action = telescope.lsp_document_symbols,
		desc = 'Open symbol picker',
	},
	{
		keys = '<leader>S',
		action = telescope.lsp_workspace_symbols,
		desc = 'Open workspace symbol picker',
	},
	{
		keys = '<leader>d',
		action = telescope.diagnostics,
		desc = 'Open diagnostic picker',
	},
	-- {
	-- 	keys = '<leader>D',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open workspace diagnostic picker',
	-- },
	{
		keys = '<leader>g',
		action = telescope.git_status,
		desc = 'Open changed file picker',
	},
	{
		keys = '<leader>a',
		action = vim.lsp.buf.code_action,
		desc = 'Perform code action',
	},
	{
		keys = '<leader>\'',
		action = telescope.resume,
		desc = 'Open last picker',
	},
	-- {
	-- 	keys = '<leader>G',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Debug (experimental)',
	-- },
	-- {
	-- 	keys = '<leader>w',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Window',
	-- },
	{
		modes = {'v'},
		keys = '<leader>y',
		action = '"+y',
		desc = 'Yank selections to clipboard',
	},
	-- {
	-- 	keys = '<leader>Y',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Yank main selection to clipboard',
	-- },
	{
		keys = '<leader>p',
		action = '"+p',
		desc = 'Paste clipboard after selections',
	},
	{
		keys = '<leader>P',
		action = '"+P',
		desc = 'Paste clipboard before selections',
	},
	{
		modes = {'v'},
		-- keys = '<leader>R',
		keys = '<leader>p',
		action = '"+p',
		desc = 'Replace selections by clipboard content',
	},
	-- {
	-- 	keys = '<leader>/',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Global search in workspace folder',
	-- },
	{
		keys = '<leader>k',
		action = vim.lsp.buf.hover,
		desc = 'Show docs for item under cursor',
	},
	{
		keys = '<leader>r',
		action = vim.lsp.buf.rename,
		desc = 'Rename symbol',
	},
	-- {
	-- 	keys = '<leader>h',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Select symbol references',
	-- },
	-- {
	-- 	keys = '<leader>c',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Comment/uncomment selections',
	-- },
	-- {
	-- 	keys = '<leader>C',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Block comment/uncomment selections',
	-- },
	-- {
	-- 	keys = '<leader><A-c>',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Line comment/uncomment selections',
	-- },
	{
		keys = '<leader>?',
		action = telescope.commands,
		desc = 'Open command palette',
	}
}
