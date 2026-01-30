return {
	'hrsh7th/nvim-cmp',
	event = 'BufEnter',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'nvim-tree/nvim-web-devicons',
		'onsails/lspkind.nvim'
	},
	config = function()
		local cmp = require('cmp')
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
		  window = {
			completion = {
			  winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			  col_offset = -3,
			  side_padding = 0,
			},
		  },
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources(
				{ { name = 'nvim_lsp' } }
			),
			formatting = {
				fields = { "icon", "abbr", "kind" },
				format = function(entry, vim_item)
					local item = require("lspkind").cmp_format({ maxwidth = 50 })(entry, vim_item)
					item.icon = " " .. item.icon .. " "
					item.kind = "    (" .. item.kind .. ")"
					return item
				end,
			},
		})
	end
}
