local curl = require('lib.curl')
local yq = require('lib.yq')
local module = require('lib.module')
local _module = {}

_module.install_path = vim.fs.joinpath(vim.fn.stdpath('data'), 'lsps.lua')

function _module.update_definitions()
	local languages_url =
	'https://raw.githubusercontent.com/helix-editor/helix/050e1d9b4797c9ec858bb977cb550f2506a4204b/languages.toml'
	local languages_toml = curl.fetch(languages_url)
	local parsed = yq.parse_toml(languages_toml)

	local configs = {}

	for server_name, server_config in pairs(parsed['language-server']) do
		configs[server_name] = {
			cmd = { server_config.command, unpack(server_config.args or {}) },
			settings = server_config.config,
			filetypes = {},
		}
	end

	for _, language in ipairs(parsed['language']) do
		local servers = language['language-servers'] or {}
		for server in vim.iter(servers) do
			local server_name = server.name or server
			LanguageName = nil
			for ft in vim.iter(language['file-types']) do
				if type(ft) == 'string' then
					LanguageName, _ = vim.filetype.match({ filename = 'test.' .. ft })
					if LanguageName then
						table.insert(configs[server_name].filetypes, language.name)
						break
					end
				end
			end
			if language.roots then
				configs[server_name].root_markers = { unpack(language.roots), unpack(configs[server_name].root_markers or
					{}) }
			end
		end
	end
	local output_file = io.open(_module.install_path, "w")
	assert(output_file, "Couldn't open the output file")
	output_file:write('-- Generated with the :LspUpdate command. DO NOT MODIFY MANUALLY!\nreturn ' .. vim.inspect(configs))
	output_file:close()
end

function _module.load_lsp(name, config)
	vim.lsp.config(name, config)
	if vim.fn.executable(config.cmd[1]) == 1 then
		vim.lsp.enable(name)
	end
end

function _module.load_lsps()
	if not vim.uv.fs_stat(_module.install_path) then
		_module.update_definitions()
	end
	local _, lsps = module.run(_module.install_path)
	for name, config in pairs(lsps) do
		_module.load_lsp(name, config)
	end
end

function _module.setup()
	vim.api.nvim_create_user_command('LspUpdate', _module.update_definitions, {})
	_module.load_lsps()
end

return _module
