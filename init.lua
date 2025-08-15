local module = require('lib.module')
local filesystem = require('lib.filesystem')

local pm = require('plugin-manager')
vim.g.mapleader = ' '

local success, result = pcall(pm.setup_plugin_manager)
if (not success) then
	print(result)
end

local _, current_dir = filesystem.self_path()

local _, opts = module.run(current_dir .. '/config/opts.lua')
for name, value in pairs(opts) do
	vim.o[name] = value
end

local _, cmds = module.run(current_dir .. '/config/autostart.lua')
for cmd in vim.iter(cmds) do
	vim.cmd(cmd)
end

local _, keymaps = module.run(current_dir .. '/config/keymaps.lua')
for keymap in vim.iter(keymaps) do
	vim.keymap.set(keymap.modes, keymap.keys, keymap.action)
end

end

local _, user_commands = module.run(current_dir .. '/config/commands.lua')
for name, definition in pairs(user_commands) do
	vim.api.nvim_create_user_command(name, definition.cmd, definition.opts)
end
