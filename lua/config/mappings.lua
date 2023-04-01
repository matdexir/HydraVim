local local_mappings = {
    n = {
        ['<C-Q>'] = {'<ESC><CMD>q!<CR>'},
        ['<C-s>'] = {"<CMD>w<CR><CMD>echo 'Save '<CR>"},
        ['<A-S-s>'] = {"<CMD>call mkdir('.session/hydravim/', 'p') | mksession! .session/hydravim/session.vim<CR><CMD>echo 'Saved Session '<CR>"},
        ['<A-S-l>'] = {"<CMD>source .session/hydravim/session.vim<CR><CMD>echo 'Loaded Session '<CR>"},
        ['<A-j>'] = {'<CMD>m .+1<CR>=='},
        ['<A-k>'] = {'<CMD>m .-2<CR>=='},
        ['<A-n>'] = {'<CMD>vsplit<CR>'},
        ['<A-b>'] = {'<CMD>split<CR>'},
        ['<C-h>'] = {'<C-w>h'},
        ['<C-l>'] = {'<C-w>l'},
        ['<C-k>'] = {'<C-w>k'},
        ['<C-j>'] = {'<C-w>j'},
        ['<C-z>'] = {'u'},
        ['<C-v>'] = {'p<ESC>'},
        ['<C-a>'] = {'ggVG'},
        ['<leader>e'] = {'<CMD>NvimTreeToggle <CR>'},
        ['<TAB>'] = {'<CMD>BufferLineCycleNext<CR>'},
        ['<S-TAB>'] = {'<CMD>BufferLineCyclePrev<CR>'},
        ['<C-w>'] = {'<CMD>HydraVimCloseBuffer<CR>'},
        ['<leader>p'] = {'<CMD>BufferLineTogglePin<CR>'},
        ['<A-h>'] = {'<CMD>ToggleTerm size=15 direction=horizontal<CR>'},
        ['<A-m>'] = {'<CMD>ToggleTerm size=45 direction=vertical<CR>'},
        ['<A-i>'] = {'<CMD>ToggleTerm direction=float<CR>'},
        ['<leader>i'] = {'<CMD>ToggleTerm direction=float<CR>'},
        ['K'] = {'<cmd>lua vim.lsp.buf.hover()<cr>'},
        ['gd'] = {'<cmd>lua vim.lsp.buf.definition()<cr>'},
        ['gD'] = {'<cmd>lua vim.lsp.buf.declaration()<cr>'},
        ['gi'] = {'<cmd>lua vim.lsp.buf.implementation()<cr>'},
        ['go'] = {'<cmd>lua vim.lsp.buf.type_definition()<cr>'},
        ['gr'] = {'<cmd>lua vim.lsp.buf.references()<cr>'},
        ['gs'] = {'<cmd>lua vim.lsp.buf.signature_help()<cr>'},
        ['<F2>'] = {'<cmd>lua vim.lsp.buf.rename()<cr>'},
        ['<F4>'] = {'<cmd>lua vim.lsp.buf.code_action()<cr>'},
        ['gl'] = {'<cmd>lua vim.diagnostic.open_float()<cr>'},
        ['[d'] = {'<cmd>lua vim.diagnostic.goto_prev()<cr>'},
        [']d'] = {'<cmd>lua vim.diagnostic.goto_next()<cr>'},
        ['<C-A-PageUp>'] =  {':BufferLineMoveNext<CR>'},
        ['<C-A-PageDown>'] =  {':BufferLineMovePrev<CR>'},
        ['<C-A-h>'] =  {':vertical resize +3<CR>'},
        ['<C-A-l>'] =  {':vertical resize -3<CR>'},
        ['<C-A-j>'] =  {':resize -3<CR>'},
        ['<C-A-k>'] =  {':resize +3<CR>'},
        ['<S-j>'] =  {'yyp'},
        ['<esc>'] =  {'<CMD>noh<return><esc>'},
        ["<leader>ff"] = { '<cmd> Telescope find_files <CR>'},
        ['<leader>fa'] = { '<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>'},
        ['<leader>fw'] = { '<cmd> Telescope live_grep <CR>'},
        ['<leader>fb'] = { '<cmd> Telescope buffers <CR>'},
        ['<leader>fh'] = { '<cmd> Telescope help_tags <CR>'},
        ['<leader>fo'] = { '<cmd> Telescope oldfiles <CR>'},
        ['<leader>gc'] = { '<cmd> Telescope git_commits <CR>'},
        ['<leader>gt'] = { '<cmd> Telescope git_status <CR>'},
        ['<leader>gb'] = { '<cmd>Telescope git_branches<cr>'},
    },

    v = {
        ['<C-Q>'] = {'<ESC><CMD>q!<CR>'},
        ['<C-z>'] = {'<ESC>u<ESC>gv=gv'},
        ['<C-c>'] = {'y<ESC>'},
        ['<C-v>'] = {'p<ESC>gv=gv'},
        ['<C-a>'] = {'ggVG'},
        ["<A-j>"] = {":m '>+1<CR>gv-gv"},
        ["<A-k>"] = {":m '<-2<CR>gv-gv"},
        ["<"] = {"<gv"},
        [">"] = {">gv"},
    },

    i = {
        ['<C-Q>'] = {'<ESC><CMD>q!<CR>'},
        ['<C-h>'] = {'<Left>'},
        ['<C-j>'] = {'<Down>'},
        ['<C-k>'] = {'<Up>'},
        ['<C-l>'] = {'<Right>'},
    },

    t = {
        ['<A-h>'] = {'<CMD>ToggleTerm<CR>'},
        ['<A-m>'] = {'<CMD>ToggleTerm<CR>'},
        ['<A-i>'] = {'<CMD>ToggleTerm<CR>'},
    },
    x = {
        ['<F4>'] = {'<cmd>lua vim.lsp.buf.range_code_action()<cr>'},
    }
}

for mode, mappings in pairs(local_mappings) do
    for key, action in pairs(mappings) do
        local default_options = { noremap = true, silent = true }
        local options = action[2] or default_options
        vim.api.nvim_set_keymap(mode, key, action[1], options)
    end
end
