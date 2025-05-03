local paths = require('user-paths')
local languages = require('languages')
local git = require('lib.git')
-- local dprint = require('lib.debug').print

local module = {}

function module.get_parser(name)
	local language = languages[name]
	local path = vim.fs.joinpath(paths.parsers(), 'sources', name)
	git.clone(language.source.git, path, function(_)
		git.checkout(path, language.source.rev, function(_)
			local output_path = vim.fs.joinpath(paths.parsers(), name .. '.so')
			vim.system({'tree-sitter', 'build', '--output', output_path, path}, nil, function(_)
				-- dprint(obj)
				print('Successfully installed tree-sitter parser for', name)
			end)
		end)
	end)
end

return module
