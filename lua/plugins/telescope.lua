return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	event = 'VeryLazy',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	opts = {
		defaults = {
			layout_strategy = 'vertical',
			layout_config = {
				vertical = { width = 0.5 }
			}
		}
	},
	config = function(opts)
		require 'telescope'.setup(opts)

		local telescope = require 'telescope.builtin'
		vim.keymap.set('n', '<leader>F', telescope.fd, { desc = 'Open file picker at current working directory' })
		vim.keymap.set('n', '<leader>b', telescope.buffers, { desc = 'Open buffer picker' })
		vim.keymap.set('n', '<leader>j', telescope.jumplist, { desc = 'Open jumplist picker' })
		vim.keymap.set('n', '<leader>s', telescope.lsp_document_symbols, { desc = 'Open symbol picker' })
		vim.keymap.set('n', '<leader>S', telescope.lsp_workspace_symbols, { desc = 'Open workspace symbol picker' })
		vim.keymap.set('n', '<leader>d', telescope.diagnostics, { desc = 'Open diagnostic picker' })
		vim.keymap.set('n', '<leader>g', telescope.git_status, { desc = 'Open changed file picker' })
		vim.keymap.set('n', '<leader>\'', telescope.resume, { desc = 'Open last picker' })
		vim.keymap.set('n', '<leader>?', telescope.commands, { desc = 'Open command palette' })
		-- vim.keymap.set('n', 'gr', telescope.lsp_references, { desc = 'Goto references' })
	end
}
