local module = {}

function module.run(file)
	return pcall(dofile, file)
end

return module
