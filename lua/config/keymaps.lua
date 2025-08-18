return {
	{
		keys = '<leader>a',
		action = vim.lsp.buf.code_action,
		desc = 'Perform code action',
	},
	{
		modes = { 'v' },
		keys = '<leader>y',
		action = '"+y',
		desc = 'Yank selections to clipboard',
	},
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
		modes = { 'v' },
		-- keys = '<leader>R',
		keys = '<leader>p',
		action = '"+p',
		desc = 'Replace selections by clipboard content',
	},
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
	-- 	keys = 'gd',
	-- 	action = vim.lsp.buf.definition,
	-- 	desc = 'Goto definition'
	-- },
	-- ,
	-- {
	-- 	keys = '<leader>f',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open file picker',
	-- },
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
	-- {
	-- 	keys = '<leader>D',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Open workspace diagnostic picker',
	-- },
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
	-- {
	-- 	keys = '<leader>Y',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Yank main selection to clipboard',
	-- },
	-- {
	-- 	keys = '<leader>/',
	-- 	action = function() print('todo!') end,
	-- 	desc = 'Global search in workspace folder',
	-- },
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
}
