require'nvim-treesitter.configs'.setup {
    highlight = {enable = true},
    autotag = {enable = true},
    context_commentstring = {enable = true},
    playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
        keybindings = {toggle_query_editor = 'o', update = 'R'}
    },
    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BufWrite", "CursorHold"}
    },
    textobjects = {
        lsp_interop = {enable = true},
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            }
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {["<Leader>gf"] = "@function.outer"},
            goto_previous_start = {["<Leader>gF"] = "@function.outer"}
        }
    }
}

vim.api.nvim_set_keymap('n', '<Leader>p',
                        [[ <cmd>TSPlaygroundToggle<CR><cmd>wl ]], {})

require('nvim-ts-autotag').setup()
