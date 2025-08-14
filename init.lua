local lib = require('lib')
local pm = require('plugin-manager')
vim.g.mapleader = ' '

local success, result = pcall(pm.setup_plugin_manager)
if (not success) then
	print(result)
end

local _, current_dir = lib.filesystem.self_path()

local _, opts = lib.module.run(current_dir .. '/config/opts.lua')
for k, v in pairs(opts) do
	vim.o[k] = v
end

local _, cmds = lib.module.run(current_dir .. '/config/autostart.lua')
for _, v in ipairs(cmds) do
	vim.cmd(v)
end

local _, keymaps = lib.module.run(current_dir .. '/config/keymaps.lua')
for _, v in ipairs(keymaps) do
	vim.keymap.set(v.modes, v.keys, v.action)
end

local _, commands = lib.module.run(current_dir .. '/config/commands.lua')
for name, v in pairs(commands) do
	vim.api.nvim_create_user_command(name, v.cmd, v.opts)
end
