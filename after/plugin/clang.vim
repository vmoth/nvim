lua << EOF
require'lspconfig'.clangd.setup{}
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
    }
EOF
