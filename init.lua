local modules = {
	'config.settings',
	'plugins.lazy',
	'config.autocmds',
	'config.mappings',
	'config.commands',
	'theme.theme',
}

for i, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end

vim.cmd('highlight Folded ctermbg=NONE guibg=NONE')
vim.cmd('highlight FoldColumn ctermfg=NONE guifg=NONE')
