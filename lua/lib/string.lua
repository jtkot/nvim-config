local module = {}

function module.split(str, delim)
	return str:gmatch('[^' .. delim .. ']*')
end

return module
