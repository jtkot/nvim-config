local module = {
}

function module.runtime()
	return vim.fn.stdpath("data")
end

function module.parsers()
	return vim.fs.joinpath(module.runtime(), "parsers")
end

return module
