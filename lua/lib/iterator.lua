local module = {}

function module.values(tab)
	local i = 0
	local n = table.maxn(tab)
	return function ()
		i = i + 1
		if i <= n then return tab[i] end
	end
end

return module
