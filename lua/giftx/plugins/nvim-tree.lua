return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- Disable default Netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- nvim-tree configuration
    nvimtree.setup({
      -- Customize folder and file icons
      renderer = {
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              deleted = "",
              ignored = "◌"
            },
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
            }
          }
        }
      },

      -- Show files ignored by Git
      filters = {
        dotfiles = false,
        custom = { ".git" }
      }
    })

    -- Define keybindings after nvim-tree setup
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
    vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse nvim-tree" })
    vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh nvim-tree" })
    vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { desc = "Focus nvim-tree" })
  end
}
