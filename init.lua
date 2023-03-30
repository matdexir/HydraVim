local modules = {
	'config.settings',
	'plugins.lazy',
	'config.autocmd',
	'config.mappings',
	'config.command',
	'theme.theme',
}

for i, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end
