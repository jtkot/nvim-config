local fs = vim.fs
local iterator = require("lib.iterator")

local module = {}

function module.path(glob)
	local start = glob:match('^[^*]*/')
	local pattern = vim.glob.to_lpeg(glob)
	return iterator.values(fs.find(function(name, path)
		local full_path = fs.joinpath(path, name)
		return pattern:match(full_path)
	end, {limit = math.huge, path = start}))
end

function module.self_path()
	local src = debug.getinfo(2).short_src
	return fs.basename(src), fs.dirname(src)
end

return module
