return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                term_colors = true,
                custom_highlights = {
                    NormalFloat = { bg = "NONE" },
                    FloatBorder = { bg = "NONE" },
                    Float = { bg = "NONE" },
                    PmenuSel = { bg = "#45475a", fg = "#cdd6f4" },
                    TelescopeBorder = { bg = "NONE" },
                },
                color_overrides = {
                    mocha = {
                        bg = "NONE",
                        bg_dark = "NONE",
                        bg_highlight = "#1e1e2e",
                        bg_search = "#45475a",
                        bg_visual = "#313244",
                        fg = "#cdd6f4",
                        fg_dark = "#a1a8c9",
                        fg_gutter = "#565970",
                        border = "#27273a",
                        surface0 = "#313244",
                        surface1 = "#45475a",
                        surface2 = "#585b70",
                        blue = "#89b4fa",
                        lavender = "#b4befe",
                        sapphire = "#74c7ec",
                        sky = "#89dceb",
                        teal = "#94e2d5",
                        green = "#a6e3a1",
                        yellow = "#f9e2af",
                        peach = "#fab387",
                        maroon = "#eba0ac",
                        red = "#f38ba8",
                        mauve = "#cba6f7",
                        pink = "#f5c2e7",
                        flamingo = "#f2cdcd",
                        rosewater = "#f5e0dc",
                    },
                },
                integrations = {
                    treesitter = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                    },
                    lsp_trouble = true,
                    cmp = true,
                    telescope = true,
                    gitsigns = true,
                    nvimtree = true,
                    which_key = true,
                    indent_blankline = { enabled = true, colored_indent_levels = true },
                    dashboard = true,
                    bufferline = true,
                    markdown = true,
                },
            })
            vim.cmd.colorscheme "catppuccin"
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}

