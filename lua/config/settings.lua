local options = {
    opt = {
        mouse = 'a',
        tabstop = 4,
        number = true,
        clipboard = "unnamedplus",
        shiftwidth = 4,
        cursorline = true,
        smartindent = true,
        termguicolors = true,
        showmode = false,
        fillchars = { eob = " ", fold = " ", vert = "│"},
        list = true,
        expandtab = true,
        autowrite = true,
        scrolloff = 4
    },
    o = {
        syntax = 'on',
        updatetime = 250,
        undofile = true,
        smartcase = true,
        ignorecase = true,
        splitright = true,
        splitbelow = true,
        -- fold
        foldenable = true,
        foldlevel = 99,
        foldcolumn = '1',
        foldlevelstart = 99,
        fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]],
        foldtext = [[' '.(v:foldend-v:foldstart+0).' lines...']],
    },
    wo = {
        wrap = false,
        -- fold
        foldnestmax = 1,
        foldminlines = 1,
        foldmethod = "indent",
        foldexpr = "nvim_treesitter#foldexpr()",
    },
    g = {
        mapleader = ' ',
        maplocalleader = ' ',
        loaded_netrw = 1,
        loaded_netrwPlugin = 1,
    }
}

for type, table in pairs(options) do
  for option, value in pairs(table) do
    vim[type][option] = value
  end
end

-- fold
local cmd = vim.cmd
cmd('highlight Folded ctermbg=NONE guibg=NONE')
cmd('highlight FoldColumn ctermfg=NONE guifg=NONE')
