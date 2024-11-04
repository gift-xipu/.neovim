-- Plugin Configuration
return {
    -- Core Dependencies
    "nvim-lua/plenary.nvim",
    "christoomey/vim-tmux-navigator",

    -- Interface Enhancements
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },

    -- Syntax and Language
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "vim", "vimdoc", "python", "javascript", "typescript" },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },

    -- File Navigation and Search
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "Telescope",
    },
    -- Extensions for Telescope
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").load_extension("ui-select")
        end,
    },

    -- File Explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },

    -- LSP Support
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
        },
    },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },

    -- Git Integration
    {
        "lewis6991/gitsigns.nvim",
        event = "BufRead",
    },
    "tpope/vim-fugitive",

    -- Aesthetics
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,  -- Ensures the plugin is loaded immediately
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

            -- Apply the colorscheme
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

    -- Terminal Integration
    {
        "akinsho/toggleterm.nvim",
        version = "*",
    },

    -- Editor Enhancement
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },

    -- Code Navigation
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- Additional Helpful Plugins
    {
        "nvim-telescope/telescope-file-browser.nvim",
        config = function()
            require("telescope").load_extension("file_browser")
        end,
    },
    {
        "ThePrimeagen/harpoon",
        config = function()
            require("harpoon").setup()
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup {}
        end,
    },
}

