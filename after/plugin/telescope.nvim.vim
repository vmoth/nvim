lua << EOF
require('telescope').setup{
defaults = {
    file_ignore_patterns = {"bazel-*/*", "*.so", ".git/*", "build", "node_modules", "dist"},
    vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--hidden',
        '--follow',
        '--smart-case',
        }
    },
}
EOF
