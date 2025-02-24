local module = {}

function module.stringify(input)
	local string = ''
	local type = type(input)
	if type == 'table' then
		string = string .. '{'
		local not_first = false
		for k, v in pairs(input) do
			if not_first then
				string = string .. ', '
			end
			string = string .. '"' .. k .. '": ' .. module.stringify(v)
			not_first = true
		end
		string = string .. '}'
	elseif type == 'string' then
		string = string .. input
	elseif type == 'function' then
		string = string .. '(' .. type .. ')'
	else
		string = string .. tostring(input)
	end
	return string
end

function module.print(obj)
	print(module.stringify(obj))
end

return module
