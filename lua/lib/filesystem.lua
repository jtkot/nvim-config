local fs = vim.fs

local module = {}

function module.find_with_glob(glob)
	local start_point = glob:match('^[^*]*/')
	local pattern = vim.glob.to_lpeg(glob)
	return vim.iter(fs.find(function(name, path)
		local full_path = fs.joinpath(path, name)
		return pattern:match(full_path)
	end, {limit = math.huge, path = start_point}))
end

function module.self_path()
	local src = debug.getinfo(2, 'S').short_src
	return fs.basename(src), fs.dirname(src)
end

return module
