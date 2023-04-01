local indent_blankline = require("indent_blankline")

indent_blankline.setup {
    filetype_exclude = {
        "terminal",
        "lazy",
        "lspinfo",
        "TelescopePrompt",
        "help",
        "TelescopeResults",
        "mason",
        "NVimTree",
        "alpha",
        "",
    },
    buftype_exclude = { "terminal" },
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = false,
    show_trailing_blankline_indent = false,
}
