local module = {}

function module.toml_to_json(toml)
	return vim.system({ 'tomlq', '.', '-' }, {stdin = toml, text = true}):wait().stdout
end

function module.parse_toml(toml)
	return vim.json.decode(module.toml_to_json(toml))
end

return module
