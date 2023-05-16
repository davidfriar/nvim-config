local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


keymap("", "<leader>v", ":source $MYVIMRC<CR>", opts)
keymap("n", "<leader>n", ":set relativenumber!<CR>", opts)
keymap("n", "<leader>N", ":set number!<CR>", opts)
keymap("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
