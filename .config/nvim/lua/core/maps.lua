vim.g.mapleader = " "

local keymap = vim.keymap

-- Windows & Splits
keymap.set("n", "<leader>wn", ":new<CR>")            -- Create a new window
keymap.set("n", "<leader>wc", ":close<CR>")          -- Close current window
keymap.set("n", "<leader>wv", "<C-w>v")              -- Split window vertically
keymap.set("n", "<leader>ws", "<C-w>s")              -- Split window horizontally
keymap.set("n", "<leader>wl", "<C-w>l")              -- Switch to right window
keymap.set("n", "<leader>wh", "<C-w>h")              -- Switch to left window
keymap.set("n", "<leader>wj", "<C-w>j")              -- Switch to bottom window
keymap.set("n", "<leader>wk", "<C-w>k")              -- Switch to top window

-- File-Tree Explorer (Nvim-Tree)
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>") -- Toggle NvimTree

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
keymap.set("n", '<leader>fg', "<cmd>Telescope live_grep<cr>")
keymap.set("n", '<leader>fb', "<cmd>Telescope file_browser<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Toggleterm
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm<CR>") -- Toggles terminal within Neovim
