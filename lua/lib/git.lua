local module = {}

function module.clone(url, path, callback, opts)
	vim.system({ 'git', 'clone', unpack(opts or {}), url, path }, {}, callback)
end

function module.checkout(repo, callback, opts)
	vim.system({ 'git', '--work-tree=' .. repo, 'checkout', unpack(opts or {}) }, callback)
end

return module
