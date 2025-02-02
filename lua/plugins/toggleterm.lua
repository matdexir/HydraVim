local toggleterm = require("toggleterm")

toggleterm.setup({
    direction = "float",
    float_opts = {
        width = function()
            return math.ceil(vim.o.columns * 0.7)
        end,
        height = function()
            return math.ceil(vim.o.lines * 0.7)
        end,
    }
})
