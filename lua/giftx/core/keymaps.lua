local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Sets the leader key to Space
-- This key is used as a prefix for many custom commands
vim.g.mapleader = " "

-- WINDOW NAVIGATION
-- Press Ctrl + h to move to the left window
-- Press Ctrl + j to move to the window below
-- Press Ctrl + k to move to the window above
-- Press Ctrl + l to move to the right window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- SPLIT MANAGEMENT
-- Press Space + sv to split window vertically
-- Press Space + sh to split window horizontally
-- Press Space + se to make split windows equal size
-- Press Space + sc to close current split
-- Press Space + so to keep only current split (close others)
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)
keymap("n", "<leader>se", "<C-w>=", opts)
keymap("n", "<leader>sc", ":close<CR>", opts)
keymap("n", "<leader>so", ":only<CR>", opts)

-- TAB MANAGEMENT
-- Press Space + tn to create new tab
-- Press Space + tc to close current tab
-- Press Space + to to close all other tabs
-- Press gt to go to next tab
-- Press gT to go to previous tab
-- Press Space + 1-9 to go to specific tab number
keymap("n", "<leader>tn", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)
keymap("n", "gt", ":tabnext<CR>", opts)
keymap("n", "gT", ":tabprevious<CR>", opts)
keymap("n", "<leader>1", "1gt", opts)
keymap("n", "<leader>2", "2gt", opts)
keymap("n", "<leader>3", "3gt", opts)
keymap("n", "<leader>4", "4gt", opts)
keymap("n", "<leader>5", "5gt", opts)
keymap("n", "<leader>6", "6gt", opts)
keymap("n", "<leader>7", "7gt", opts)
keymap("n", "<leader>8", "8gt", opts)
keymap("n", "<leader>9", "9gt", opts)

-- FILE OPERATIONS
-- Press Space + w to save the current file
-- Press Space + q to quit the current window
-- Press Space + x to save and quit
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>x", ":x<CR>", opts)

-- BUFFER NAVIGATION
-- Press Shift + l to go to next buffer
-- Press Shift + h to go to previous buffer
-- Press Space + c to close current buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":bdelete<CR>", opts)

-- INDENTING
-- In visual mode:
-- Press < to indent left and stay in visual mode
-- Press > to indent right and stay in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- MOVING TEXT
-- In visual mode:
-- Press Alt + j to move selected text down
-- Press Alt + k to move selected text up
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- TERMINAL NAVIGATION
-- While in terminal mode:
-- Press Ctrl + h to move to left window
-- Press Ctrl + j to move to window below
-- Press Ctrl + k to move to window above
-- Press Ctrl + l to move to right window
-- Press Esc to exit terminal mode
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- FILE EXPLORER
-- Press Space + e to toggle the file explorer (netrw)
keymap("n", "<leader>e", ":Lexplore<CR>", opts)

-- SEARCH IMPROVEMENTS
-- Press Space + h to clear search highlights
-- Press n to go to next search result and center screen
-- Press N to go to previous search result and center screen
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- QUICKFIX LIST NAVIGATION
-- Press Space + j to go to next item in quickfix list
-- Press Space + k to go to previous item in quickfix list
keymap("n", "<leader>j", ":cnext<CR>", opts)
keymap("n", "<leader>k", ":cprev<CR>", opts)

-- RESIZE WINDOWS
-- Press Ctrl + Up Arrow to increase window height
-- Press Ctrl + Down Arrow to decrease window height
-- Press Ctrl + Left Arrow to decrease window width
-- Press Ctrl + Right Arrow to increase window width
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- SYSTEM CLIPBOARD INTEGRATION
-- Press Space + y in normal mode to copy to system clipboard
-- Press Space + y in visual mode to copy selection to system clipboard
-- Press Space + p to paste from system clipboard
keymap("n", "<leader>y", "\"+y", opts)
keymap("v", "<leader>y", "\"+y", opts)
keymap("n", "<leader>p", "\"+p", opts)
