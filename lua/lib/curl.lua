local module = {}

function module.run(url, opts)
	return vim.system({ 'curl', unpack(opts or {'-L'}), url }, { text = true })
end

function module.fetch(url)
	return module.run(url):wait().stdout
end

return module
