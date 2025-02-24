local filesystem = require('lib.filesystem')
local lib_module = require('lib.module')

local module = {
}

function module.plug(plugin)
	local name, plugin_path
	local MiniDeps = _G.MiniDeps
	if (MiniDeps == nil) then
		error('MiniDeps wasn\'t initialized')
	end
	local path_package = MiniDeps.config.path.package

	if (plugin.managed == nil or plugin.managed) then
		if (plugin.repo == nil) then
				error('plugin\'s repo field cannot be empty when plugin is managed')
		else
			MiniDeps.add({
				source = plugin.repo,
				monitor = plugin.branch,
				hooks = plugin.hooks
			})
			name = plugin.repo:match('[^/]*$')
			plugin_path = path_package .. 'pack/deps/opt/' .. name
		end
	end

	local module_name = plugin.module_name or filesystem.path(plugin_path .. '/lua/*')():match('[^/.]*$')
	local hooks = plugin.hooks
	if (hooks ~= nil and type(hooks.pre_load) == 'function') then
		hooks.pre_load()
	end
	local plugin_module = require(module_name)
	local call_setup = (plugin.call_setup == nil) or plugin.call_setup
	if (call_setup and plugin_module.setup ~= nil) then
		plugin_module.setup(plugin.config or {})
	end
	if (hooks ~= nil and type(hooks.post_load) == 'function') then
		hooks.post_load(plugin_module)
	end
	return module
end

function module.init_mini_deps()
	local path_package = vim.fn.stdpath('data') .. '/site/'
	local mini_path = path_package .. 'pack/deps/start/mini.nvim'

	if not vim.loop.fs_stat(mini_path) then
	  vim.cmd('echo "Installing `mini.nvim`" | redraw')
	  vim.fn.system({
		'git', 'clone', '--filter=blob:none',
		'https://github.com/echasnovski/mini.nvim', mini_path
	  })
	  vim.cmd('packadd mini.nvim | helptags ALL')
	  vim.cmd('echo "Installed `mini.nvim`" | redraw')
	end

	local MiniDeps = require('mini.deps')
	MiniDeps.setup({ path = { package = path_package } })
end

function module.load_from_default_dir()
	local _, current_dir = filesystem.self_path()
	for plugin_spec_file in filesystem.path(current_dir .. '/plugins/*.lua') do
		local _, plugin_spec = lib_module.run(plugin_spec_file)
		local success, result = pcall(module.plug, plugin_spec)
		if (not success) then
			error(result)
		end
	end
end

function module.setup_plugin_manager ()
	module.init_mini_deps()
	module.load_from_default_dir()
end

return module
